import 'dart:convert';

import 'package:either_dart/either.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:rest_client/rest_client.dart' as rc;
import 'package:service_app/core/api/model/user.dart';

class ApiRepo {
  final domainName = 'https://service.shadow-ic.com';
  ApiRepo() : _client = rc.Client();

  Future<void> readRefreshTokenFromStorage() async {
    const storage = FlutterSecureStorage(
        aOptions: AndroidOptions(
      encryptedSharedPreferences: true,
    ));
    _refreshToken = await storage.read(key: "refreshToken");
  }

  Future<void> writeRefreshTokenFromStorage() async {
    const storage = FlutterSecureStorage(
        aOptions: AndroidOptions(
      encryptedSharedPreferences: true,
    ));
    await storage.write(key: "refreshToken", value: _refreshToken);
  }

  Future<void> removeRefreshTokenFromStorage() async {
    const storage = FlutterSecureStorage(
        aOptions: AndroidOptions(
      encryptedSharedPreferences: true,
    ));
    await storage.delete(key: "refreshToken");
  }

  String? _accessToken;
  String? _refreshToken;
  final rc.Client _client;

  Future<void> logOut() async {
    await removeRefreshTokenFromStorage();
    _accessToken = null;
    _refreshToken = null;
  }

  Future<Either<String, bool>> silentAuth() async {
    if (_refreshToken == null) {
      await readRefreshTokenFromStorage();
    }
    if (_refreshToken == null) {
      return const Left("User is not authorized");
    }
    var request = rc.Request(
        url: '$domainName/api/auth/token/refresh/',
        body: '{"refresh":"$_refreshToken"}',
        method: rc.RequestMethod.post);
    try {
      var response = await _client.execute(
        request: request,
      );

      var body = response.body as Map<String, dynamic>;
      _accessToken = body['access'];
      return const Right(true);
    } on rc.RestException catch (ex) {
      if (ex.response.body is Map<String, dynamic>) {
        return Left(ex.response.body['details'] ?? ex.message);
      } else {
        return Left(ex.message);
      }
    } catch (_) {
      return const Left("Something went wrong");
    }
  }

  Future<Either<String, bool>> authWithEmailAndPass(
      String email, String pass) async {
    _refreshToken = null;
    _accessToken = null;
    var request = rc.Request(
        url: '$domainName/api/auth/token/',
        body: '{"email":"$email", "password":"$pass"}',
        method: rc.RequestMethod.post);
    try {
      var response = await _client.execute(
        request: request,
      );

      var body = response.body as Map<String, dynamic>;
      _accessToken = body['access'];
      _refreshToken = body['refresh'];
      await writeRefreshTokenFromStorage();
      return const Right(true);
    } on rc.RestException catch (ex) {
      if (ex.response.body is Map<String, dynamic>) {
        return Left(ex.response.body['details'] ?? ex.message);
      } else {
        return Left(ex.message);
      }
    } catch (_) {
      return const Left("Something went wrong");
    }
  }

  Future<Either<String, User>> getUser() async {
    if (_accessToken == null) {
      return const Left("User is not authorized");
    }
    var request =
        rc.Request(url: '$domainName/api/user/', method: rc.RequestMethod.get);
    try {
      var response = await _client.execute(
        authorizer: rc.TokenAuthorizer(token: _accessToken!),
        request: request,
      );
      var body = response.body as Map<String, dynamic>;
      final user = User.fromJson(body);
      return Right(user);
    } on rc.RestException catch (ex) {
      if (ex.response.body is Map<String, dynamic>) {
        return Left(ex.response.body['details'] ?? ex.message);
      } else {
        return Left(ex.message);
      }
    } catch (_) {
      return const Left("Something went wrong");
    }
  }

  Future<void> getDevices() async {}
  Future<void> getBrands() async {}
  Future<void> getModels() async {}
  Future<void> getConnetctionInfo() async {}
  Future<Either<String, User>> postUser(User user) async {
    var request = rc.Request(
      url: '$domainName/api/users/',
      body: json.encode(user.toJson()),
      method: rc.RequestMethod.post,
    );
    try {
      var response = await _client.execute(
        request: request,
      );
      var body = response.body as Map<String, dynamic>;
      final user = User.fromJson(body);
      return Right(user);
    } on rc.RestException catch (ex) {
      if (ex.response.body is Map<String, dynamic>) {
        return Left(ex.response.body['details'] ?? ex.message);
      } else {
        return Left(ex.message);
      }
    } catch (_) {
      return const Left("Something went wrong");
    }
  }

  Future<Either<String, User>> patchUser(User user) async {
    await silentAuth();
    if (_accessToken == null) {
      return const Left("User is not authorized");
    }

    final userJson = user.toJson();
    userJson.remove("password");
    var request = rc.Request(
        url: '$domainName/api/user/',
        body: json.encode(userJson),
        method: rc.RequestMethod.patch);
    try {
      var response = await _client.execute(
        authorizer: rc.TokenAuthorizer(token: _accessToken!),
        request: request,
      );
      var body = response.body as Map<String, dynamic>;
      final user = User.fromJson(body);
      return Right(user);
    } on rc.RestException catch (ex) {
      if (ex.response.body is Map<String, dynamic>) {
        return Left(ex.response.body['details'] ?? ex.message);
      } else {
        return Left(ex.message);
      }
    } catch (_) {
      return const Left("Something went wrong");
    }
  }
}

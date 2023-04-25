import 'package:either_dart/either.dart';

export 'package:either_dart/either.dart';

List<T> leftElementsOf<T>(List<Either<T, dynamic>> list) =>
    list.where((e) => e.isLeft).map((e) => e.left).toList();

List<T> rightElementsOf<T>(List<Either<dynamic, T>> list) =>
    list.where((e) => e.isRight).map((e) => e.right).toList();

Iterable<K> toRight<T, K>(Iterable<Either<T, K>> iterable) =>
    iterable.where((e) => e.isRight).map((e) => e.right);

Iterable<T> toLeft<T, K>(Iterable<Either<T, K>> iterable) =>
    iterable.where((e) => e.isLeft).map((e) => e.left);

extension ExpandLeft<LeftIn, R, LeftOut> on Either<LeftIn, Either<LeftOut, R>> {
  Either<LeftOut, R> expandLeft(
    LeftOut Function(LeftIn) fnL,
  ) {
    if (isLeft) return Left(fnL(left));
    final inner = right;
    if (inner.isLeft) return Left(inner.left);
    return Right(inner.right);
  }
}

extension ExpandLeftFuture<LeftIn, R, LeftOut>
    on Future<Either<LeftIn, Either<LeftOut, R>>> {
  Future<Either<LeftOut, R>> expandLeft(
    LeftOut Function(LeftIn) fnL,
  ) async {
    final outer = await this;
    if (outer.isLeft) return Left(fnL(outer.left));
    final inner = outer.right;
    if (inner.isLeft) return Left(inner.left);
    return Right(inner.right);
  }
}

extension ExpandRight<RightIn, L, RightOut>
    on Either<Either<L, RightOut>, RightIn> {
  Either<L, RightOut> expandRight(
    RightOut Function(RightIn) fnR,
  ) {
    if (isRight) return Right(fnR(right));
    final inner = left;
    if (inner.isRight) return Right(inner.right);
    return Left(inner.left);
  }
}

extension ExpandRightFuture<RightIn, L, RightOut>
    on Future<Either<Either<L, RightOut>, RightIn>> {
  Future<Either<L, RightOut>> expandRight(
    RightOut Function(RightIn) fnR,
  ) async {
    final outer = await this;
    if (outer.isRight) return Right(fnR(outer.right));
    final inner = outer.left;
    if (inner.isRight) return Right(inner.right);
    return Left(inner.left);
  }
}

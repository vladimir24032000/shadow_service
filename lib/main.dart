import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:service_app/bloc/api/api_cubit.dart';
import 'package:service_app/bloc/bluetooth/connection/connection_bloc.dart';
import 'package:service_app/bloc/navigation_bar/navigation_bar_bloc.dart';
import 'package:service_app/core/globals.dart';
import 'package:service_app/core/services/get_it.dart';
import 'package:service_app/presentation/lock_screen/splash_screen.dart';
import 'package:service_app/presentation/theme/theme.dart';
import 'package:flutter_logs/flutter_logs.dart';

enum _SupportState {
  unknown,
  supported,
  unsupported,
}

const _appName = "Shadow-ic";

// final _appId = defaultTargetPlatform == TargetPlatform.iOS
//     ? "1:770102945430:ios:b4ff5caf4f4b66a83404b7"
//     : "1:770102945430:android:61d72dc447e5938e3404b7";

// final _options = FirebaseOptions(
//   apiKey: "AIzaSyAFf1N8gIKWpVjcq8zPkDQslkSlZ6drMsw",
//   appId: _appId,
//   messagingSenderId: "770102945430",
//   projectId: "shadow-ic",
// );

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterLogs.initLogs(
      attachTimeStamp: false,
      directoryStructure: DirectoryStructure.FOR_DATE,
      logFileExtension: LogFileExtension.LOG,
      timeStampFormat: TimeStampFormat.TIME_FORMAT_24_FULL);
  //app.name;
  configureDependencies();
  final storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
    ],
  );

  HydratedBloc.storage = storage;
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return MultiBlocProvider(
        providers: [
          BlocProvider<ApiCubit>(
            create: (_) => ApiCubit(),
          ),
          BlocProvider<BTConnectionBloc>(create: (_) => BTConnectionBloc()),
          BlocProvider(create: (_) => getIt<NavigationBarBloc>()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Shadow service',
          scaffoldMessengerKey: Globals.scaffoldMessengerKey,
          theme: mobileThemeData(),
          home: const SplashScreen(),
        ),
      );

      //  MaterialApp(
      //   debugShowCheckedModeBanner: false,
      //   theme: mobileThemeData(),
      //   home: const LockScreenPage(),
      // ));
    });
  }
}

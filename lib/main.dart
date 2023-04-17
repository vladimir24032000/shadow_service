import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:service_app/bloc/bluetooth/connection/connection_bloc.dart';
import 'package:service_app/bloc/navigation_bar/navigation_bar_bloc.dart';
import 'package:service_app/core/services/get_it.dart';
import 'package:service_app/presentation/home_tabs/home_tabs.dart';
import 'package:service_app/presentation/theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
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

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return MultiBlocProvider(
          providers: [
            BlocProvider<BTConnectionBloc>(create: (_) => BTConnectionBloc()),
            BlocProvider(create: (_) => getIt<NavigationBarBloc>()),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: mobileThemeData(),
            home: const HomeTabs(),
          ),
        );
      },
    );
  }
}

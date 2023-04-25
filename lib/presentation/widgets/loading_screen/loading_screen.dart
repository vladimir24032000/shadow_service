import 'package:flutter/material.dart';
import 'package:service_app/presentation/widgets/logo_widget/logo_widget.dart';

class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: const [
          LogoWidget(),
          CircularProgressIndicator.adaptive(),
        ],
      ),
    );
  }
}

import 'package:bloc_base/app/config/di/di.dart';
import 'package:flutter/material.dart';

import 'app/routing/app_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
 await setupGetIt();
  runApp( BaseProject());
}

class BaseProject extends StatelessWidget {
  final appRouter = inject<AppRouter>();
   BaseProject({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter.config(),
    );
  }
}


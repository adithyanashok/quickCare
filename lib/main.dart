import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_care/common/screens/splash_screen.dart';
import 'package:quick_care/core/di/injection.dart';
import 'package:quick_care/features/auth/presentation/bloc/auth_bloc_bloc.dart';
import 'package:quick_care/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthBlocBloc>(),
        ),
      ],
      child: MaterialApp(
        title: 'QuickCare',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            useMaterial3: true, scaffoldBackgroundColor: Colors.white),
        home: SplashScreen(),
      ),
    );
  }
}

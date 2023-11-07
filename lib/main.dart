import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_with_provider/cubits/user_cubit.dart';
import 'package:login_with_provider/providers/user_provider.dart';
import 'package:login_with_provider/screens/login_screen.dart';
import 'package:login_with_provider/screens/login_screen_cubit.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    //MultiProvider
    return MultiBlocProvider(
      providers: [
        // for Provider
        //ChangeNotifierProvider(create: (context) => UserProvider()),

        BlocProvider(create: (context) => UserCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginScreenCubit(),
      ),
    );
  }
}
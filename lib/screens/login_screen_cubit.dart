import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_with_provider/cubits/user_cubit.dart';
import 'package:login_with_provider/providers/user_provider.dart';
import 'package:login_with_provider/screens/home_screen.dart';
import 'package:login_with_provider/widgets/my_button.dart';
import 'package:provider/provider.dart';

class LoginScreenCubit extends StatefulWidget {
  const LoginScreenCubit({super.key});

  @override
  State<LoginScreenCubit> createState() => _LoginScreenCubitState();
}

class _LoginScreenCubitState extends State<LoginScreenCubit> {
  String? email;
  String? pass;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                //mainAxisAlignment: MainAxisAlignment.s,
                children: [
                  TextFormField(
                    onSaved: (value){
                      email = value;
                    },
                    validator: (value) {
                      if(value!.isEmpty){
                        return 'Enter your email';
                      }
                      else if(!value.contains('@')){
                        return 'Invalid email';
                      }
                      else{
                        return null;
                      }
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Email',
                    ),
                  ),
                  SizedBox(height: 15,),
                  TextFormField(
                    onSaved: (value){
                      pass = value;
                    },
                    validator: (value) {
                      if(value!.isEmpty){
                        return 'Enter your password';
                      }
                      else{
                        return null;
                      }
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                    ),
                  ),
                  SizedBox(height: 15,),
                  MyButton(
                    title: "Login",
                    onClick: (){
                      bool valid = formKey.currentState!.validate();
                      if(valid){
                        formKey.currentState!.save();
                        //Provider.of<UserProvider>(context, listen: false).setAuth(email!, pass!);
                        BlocProvider.of<UserCubit>(context, listen: false).setAuth(email!, pass!);
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
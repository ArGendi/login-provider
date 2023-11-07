import 'package:bloc/bloc.dart';
import 'package:login_with_provider/cubits/user_states.dart';

class UserCubit extends Cubit<UserState>{
  String? email;
  String? password;

  UserCubit() : super(InitUserState());

   void setAuth(String newEmail, String newPass){
    email = newEmail;
    password = newPass;
    emit(EmailAndPassChangedState());
  }

  void setEmail(String newEmail){
    email = newEmail;
    emit(EmailChangedState());
  }

  void setPass(String newPass){
    email = newPass;
    emit(PassChangedState());
  }
}
import 'package:bank_todo/data/models/user_model.dart';

class StartLoadingAction {
  StartLoadingAction(this.email, this.password);
  final String email;
  final String password;
}

class LoginSuccessAction {
  final UserModel user;

  LoginSuccessAction(this.user);
}

class LoginFailedAction {
  LoginFailedAction();
}

class LogoutUserAction {
  LogoutUserAction();
}

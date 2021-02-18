import 'package:bank_todo/data/models/user_model.dart';
import 'package:bank_todo/data/networking/api.dart';
import 'package:bank_todo/redux/app_state.dart';
import 'package:bank_todo/redux/user/user_actions.dart';
import 'package:redux/redux.dart';

class LoginMiddleware extends MiddlewareClass<AppState> {
  LoginMiddleware(this.api);

  final API api;

  @override
  Future<void> call(
      Store<AppState> store, dynamic action, NextDispatcher next) {
    next(action);
    if (action is StartLoadingAction) {
      return _loginUser(next, action, store); //_loginUser(next, action, store);
    }
  }

  Future _loginUser(
      NextDispatcher next, dynamic action, Store<AppState> store) async {
    return Future(() async {
      api.login(action.email, action.password).then((firebaseResponse) {
        if (firebaseResponse['user'] != null) {
          UserModel userModel = UserModel(
              id: firebaseResponse['user'] .uid,
              email: firebaseResponse['user'] .email,
              token: firebaseResponse['token'].token );

          store.dispatch(new LoginSuccessAction(userModel));
        } else {
          store.dispatch(new LoginFailedAction());
        }
        //Keys.navKey.currentState.pushNamed('/'); Change screen
      }, onError: (error) {
        store.dispatch(new LoginFailedAction());
      });
    });
  }
}

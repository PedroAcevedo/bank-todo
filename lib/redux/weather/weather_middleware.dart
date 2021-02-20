import 'package:bank_todo/data/models/weather_model.dart';
import 'package:bank_todo/data/networking/api.dart';
import 'package:bank_todo/redux/app_state.dart';
import 'package:bank_todo/redux/weather/weather_actions.dart';
import 'package:redux/redux.dart';

class WeatherMiddleware extends MiddlewareClass<AppState> {
  WeatherMiddleware(this.api);

  final API api;

  @override
  Future<void> call(
      Store<AppState> store, dynamic action, NextDispatcher next) {
    next(action);
    if (action is StartLoadingWeatherAction) {
      return _getCurrentWeather(
          next, action, store); //_loginUser(next, action, store);
    }
  }

  Future _getCurrentWeather(
      NextDispatcher next, dynamic action, Store<AppState> store) async {
    return Future(() async {
      api.getCurrentWeather(action.apiKey, action.lat, action.lon).then(
          (httpResponse) {
        switch (httpResponse.statusCode) {
          case 200:
            WeatherModel weatherModel =
                WeatherModel.fromJson(httpResponse.data);
            store.dispatch(new WeatherSuccessAction(weatherModel));
            break;
          case 401:
            store.dispatch(new WeatherFailedAction());

            break;
          default:
            store.dispatch(new WeatherFailedAction());
        }
      }, onError: (error) {
        store.dispatch(new WeatherFailedAction());

        print(error);
      });
    });
  }
}

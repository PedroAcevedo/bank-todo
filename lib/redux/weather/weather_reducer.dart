import 'package:bank_todo/redux/weather/weather_actions.dart';
import 'package:bank_todo/redux/weather/weather_state.dart';
import 'package:redux/redux.dart';

final weatherReducer = combineReducers<WeatherState>([
  TypedReducer<WeatherState, WeatherSuccessAction>(_loginSuccess),
  TypedReducer<WeatherState, WeatherFailedAction>(_loginFailed),
  TypedReducer<WeatherState, StartLoadingWeatherAction>(_startLoading),
]);

WeatherState _loginSuccess(WeatherState state, WeatherSuccessAction action) {
  return state.copyWith(
      current: action.current, isLoading: false, weatherError: false);
}

WeatherState _loginFailed(WeatherState state, WeatherFailedAction action) {
  return state.copyWith(current: null, isLoading: false, weatherError: true);
}

WeatherState _startLoading(
    WeatherState state, StartLoadingWeatherAction action) {
  return state.copyWith(isLoading: true, weatherError: false);
}

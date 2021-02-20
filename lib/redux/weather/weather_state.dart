import 'package:bank_todo/data/models/weather_model.dart';
import 'package:meta/meta.dart';

@immutable
class WeatherState {
  final bool isLoading;
  final bool weatherError;
  final WeatherModel current;

  WeatherState({
    @required this.isLoading,
    @required this.weatherError,
    @required this.current,
  });

  factory WeatherState.initial() {
    return new WeatherState(
        isLoading: false, weatherError: false, current: null);
  }

  WeatherState copyWith(
      {bool isLoading, bool weatherError, WeatherModel current}) {
    return new WeatherState(
        isLoading: isLoading ?? this.isLoading,
        weatherError: weatherError ?? this.weatherError,
        current: current);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WeatherState &&
          runtimeType == other.runtimeType &&
          isLoading == other.isLoading &&
          weatherError == other.weatherError &&
          current == other.current;

  @override
  int get hashCode => isLoading.hashCode ^ current.hashCode;
}

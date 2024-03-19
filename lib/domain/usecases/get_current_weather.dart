import 'package:dartz/dartz.dart';
import 'package:WeatherApp/core/error/failure.dart';
import 'package:WeatherApp/domain/entities/weather.dart';
import 'package:WeatherApp/domain/repositories/weather_repository.dart';

class GetCurrentWeatherUseCase {
  final WeatherRepository weatherRepository;

  GetCurrentWeatherUseCase(this.weatherRepository);

  Future<Either<Failure, WeatherEntity>> execute(String cityName) {
    return weatherRepository.getCurrentWeather(cityName);
  }
}

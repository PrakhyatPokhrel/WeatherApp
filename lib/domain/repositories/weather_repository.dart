import 'package:dartz/dartz.dart';
import 'package:WeatherApp/core/error/failure.dart';
import 'package:WeatherApp/domain/entities/weather.dart';

abstract class WeatherRepository {
  Future<Either<Failure, WeatherEntity>> getCurrentWeather(String cityName);
}

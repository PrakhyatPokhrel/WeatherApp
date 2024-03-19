import 'package:mockito/annotations.dart';
import 'package:WeatherApp/data/data_sources/remote_data_source.dart';
import 'package:WeatherApp/domain/repositories/weather_repository.dart';
import 'package:http/http.dart' as http;
import 'package:WeatherApp/domain/usecases/get_current_weather.dart';

@GenerateMocks(
  [WeatherRepository, WeatherRemoteDataSource, GetCurrentWeatherUseCase],
  customMocks: [MockSpec<http.Client>(as: #MockHttpClient)],
)
void main() {}

import 'package:dio/dio.dart';

final class NetworkService {
  // Экземпляр класса Dio для взаимодействие с сетью
  final Dio _dio = Dio();

  // URL адрес для отправки запроса
  final String url = "https://jsonplaceholder.typicode.com/posts";

  // Метод получения данных по url
  void fetchData() async {
    final responce = await _dio.get(url);
    print(responce.data);
  }
}

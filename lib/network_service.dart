import 'package:dio/dio.dart';

import 'post.dart';

final class NetworkService {
  // Экземпляр класса Dio для взаимодействие с сетью
  final Dio _dio = Dio();

  // URL адрес для отправки запроса
  final String url = "https://jsonplaceholder.typicode.com/posts";

  // Метод получения данных по url
  Future<List<Post>> fetchData() async {
    try {
      final responce = await _dio.get(url);
      return (responce.data as List)
          .map((json) => Post.fromJson(json))
          .toList();
    } catch (error) {
      print("Error: $error"); // в случае ошибки выводим ее в консоль
      throw Exception("Failed to load data"); // выбрасываем исключение на экран
    }
  }
}


// final rawData = responce.data as List; // сохраняю в новую переменную, пытаясь привести к типу List
// var postList = rawData.map((json) => Post.fromJson(json)); // Проходимся по rawData через map и создаем объекты класса Post
// var posts = postList.toList(); // Получившийся результат приводим к List

import 'package:flutter/material.dart';
import 'network_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final NetworkService _networkService = NetworkService();

  @override
  void initState() {
    super.initState();
    print("initState");
    _networkService.fetchData();
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold();
  }
}

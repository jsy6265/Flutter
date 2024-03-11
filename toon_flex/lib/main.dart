import 'package:flutter/material.dart';
import 'package:toon_flex/screens/hom_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget{
  // App 위젯의 키를 슈퍼 클래스에 전달
  // 위젯은 ID같은 식별자 key가 존재한다
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

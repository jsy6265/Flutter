import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF181818), // 커스텀 색상 쓰는법 Color(0xFF + 색 코드)
        // home의 배경색을 지정하는 위젯 타입의 파라미터, Colors.원하는 색.그림자
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          //Row : 서로 옆에 놓고 싶을 때, Column : 서로 위 아래로 놓고 싶을 때
          child: Column(
            children: [
              SizedBox( // 빈공간 만들기?
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                //Row의 MainAxis는 수평방향, CrossAixs는 수직 방향이다.
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    // Column의 MainAxis는 수직방향, CrossAixs는 수평방향
                    children: [
                      Text(
                        "Hey, Selena",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        "Welcome back",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          //withOpacity로 투명도 조절
                          fontSize: 18,
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

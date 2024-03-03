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
          padding: EdgeInsets.symmetric(horizontal: 20),
          //Row : 서로 옆에 놓고 싶을 때, Column : 서로 위 아래로 놓고 싶을 때
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                // 빈공간 만들기?
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
                      const Text(
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
                  ),
                ],
              ),
              const SizedBox(
                height: 120,
              ),
              Text(
                "Total balance",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "\$5 194 482",
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    // child를 가지는 단순한 Box, div라고 생각하면 됨
                    decoration: BoxDecoration(
                      // 말그대로 Container를 꾸미는 요소, CSS?
                      color: const Color(0xFFF1B333),
                      borderRadius: BorderRadius.circular(45),
                    ),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                      child: Text(
                        "Transfer",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  Container(
                    // child를 가지는 단순한 Box, div라고 생각하면 됨
                    decoration: BoxDecoration(
                      // 말그대로 Container를 꾸미는 요소, CSS?
                      color: const Color(0xFF1F2123),
                      borderRadius: BorderRadius.circular(45),
                    ),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                      child: Text(
                        "Request",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
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

import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

//Stateful은 두가지 부분이 있다
// 1. Widget : 모두 상태를 가지고 있는 부분
// 2. State : 데이터를 가지고 있는 부분 + 위젯의 UI (데이터가 바뀌면 위젯의 UI도 새로운 데이터와 함께 새로고침)
class App extends StatefulWidget {
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  // List<int> number = [];
  //
  // void onClick() {
  //   // Statee 클래스에 데이터가 변경됨을 명시, 새로고침? 빌드 메서드 다시 수행
  //   setState(() {
  //     number.add(number.length);
  //   });
  // }

  bool showTitle = true;

  void toggleTitle() {
    setState(() {
      showTitle = !showTitle;
    });
  }

  // BuildContext : context는 모든 상위 요소들에 대한 정보, 위젯 트리 안의 위젯의 위치를 다룬다.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 앱의 기본 설정? 메인 컬러, 폰트 등
      theme: ThemeData(
        textTheme: const TextTheme(
          //TextStyle
          titleLarge: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
      home: Scaffold(
        backgroundColor: Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              showTitle ? MyLargeTitle() : Text('nothing'),
              IconButton(
                  onPressed: toggleTitle, icon: Icon(Icons.remove_red_eye))
              // for (var n in number)
              //   Text(
              //     '$n',
              //     style: TextStyle(fontSize: 30),
              //   ),
              //
              // //onPressed : 아이콘 클릭시 발생시킬 이벤트
              // IconButton(
              //   iconSize: 40,
              //   onPressed: onClick,
              //   icon: Icon(Icons.add_box_rounded),
              // )
            ],
          ),
        ),
      ),
    );
  }
}

class MyLargeTitle extends StatefulWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {
  // 상태를 초기화하는 메서드, 부모 요소에 의존하는 데이터를 초기화해야 하는 경우에 사용, 부모에서 API 호출해 데이터가 바뀔 경우?
  // 빌드 메서드보다 먼저 딱 한번만 호출됨
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  // 위젯이 스크림에서 제거될 때 호출되는 메서드
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      'My Large Title',
      style: TextStyle(
        fontSize: 30,
        // context(부모)의 Theme설정에서 titleLarge!.color를 가져옴 color값이 null일 수 도 있기 때문에 !.로 null이 아니라고 명시
        // ?는 null이 아닐 수도 있다, !는 무조건 null이 아니다
        color: Theme.of(context).textTheme.titleLarge?.color,
      ),
    );
  }
}

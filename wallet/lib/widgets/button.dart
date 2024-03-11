import 'package:flutter/cupertino.dart';

class Button extends StatelessWidget {
  //StatelessWidget은 빌드 메서드를 통해 UI를 출력하기만 한다
  // stateful Widget은 상태를 가진다, 즉 상태에 따라 변하게 될 데이터를 가진다. 데아터가 변하면 UI도 변경될 때 사용
  final String text;
  final Color bgColor;
  final Color textColor;

  const Button(
      {super.key,
      required this.text,
      required this.bgColor,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      // child를 가지는 단순한 Box, div라고 생각하면 됨
      decoration: BoxDecoration(
        // 말그대로 Container를 꾸미는 요소, CSS?
        color: bgColor,
        borderRadius: BorderRadius.circular(45),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        child: Text(
          text,
          style: TextStyle(color: textColor, fontSize: 20),
        ),
      ),
    );
  }
}

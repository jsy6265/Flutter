import 'package:flutter/cupertino.dart';

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // child를 가지는 단순한 Box, div라고 생각하면 됨
      decoration: BoxDecoration(
        // 말그대로 Container를 꾸미는 요소, CSS?
        color: const Color(0xFF1F2123),
        borderRadius: BorderRadius.circular(45),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        child: Text(
          "Request",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}

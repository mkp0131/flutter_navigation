import 'package:flutter/material.dart';
import 'package:flutter_navigation/layout/main_layout.dart';

class ThreeScreen extends StatelessWidget {
  const ThreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final number = ModalRoute.of(context)!.settings.arguments;
    return MainLayout(children: [
      Text(number.toString()),
      ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushReplacementNamed(
            '/one',
            arguments: 7777,
          );
        },
        child: Text('One 리플레이스 버튼'),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(20),
          backgroundColor: Colors.blueGrey,
        ),
      ),
      SizedBox(
        height: 10,
      ),
      ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushNamedAndRemoveUntil(
            '/',
            (route) => false, // 홈화면 바로 직전까지 라우트를 삭제
          );
        },
        child: Text('홈화면 리플레이스 버튼'),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(20),
          backgroundColor: Colors.deepPurple,
        ),
      ),
    ], title: 'Three');
  }
}

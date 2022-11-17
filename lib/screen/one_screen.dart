import 'package:flutter/material.dart';
import 'package:flutter_navigation/layout/main_layout.dart';
import 'package:flutter_navigation/screen/two_screen.dart';

class OneScreen extends StatelessWidget {
  final int? number;

  const OneScreen({Key? key, this.number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayout(children: [
      Text(number.toString()),
      ElevatedButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Text('One 버튼'),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(20),
          backgroundColor: Colors.pink,
        ),
      ),
      SizedBox(height: 10),
      ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => TowScreen(),
              settings: RouteSettings(arguments: 7899),
            ),
          );
        },
        child: Text('Two 버튼'),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(20),
          backgroundColor: Colors.blueAccent,
        ),
      ),
    ], title: 'One');
  }
}

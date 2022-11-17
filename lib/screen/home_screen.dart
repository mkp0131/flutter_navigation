import 'package:flutter/material.dart';
import 'package:flutter_navigation/layout/main_layout.dart';
import 'package:flutter_navigation/screen/one_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayout(children: [
      ElevatedButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return OneScreen(number: 456);
          }));
        },
        child: Text('Home 버튼'),
        style: ElevatedButton.styleFrom(padding: EdgeInsets.all(20)),
      ),
    ], title: 'Home');
  }
}

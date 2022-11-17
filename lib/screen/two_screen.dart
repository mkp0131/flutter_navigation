import 'package:flutter/material.dart';
import 'package:flutter_navigation/layout/main_layout.dart';

class TowScreen extends StatelessWidget {
  const TowScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments;
    return MainLayout(children: [
      Text(arguments.toString()),
      ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/three', arguments: 2939);
        },
        child: Text('Three 버튼'),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(20),
          backgroundColor: Colors.amberAccent,
        ),
      ),
    ], title: 'Tow');
  }
}

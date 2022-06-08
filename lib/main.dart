import 'package:flutter/material.dart';
import 'widgets/card_item.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Map<String, dynamic>> data = [
    {
      'title': "Nielit Imphal",
      "icons": const Icon(Icons.account_balance),
      'color': Colors.black26,
    },
    {
      'title': "Manipur University",
      "icons": const Icon(Icons.access_alarm_outlined),
      'color': Colors.blue,
    },
    {
      'title': "DM College",
      "icons": const Icon(Icons.festival_rounded),
      'color': Colors.cyan,
    },
    {
      'title': "Senapati",
      "icons": const Icon(Icons.abc_rounded),
      'color': Colors.green,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('DashBoard')),
        ),
        body: GridView.count(
          primary: false,
          crossAxisSpacing: 0,
          mainAxisSpacing: 0,
          crossAxisCount: 2,
          children: data.map((e) {
            return CardItem(
              name: e['title'],
              icon: e['icons'],
              color: e['color'],
            );
          }).toList(),
        ),
      ),
    );
  }
}

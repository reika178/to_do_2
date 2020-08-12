import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String m_inputedValue = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              '下記があなたが入力したテキストです。',
            ),
            Text(
              "You input : ${this.m_inputedValue}"),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "テキストボックス",
                  hintText: "まぁ何か入力してみてよ！",
                ),
                maxLength: 10,
                onChanged: (text) {
                  if (text.length > 0) {
                    setState(() {
                      this.m_inputedValue = text;
                    });
                  }
                  else {
                    setState(() {
                      this.m_inputedValue = "入力してください。";
                    });
                  }
                },
              ),
          ],
        ),
      ),
    );
  }
}

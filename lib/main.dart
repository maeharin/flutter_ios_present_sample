import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const _channel = MethodChannel("com.maeharin/sample");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("sample"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("present ios view controller"),
              onPressed: () async {
                final String res = await _channel.invokeMethod("foo");
              },
            ),
            InkWell(
              child: Container(
                color: Colors.red,
                height: 600,
              ),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) =>
                        AlertDialog(title: Text("flutter側！")));
              },
            ),
          ],
        ),
      ),
    );
  }
}

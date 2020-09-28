import 'package:flutter/material.dart';
import 'package:jake_testing_area/route_generator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jake Testing',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstPage(),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Routing app'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'First Page',
              style: TextStyle(fontSize: 50),
            ),
            RaisedButton(
              child: Text('Go to second page'),
              onPressed: (){
                Navigator.of(context).pushNamed('/second', arguments: 'Hello there from the first page');
              },
            )
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final String data;
  SecondPage({Key key, @required this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Routing app'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Second Page',
              style: TextStyle(fontSize: 50),
            ),
            Text(
              data,
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}



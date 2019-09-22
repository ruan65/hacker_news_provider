import 'package:flutter/material.dart';
import 'package:hacker_news_provider/state/theme_state.dart';
import 'package:provider/provider.dart';

void main() => runApp(Root());

class Root extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeState>(
        builder: (context) => ThemeState(), child: MyApp());
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeData = Provider.of<ThemeState>(context).getTheme();
    return MaterialApp(
      title: 'Hucker News Provider',
      theme: themeData,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<ThemeState>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("HN"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.palette),
            onPressed: () => themeState.changeTheme(),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[],
        ),
      ),
    );
  }
}

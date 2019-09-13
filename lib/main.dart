import 'package:flutter/material.dart';
import 'package:get_in_touch/pages/about_me.dart';
import 'package:get_in_touch/pages/caonnect..dart';
import 'package:get_in_touch/pages/skills.dart';
import 'package:get_in_touch/pages/works.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Color(0xFF1D1826),
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
  PageController controller = PageController();
  int currentPage = 0;
  int numberOfPages = 3;

  int _nextPage() {
    setState(() {
      if (currentPage == numberOfPages)
        currentPage = numberOfPages;
      else
        ++currentPage;
    });
    return currentPage;
  }

  int _previousPage() {
    setState(() {
      if (currentPage == 0)
        currentPage = 0;
      else
        --currentPage;
    });
    return currentPage;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: PageView(
            onPageChanged: (int p) => setState(() => currentPage = p),
            controller: controller,
            scrollDirection: Axis.vertical,
            children: <Widget>[
              AboutMe(),
              Skills(),
              Works(),
              Connect(),
            ],
          ),
        ),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              AnimatedOpacity(
                child: FloatingActionButton(
                  child: Icon(Icons.arrow_drop_up),
                  onPressed: () {
                    controller.animateToPage(
                      _previousPage(),
                      curve: Curves.linearToEaseOut,
                      duration: Duration(milliseconds: 500),
                    );
                  },
                ),
                duration: Duration(milliseconds: 300),
                opacity: (currentPage == 0) ? 0 : 1,
              ),
              AnimatedOpacity(
                child: FloatingActionButton(
                  child: Icon(Icons.arrow_drop_down),
                  onPressed: () {
                    controller.animateToPage(
                      _nextPage(),
                      curve: Curves.linearToEaseOut,
                      duration: Duration(milliseconds: 500),
                    );
                  },
                ),
                duration: Duration(milliseconds: 300),
                opacity: (currentPage == numberOfPages) ? 0 : 1,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

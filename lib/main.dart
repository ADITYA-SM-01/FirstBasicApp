import 'package:flutter/material.dart';

void main() {
  runApp(newapp());
}

class newapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homeApp(title: "HOME"),
    );
  }
}

class homeApp extends StatefulWidget {
  const homeApp({Key? key, required title}) : super(key: key);
  @override
  _Mystate createState() => new _Mystate();
}

class _Mystate extends State<homeApp> {
  int v = 0;
  String text = "Text before change";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HOME APP"),
        backgroundColor: Color.fromARGB(100, 28, 207, 195),
      ),
      body: Align(
        alignment: Alignment(0, 0),
        child: Container(
          alignment: Alignment(0, 0),
          margin: EdgeInsets.all(3),
          height: 250,
          width: 350,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            border: Border.all(
              color: Colors.black,
              width: 19,
              style: BorderStyle.solid,
            ),
            color: Color.fromARGB(234, 135, 180, 225),
          ),
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 44,
                fontFamily: "SF Pro Display",
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                decorationThickness: 2,
                foreground:
                    Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 2
                      ..color = Colors.blue[700]!,
                shadows: [
                  Shadow(
                    color: Color.fromRGBO(0, 0, 0, 0.3),
                    offset: Offset(0, 23.5),
                    blurRadius: 24,
                  ),
                ],
                decoration: TextDecoration.combine([
                  TextDecoration.underline,
                  TextDecoration.overline,
                ]),
                decorationStyle: TextDecorationStyle.dotted,
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: Align(
        alignment: Alignment.bottomRight,
        child: SizedBox(
          width: 100,
          height: 100,
          child: FloatingActionButton(
            onPressed: showDialogBox,
            child: Text("click me"),
          ),
        ),
      ),
    );
  }

  void changeMyText() {
    setState(() {
      if (v == 0) {
        v = 1;
        text = "Text after change";
      } else {
        v = 0;
        text = "Text before change";
      }
    });
  }

  Future<void> showDialogBox() async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext c) {
        return AlertDialog(
          title: Text("ALLEERRTTTT...."),
          titlePadding: EdgeInsets.all(24),
          content: Text(
            "this is a alert message",
            style: TextStyle(
              fontSize: 20,
              backgroundColor: Colors.blue,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontFamily: "sans-serif",
            ),
          ),
          actions: [
            FloatingActionButton(
              child: Text("ok"),
              onPressed: () {
                Navigator.of(c).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

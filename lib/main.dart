import 'package:flutter/material.dart';

void main(){
  runApp(newapp());
}

class newapp extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  homeApp(title:"HOME"),
    );
  }
}

class homeApp extends StatefulWidget{
  const homeApp({Key? key,required title}):super(key:key);
  @override
  _Mystate createState() => new _Mystate();
  
}

class _Mystate extends State<homeApp>{
  int v = 0;
  String text = "Text before change";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HOME APP"),
        backgroundColor: Color.fromARGB(100, 28, 207, 195),
      ),
      body: Center(
        child: SizedBox(
          height: 100,
          width: 200,
          child: Container(
            decoration: BoxDecoration(color: Color.fromARGB(234, 135, 180, 225)),
            child: Padding(
              padding: EdgeInsets.all(23),
              child: Center(child: Text(text)),
            ),
          ),
        ),
      ),
      floatingActionButton: Row(
        children: <Widget>[SizedBox(
          width: 100,
          height: 100,
          child: FloatingActionButton(
            onPressed: changeMyText,
            child: Text("click me"),
            ),
        )
          ],
          mainAxisAlignment: MainAxisAlignment.center,

      ),
      
    );
  }
  void changeMyText(){
    setState(() {
      if(v == 0){
        v = 1;
      text = "Text after change";
      }else{
        v = 0;
        text = "Text before change";
      }
    });
  }
}

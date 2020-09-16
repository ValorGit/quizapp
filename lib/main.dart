import 'package:flutter/material.dart';
import 'quizpage.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
//import 'quiz_funktion.dart';

//QuizFunktion quiz = new QuizFunktion();

//void main() => runApp(QuizApp());
void main() {
  runApp(new MaterialApp(
    home: new LearnQuiz(),
  ));
}

class LearnQuiz extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LearnQuizState();
  }
}

class LearnQuizState extends State<LearnQuiz> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Multiple Choice Quiz"),
        backgroundColor: Colors.blue,
      ),
      body: new Container(
        margin: const EdgeInsets.all(15.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new MaterialButton(
                height: 50.0,
                color: Colors.green,
                onPressed: startQuiz,
                child: new Text(
                  "Ort 1",
                  style: new TextStyle(fontSize: 18.0, color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }

  void startQuiz() {
    setState(() {
      Navigator.push(
          context, new MaterialPageRoute(builder: (context) => new QuizApp()));
    });
  }
}

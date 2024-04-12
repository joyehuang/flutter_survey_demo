import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget{
  const QuestionScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(context) {
    return Column(children: [
      Text('The question ...'),
      SizedBox(height: 30,),
      ElevatedButton(onPressed: (){}, child: child)
      ],);
  }
}
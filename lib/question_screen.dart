import 'package:flutter/material.dart';
import 'package:avd_bacis/answer_button.dart';
import 'package:avd_bacis/question/question.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget{
  const QuestionScreen({super.key, required this.onSelectedAnswer});
  final void Function(String answer) onSelectedAnswer;

  @override
  State<StatefulWidget> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(selectedAnswer){
    widget.onSelectedAnswer(selectedAnswer);
    setState((){
    currentQuestionIndex++; // increments the value by 1
    });
  }
  
  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          Text(
            currentQuestion.text,
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 201, 153, 251),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
            ),
          const SizedBox(height: 30,),
          ...currentQuestion.getShuffledAnswer().map((answer) {
            return AnswerButton(
              answerText: answer, 
              onTap: (){
                answerQuestion(answer);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
import 'question.dart';
class QuizBrain{
  int _qno=0;
  List<Question> _qA= [
    Question("Flutter has three types of widgets?",false),
    Question("Hot reload only executes the code inside the build class?", true),
    Question("Dart is an OOPS language?", true),
    Question("Is Flutter Cross platform?", true),
    Question("The head section of a Web page goes to the Internet and is not visible to the person viewing the page?", false),
    Question("<brk> tag is be used for a line break?", false),
    Question("An absolute path is what a server needs to locate the file being requested?", false),
    Question("A wireframe is a visualization tool for presenting proposed functions, structure and content of a web page?", true),
    Question("URL stands for Unitext Resource Location?", false),
    Question("Firefox uses Gecko rendering engine?", true),
    Question("var a = true,  => a=1", true),
    Question("JavaScript is an Object Based language ? ", true),
    Question("Undefined is a JavaScript data type?", true),
  ];
  void nextQuestion(){
    if (_qno < _qA.length-1){
      _qno++;
    }
  }
  String getQuestionText(){
    return _qA[_qno].questionText;
  }
  bool getQuestionAnswer(){
    return _qA[_qno].questionAnswer;
  }
  // ignore: missing_return
  bool isOver(){
    if (_qno>=_qA.length-1){
      return true;
    } else {
      return false;
    }
  }
  void reset(){
    _qno=0;
  }
}
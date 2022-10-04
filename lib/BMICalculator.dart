import 'dart:math';


enum BMICategories {
  underWeight,
  Normal,
  OverWeight,

}
class BMI{


  BMI({required this.height, required this.weight});

  int height;
  int weight;
  late double _result;

  String calculate(){


  _result = weight / pow(height/100,2);

  return _result.toStringAsFixed(1);

  }

  String getStatus(){

    if(_result>=25){
      return BMICategories.OverWeight.name.toString().toUpperCase();
  }
    else if(_result>18.5){
      return BMICategories.Normal.name.toString().toUpperCase();
  }



  return BMICategories.underWeight.name.toString().toUpperCase();


}

String getExplanation(){


  if(_result>=25){

      return 'You have higher than normal body weight. Try to excercise more';

  }
  else if(_result>18.5){
    return 'You have normal body weight. Good job';
  }



  return 'Your weight is lower than normal body weight.You can eat a bit more';




}




}
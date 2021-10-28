// Арифметические операторы
// + сложить
// - вычитывать
// * умножать
// / делить 
// % остаток от деления
// ++ инкремент 
// -- декремент

// Операторы сравнения
// == истинно если равно
// != истинно если не равно
// > истинно если левый операнд больше правого
// < истинно если правый операнд больше левого
// >= истинно если левый операнд больше или равен правому
// <= истинно если правый операнд больше или равен левому

// = присваивание
// && - и
// || - или
// ! - НЕ


import 'dart:io';
void main(List<String> arguments) {
  taskTwo(2003, 2021, 18);
  taskThree([1,2,3,4,5,6,7,8,9,10]);
  taskFour();
}

void taskTwo(int birth_year, int this_year, int age){
  // if ((this_year - birth_year) == age){
  //   print("День рождение в этом году уже было");
  // }
  // else {
  //   print("День рождение скоро");
  // }
  switch((this_year - birth_year) == age){
    case true: {print("День рождение в этом году уже было");}
    break;
    default : {print("День рождение скоро");}
    break;
  }
}

void taskThree(List<int> list){
  List<int> odd = [];
  List<int> even = [];
  for (int i = 0; i < list.length; i++){
    if (list[i]%2 == 0){
      even.add(list[i]);
    }
    else{
      odd.add(list[i]);
    }
  }
  print(even);
  print(odd);
}


void taskFour(){
  var value = "";
  int number = 0;
  while (value != "stop") {
    value = stdin.readLineSync()??"";
    if(isNumeric(value)){
      number = int.tryParse(value)??1;
    }
    if (number > 0){
      print("$number is positive");
    }
    else {
      print("$number is negative");
    }
  }
}

bool isNumeric(String s) {
 if (s == null) {
   return false;
 }
 return double.tryParse(s) != null;
}

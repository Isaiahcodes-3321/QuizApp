import 'dart:async';
import 'dart:io';

void main() {
  MyStructure myStructure = new MyStructure();
  myStructure.getUserName();
}

class MyStructure {
  String name = '';
  int scoreMark = 0;

  getUserName() {
    print('  Welcome gamer Please what the Name ?');
    var getName = stdin.readLineSync();
    name = '$getName';

    while(true){

    print(
        ' Hey $name This is a Quiz game \n you are expected to answer the Questions as \n fast as you can \n On every questions you have a countdown time of 50 sec \n per questions 10 marks per question \n  1. To start \n');

    var opt = stdin.readLineSync();
    switch (opt) {
      case "1":
        startQuizQuestion1();
        break;
      default:
        print('\n Wrong input try again');
        break;
    }
    }
  }

  startQuizQuestion1() {
    // this will handle my countdown time 
    // Timer countdownTime = Timer(Duration(seconds: 5), () {
    //   print(' Time out');
    //   score();
    // });
    print('1, Is Dart an open source ? \na, Yes\nb, No\nc, Maybe');
    var opt1 = stdin.readLineSync();
    if (opt1 == "a") {
      scoreMark++;
    }
    //check if countdown time is 0 then stope the quize
    // if (countdownTime.tick < 0) {
    //   print(' Time outttt');
    //   countdownTime.cancel();
    //   score();
    // }
    print(
        '\n2, Which of the following its Dart Framework ? \na, Spring\nb, Flutter\nc, React\nd, flutter wave');
    var opt2 = stdin.readLineSync();
    if (opt2 == "b") {
      scoreMark++;
    }
    
    //check if countdown time is 0 then stope the quize
    // if (countdownTime.tick < 0) {
    //   print(' Time outttt');
    //   countdownTime.cancel();
    //   score();
    // }

    print(
        '\n3, Which is the best practic to name Your dart class ? \na, myClass\nb, myclass\nc, Myclass\nd, my_class ');
    var opt3 = stdin.readLineSync();
    if (opt3 == "c") {
      scoreMark++;
    }
    print(
        '\n4, Which of these is dart main funtion ? \na, Main(){}\nb, mymain(){}\nc, Mymain(){}\nd, main(){} ');
    var opt4 = stdin.readLineSync();
    if (opt4 == "d") {
      scoreMark++;
    }
    print(
        '\n5, Which of the dart package is used to take input from user ? \na, dart:io\nb, Dart:Io\nc, dart:input\nd, dart input');
    var opt5 = stdin.readLineSync();
    if (opt5 == "a") {
      scoreMark++;
    }
    print(
        '\n6, Dart code must have? \na, main Class\nb, main Object\nc, main funtion\nd, main properties');
    var opt6 = stdin.readLineSync();
    if (opt6 == "c") {
      scoreMark++;
    }
    print(
        '\n7, What Dart statment execute output to users? \na, print();\nb, Print();\nc, print()\nd, PRINT();');
    var opt7 = stdin.readLineSync();
    if (opt7 == "a") {
      scoreMark++;
    }
    print(
        '\n8, Which of these properties calculate the total element inside an array? \na, Array.length;\nb, array.length;\nc, array.Length\nd, array.LENGTH;');
    var opt8 = stdin.readLineSync();
    if (opt8 == "b") {
      scoreMark++;
    }
    print(
        '\n9, Which of these dart use to handle erros? \na, TRY and CATCH\nb, try and Accept\nc, try and handle\nd, try and catch');
    var opt9 = stdin.readLineSync();
    if (opt9 == "d") {
      scoreMark++;
    }
    print(
        '\n10, Which of these its an Anonymous function? \na, myfunction(){}\nb, Funtion()\nc, (){}\nd, {}=>');
    var opt10 = stdin.readLineSync();
    if (opt10 == "c") {
      scoreMark++;
    }

     score();
  }

  score() {
    while (true) {
      print(
          '\n $name you scored  $scoreMark out of 10 questions \n1, Play again\n2, Exit');
      var lastopt = stdin.readLineSync();
      switch (lastopt) {
        case '1':
          startQuizQuestion1();
          scoreMark = 0;
          break;
        case '2':
          exit(0);
          break;
        default:
          print('\n Wrong input ');
      }
    }
  }
}

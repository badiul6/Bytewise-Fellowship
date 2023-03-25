import 'dart:io';
main(){
  print("hello world");

  var firstName= "Badiul";
  String lastName= "Jamal";
  print(firstName+' '+lastName);

  stdout.writeln("What is your name?");
  String? name= stdin.readLineSync();
  print('My name is $name');

  int amount1= 200;
  var amount2= 200;
  print('Amount1:  $amount1 | Amount2: $amount2\n');
  dynamic weakVar= 100;
  print('Weak Variable: $weakVar\n');
  weakVar= "Dart Language";
  print('Weak Variable: $weakVar\n');

    String str= """hello
                   world
                   dart""";
print('Multi Line String: $str');
//type casting
    var one= int.parse('1');
    assert(one==1);

    var two= double.parse('1.11');
    assert(two == 1.11);

    String str1= 1.toString();
    assert(str1 == '1');

    String pi= 3.1428.toStringAsFixed(3);
    assert(pi=='3.143');
//runtimetype
    const a= 0;
    const b= true;
    const c= 'hello';

    print(a.runtimeType);
    print(b.runtimeType);
    print(c.runtimeType);
//ternary operator
    int x=10;
    var result= x%2 == 0? 'Even':'Odd';
    print(result);
    //type test
    // ignore: unnecessary_type_check
    if (x is int){
      print('integer');
    }
    else{
      print('Not Integer');
    }
//switch statement
    switch(x){
      case 10:
        print('even');
        break;
      case 11:
        print('odd');
        break;
      default:
        print('Confused');
    }
//for loop
  for (int i = 0; i < 5; i++) {
        print(i);
    }
  //for-in loop
  var nums= [1,2,3];
  for(var n in nums){
    print(n);
  }
   var G = [1,2,3,4,5];
   //for each loop
  G.forEach((var num)=> print(num));
  print(G.length);
// while loop
  var g = 4;
    int j = 1;
    while (j <= g) {
        print('Hello G');
        j++;
    }
    //do while loop
    int aa=5;
    int i = 1;
    do {
        print('Hello');
        i++;
    } while (i <= aa);
//list
  List<String> names=['badiul', 'jamal'];
  var names2= names;
  var names3= [...names];

  names[1]= 'sheikh';
  for(var n in names2)
    print(n);
  for(var n in names3)
    print(n);
//set
  var helogens={'fluroine', 'chlorine'};
  for(var x in helogens){
    print(x);
  }
  //Map
  var days={
    1: 'Monday',
    2: 'Tuesday',
    3: 'Wednesday'
  };
  print(days[2]);
  showOutput(square(2.25));
  showOutput(square.runtimeType);
  //anonymous function
  var list= ['apple', 'banana', 'mango'];
  list.forEach((element) {print(element);
  });
  showOutput(sum(m: 2,n: 1));
  showOutput(product(4));
  Person p1= Person("BAdiul", age: 18);
  Person p2= Person("JAmal");
  Person p3= Person.guest();
  p2.showOutput();
  p1.showOutput();
  p3.showOutput();
  var x1= X('hel');
  print(x1.name);
  // x1.name='Ben';(error because name is 'Final')
  
  //print(x.age);(error because age is 'Static') 
  print(X.age);
  var m= Male('BAdiul', 20, 'male');
  m.showOutput();

  Gg gg = Gg(); 
  gg.setName = "Ground";
  print("Welcome to ${gg.getName}");


}
class Gg {
  // Creating a Field/Property
  String? gName;
  // Creating the getter method to get input from Field/Property
  String? get getName {
    return gName;
  }
  // Creating the setter method to set the input in Field/Property
  set setName(String name) {
    gName = name;
  }
}
class X{
  final name;
  static const int age=10;
  X(this.name);
}
class Person{

  String? name;
  int? age;

  Person(this.name, {this.age= 10});
  //named constructor
  Person.guest(){
    name='Guest';
    age= 35;
  }
  void showOutput(){
    print(name);
    print(age);

  }
}
//inheritance
class Male extends Person{
  String? Gender;
  Male(String name, int age, this.Gender) : super(name, age: 20);

  void showOutput(){
    super.showOutput();
    print(Gender);
    }
}
//functions
dynamic square(var n) => n*n;
//function with named parameter
dynamic sum({var n, var m}) => n+m;
//(named parameter is optional)
dynamic product(var n, {var m= 2}) => n*m;

void showOutput(var msg){
  print(msg);
}

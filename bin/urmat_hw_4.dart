import "dart:io";
int totalCAlls = 0;

void main (){
print('----------');

  int num = 0;
for (num=1; num  <=3; num++){
greet();
totalCAlls++;
}

print('----------------');

for (num=1; num<=1 ; num++){
  introduce('Alex', 25);
  totalCAlls++;
}

for (num=1; num<=1 ; num++){
  introduce('Urmat', 32);
  totalCAlls++;
}

for (num=1; num<=1 ; num++){
  introduce('Raiyan', 2);
  totalCAlls++;
}

print('------');

for (num=1; num<=1 ; num++){
  introduce('Urmat', 32);
  int resulat = addNumbers(5, 8);
 print('Sum of 5 and 8 is $resulat');
 totalCAlls++;
}

print('--------');

for (num=1; num<=1 ; num++){
double cost1 = calculateDiscount (price: 97.5 , discount: 0 , tax: 0 );
print(' Final price 1: $cost1');
 totalCAlls++;
}

for (num=1; num<=1 ; num++){
double cost2 =calculateDiscount (price: 100, discount: 2.5 , tax: 0 );
print(' Final price 2: $cost2');
 totalCAlls++;
}

for (num=1; num<=1 ; num++){
double cost3 = calculateDiscount (price: 100 , discount: 5 , tax: 2.5 );
print(' Final price 3: $cost3');
 totalCAlls++;
}

print('-----------');

print( 'Total function calls:  $totalCAlls');
}
void greet (){
  print('Hello! Welcome to Dart programming!');}

void   introduce(String name, int age){
  print('My name is $name and I am $age years old.');
}
 
int addNumbers (int a,int b){
  return ( a + b).toInt();
}

double calculateDiscount({required double price,double discount = 0,double tax = 0,
}){
return price - (price * discount / 100) + (price * tax / 100);
}


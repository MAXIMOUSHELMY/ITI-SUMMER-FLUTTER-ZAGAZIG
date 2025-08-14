import 'dart:io' show exit, stdin;
void calculatestats(){
  double sum =0;
  double averge;
  print(" enter the input");
  int input=int.parse(stdin.readLineSync()!);
  print(" enter the count");
for(int i=0;i<input;i++){
  
int count=int.parse(stdin.readLineSync()!);
sum+=count;
}
averge=sum/input;
if(averge>=60){
  print(" pased");
}
else
print(" filed");

}






void main(){
  
  print(" Enter the name1");
String ?name1=stdin.readLineSync();
print(" Neter the age");
int age1=int.parse(stdin.readLineSync()!);
 print(" is graduted");
bool graduated=bool.parse(stdin.readLineSync()!);
print("name:$name1");
print(" age:$age1");
if(graduated==true){
print(" is graduated");

}
else 
print(" is no gratuated");

print("---------------------");
print("1.computerscience");
print("2.design");
print("3. engneering");
int deparment=int.parse(stdin.readLineSync()!);
switch(deparment)
{
case 1:
print("computerscience");
break;
case 2:
print("design");
break;
case 3:
print("engneering");
break;
default:
print(" no department");
}

print("--------------------");
print(" enter test scores ");
 List <int> score=[];
for(int i=1;i<=5;i++){
 int scor=int.parse(stdin.readLineSync()!);
 score.add(scor);
}
print(score);
Map<int,int> mapscore=   Map.from(  score.asMap());
mapscore.updateAll((key, value) => value+5);
mapscore.forEach((key,value)=>print(" key:$key,value$value"));
print("--------------------------");

calculatestats();
print("-------------");
(){
  List<int> scores = [];
  print("  enter the input 1");
int input1=int.parse(stdin.readLineSync()!);
for(int i=0;i<=input1;i++)
  {
    int input2=int.parse(stdin.readLineSync()!);
    scores.add(input2);
  }
  var above60 = scores.where((score) => score >= 60);
  print("Scores above 60: $above60");

  
  var failedBelow50 = scores.where((score) => score <= 50).length;
  print("Number of scores less than 50: $failedBelow50");

  
}();

print("-------------------------");
print("1.if not graduated and passed");
print("2. if graduated ");
print("3.if not draduated");
print(" enter the answer");
int answer=int.parse(stdin.readLineSync()!);
if(answer==1){
  print(" Ready to graduate soon");
}
else if(answer==2){
  print("you are already graduated");
}
else if(answer==3){
print(" need more work");
}
else
print(" is not student");


print("--------------------------");
print(" enter the user_answer{yes/no}");
String? user_answer=stdin.readLineSync();
if(user_answer=="no"){
exit(0);

}
else 
print("done");
}
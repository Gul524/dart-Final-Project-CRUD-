// CRUD (create , read , update , delete )  operation
import 'dart:io';

class studentdata {
  int RollNo;
  String Name;
  int Phone;
  int Age;

  studentdata(this.RollNo,this.Name,this.Phone,this.Age);
}

List studentList = [];

void  curd(){

  print("choose Operation : < 1 - 5 >");
  print("  1 >  Create Data");
  print("  2 >  Read Data");
  print("  3 >  Update Data");
  print("  4 >  Delete Data");
  print("  5 >  Exit");

  int menuOption = int.parse(stdin.readLineSync()!);


 if(menuOption == 1){
  print("Enter Student Student Roll Number :");
  int RollNo = int.parse(stdin.readLineSync()!);
  print("Enter Student Name :");
  String Name = stdin.readLineSync()!;
  print("Enter Student Phone Number :");
  int Phone = int.parse(stdin.readLineSync()!);
  print("Enter Student Age :");
  int Age = int.parse(stdin.readLineSync()!);
  studentList.add(studentdata(RollNo,Name,Phone,Age));
  print("\n \t Done");
 }  

  else if(menuOption == 2){
  print("---- Student INFO ----");
  for(int i= 0 ; i <= studentList.length-1 ; i++){
    print("Roll No: ${studentList[i].RollNo} \t NAME: ${studentList[i].Name} \t PHONE: ${studentList[i].Phone} \tAge: ${studentList[i].Age} ");
  }

  } 

 
  else if(menuOption == 3){
  print("Enter Roll No (to update)");
  int RollNoU = int.parse(stdin.readLineSync()!);
  print("Enter Student Name :");
  String Name = stdin.readLineSync()!;
  print("Enter Student Phone Number :");
  int Phone = int.parse(stdin.readLineSync()!);
  print("Enter Student Age :");
  int Age = int.parse(stdin.readLineSync()!);
  for(int i =0 ; i<= studentList.length-1; i++){
    if(RollNoU == (studentList[i].RollNo)){
      studentList[i].Name = Name   ;
      studentList[i].Age = Age  ;
      studentList[i].Phone = Phone;
    
  }
  }
  print("\n \t Update Sucessfull");
  }


 else if(menuOption == 4){
  print("Enter Student Roll for delete purpose :\t ");
 int RollNoD = int.parse(stdin.readLineSync()!);
  for(int i =0 ; i<= studentList.length-1; i++){
    if(RollNoD == (studentList[i].RollNo)){
      studentList.removeAt(i);
 } }
  print("\n \t Delete Successful");
 }
} 


void main()
{
  int x = 1;
  do{
    curd();
    
 print("\n Press \n 1> Try Again \n 2> Exit ");
  x = int.parse(stdin.readLineSync()!);

  }while((x==1)&&(x!=2));

}

  




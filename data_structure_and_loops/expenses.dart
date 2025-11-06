//Create a program that reads list of expenses amount using user input and print total.
void main(){
  List<int> expenses=[200, 100, 50, 300];

  int total=0;
  for(var expense in expenses){
    total+=expense;
  }
  print(total);
}
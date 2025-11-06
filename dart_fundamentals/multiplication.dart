void main(){
  multiplicationTable(num: 8);
}
void multiplicationTable({required int num}){
  print("-----Multiplication Table-----");
  for (int i=1; i<11; i++){
    print("$num * $i = ${num*i}");
  }
}

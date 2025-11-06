void main(){
  oddOrEven(num: 7);
}
void oddOrEven({required int num}){
  if(num % 2 ==0){
    print("$num is even");
  }else{
    print("$num is odd");
  }
}
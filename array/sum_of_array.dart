void main(){
  List<int> arr=[];
  for(int i=0; i<10; i++){
    arr.add(i+1);
  }
  calculate_sum_of_array(arr);
}
void calculate_sum_of_array(List<int> arr){
  int sum=0;
  for(int i=0; i<10; i++){
    sum+=i;
  }
  print(sum);
}
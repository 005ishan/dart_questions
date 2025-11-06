void main(){
  List<int> arr=[];
  for(int i=0; i<100; i++){
    arr.add(i+1);
  }
  calculate_sum_of_even_array(arr);
}
void calculate_sum_of_even_array(List<int> arr){
  int sum=0;
  for(int i=0; i<=100; i++){
    if(i%2==0){
      sum+=i;
    }
  }
  print(sum);

}
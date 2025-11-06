void main(){
  int num=121;
  int originalNum=num;
  int reversedNum=0;

   while (num > 0) {
    int digit = num % 10;           
    reversedNum = (reversedNum * 10) + digit; 
    num ~/= 10;                     
  }

  if (originalNum == reversedNum) {
    print('$originalNum is a palindrome.');
  } else {
    print('$originalNum is not a palindrome.');
  }
}
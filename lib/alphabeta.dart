//Add your 7 friend names to the list. Use where to find a name that starts with alphabet a.
void main(){
  List<String> friends = ['Aryan', 'Gopal', 'Amit', 'Sujan', 'Aslim', 'Kiran', 'Ankit'];
  var namesStartingWithA = friends.where((name) => name.startsWith('A'));
  print(namesStartingWithA);
}
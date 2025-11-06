void main(){
  Map cityCountry = {
    'Nepal' : 'Kathmandu',
    'India' : 'New Delhi',
    'USA' : 'Washington',
    'UK' : 'London',
  };
  print(cityCountry);

  Map cityCountry2 = Map<String, String>();

  cityCountry2['New York']='USA';
  cityCountry2['London']='UK';
  cityCountry2['Paris']='France';
  cityCountry2['Berlin']='Germany';

  print(cityCountry2);

  print("Keys are:");
  print(cityCountry.keys);

  print("Values are:");
  print(cityCountry.values);

  String searchValue = "London";
  print("$searchValue is in ${cityCountry[searchValue]}");
}


  //Create a map with name, address, age, country keys and store values to it. 
  //Update country name to other country and print all keys and values.
void main() {
  Map person = {
    'name': 'Ryzan',
    'address': 'Kathmandu',
    'age': 20,
    'country': 'Nepal'
  };

  person['country'] = 'China';

  person.forEach((key, value) {
    print('$key: $value');
  });
}

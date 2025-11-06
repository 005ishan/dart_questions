//Create a map with name, phone keys and store some values to it. Use where to find all keys that length 4.
void main() {
  var phoneBook = {
    'Ishan': '1234',
    'Ram': '567549',
    'Shyam': '14562345',
    'Hari': '1276',
    'Kaka': '4891',
  };

  // Use a loop to find keys with a phone number length of 4
  phoneBook.forEach((name, phone) {
    if (phone.length == 4) {
      print(name);
      print(phone);
    }
  });
}
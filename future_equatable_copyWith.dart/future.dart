Future<String> fetchUser() async {
  await Future.delayed(Duration(seconds: 2));
  return "Alice";
}

void main() async {
  print("Fetching user...");
  String user = await fetchUser();
  print("User: $user");
  print("Done!");
}

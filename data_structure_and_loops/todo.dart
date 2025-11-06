//Create a simple to-do-application that allows user to add, remove, and view their task.
class Todo {
  List<String> TodoList = [];

  void addTodo({required String todo}) {
    TodoList.add(todo);
  }

  void removeTodo() {
    TodoList.removeLast();
  }

  void viewTodoList() {
    print(TodoList);
  }
}

void main() {
  Todo myTodoList = new Todo();
  myTodoList.addTodo(todo: "Clean the house");
  myTodoList.addTodo(todo: "Start Docker Course");
  myTodoList.addTodo(todo: "Read Normal People Novel");

  myTodoList.removeTodo();
  myTodoList.viewTodoList();
}
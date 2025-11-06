void main(){

  print(area(r: 31.5));
}
double area({double? pi, required double r}){
  return (pi?? 3.14* r *r);
}

//NAMING convention
//PascalCase : class
//camelCase : variables, function
//snake_case : file name
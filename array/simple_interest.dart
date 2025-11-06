void main(){
  print(si(p: 100, t: 10, r: 5));
}
double si({required double p, required double t, required double r}){
  return ((p*t*r)/100);
}
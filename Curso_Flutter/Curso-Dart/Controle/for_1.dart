
main(){
  for(int a = 100; a >= 0; a = a -= 4){
    print("a = $a");
  }

  int b = 0;

  for(; b <= 100; b = b += 4){
    print("b = $b");
  }
  print("Fim!");
}
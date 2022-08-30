using System;
class Aula22{
   static void Main(){
       // Foreach serve para ler valores
       int[] num = new int[3]{1,2,3};
       
       for(int i = 0; i < num.Length; i++){
           Console.WriteLine(num[i]);
       }

       foreach(int n in num){
           Console.WriteLine(n);
       }
    } 
}

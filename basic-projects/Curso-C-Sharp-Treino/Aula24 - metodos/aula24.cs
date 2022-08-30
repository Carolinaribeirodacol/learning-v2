using System;
class Aula24{
   static void Main(){
       match();
   }

   static void match(){

       string nome1, nome2;
       
       Console.WriteLine("Digite o 1° nome: ");
       nome1 = Convert.ToString(Console.ReadLine());
       Console.WriteLine("Digite o 2° nome: ");
       nome2 = Convert.ToString(Console.ReadLine());

       if(nome1 == "Giordano" & nome2 == "Carolina" | nome1 == "Carolina" & nome2 == "Giordano"){
           Console.WriteLine("Combinam <3");
       }
       else{
           Console.WriteLine("Não combinam");
       }
   }
}
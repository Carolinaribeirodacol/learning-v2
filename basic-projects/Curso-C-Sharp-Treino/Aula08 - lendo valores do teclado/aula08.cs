using System;
class Aula08{
    static void Main(){
        int n1, n2, soma; 
        
        Console.Write("\t\t\tCalculadora: \n\n");

        Console.Write("Digite o primeiro valor: ");
        n1 = int.Parse(Console.ReadLine());
        Console.Write("Digite o segundo valor: ");
        n2 = Convert.ToInt32(Console.ReadLine());
        soma = n1 + n2;

        Console.WriteLine("{0} + {1} = {2}",n1, n2, soma);
    }
}
using System;
class Aula23{
   static void Main(){
        int[] vet1 = new int[5];
        int[] vet2 = new int[5];
        int[] vet3 = new int[5];
        int[,] matriz = new int[2,5]{{11,22,00,44,55},{66,77,88,99,00}};

        Random random = new Random();
        for(int i = 0; i < vet1.Length;i++){
            //valor máximo no next, se fosse (50, 30) 
            //Seria 50 máx e 30 min
            vet1[i] = random.Next(50);
        }

        Console.WriteLine("Elemento do vetor 1");
        foreach(int n in vet1){
            Console.WriteLine(n);
        }

        Console.WriteLine("BinarySearch");
        int procurado = 33;
        int pos = Array.BinarySearch(vet1, procurado);
        Console.WriteLine("Valor{0} está na posição {1}", procurado, pos);
        Console.WriteLine("--------------------------------");

        Console.WriteLine("Copy");
        Array.Copy(vet1, vet2, vet1.Length);
        foreach(int n in vet2){
            Console.WriteLine(n);
        }
        Console.WriteLine("--------------------------------");

        Console.WriteLine("CopyTo");
        vet1.CopyTo(vet3, 0);
        foreach(int n in vet3){
            Console.WriteLine(n);
        }
        Console.WriteLine("--------------------------------");

        Console.WriteLine("GetUpperBound");
        int MaiorIndiceVetor = vet1.GetUpperBound(0);
        int MaiorIndiceMatriz_D1 = matriz.GetUpperBound(1);
        Console.WriteLine("Maior índice do vetor 1 {0}", MaiorIndiceVetor);
              
        }   

}

using System;
class Aula09{
    static void Main(){
        int num = 10;
        
        // Deslocamento para a esquerda -> Dobra o valor
        num = num << 1;

        Console.WriteLine(num);

        // Deslocamento para a direita -> o valor diminui pela metade
        num = 10;
        num = num >> 1;

        Console.WriteLine(num);
    }
}
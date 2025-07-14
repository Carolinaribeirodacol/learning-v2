using System;
class Aula18{
    static void Main(){
        int[,] matriz = new int[3,5]; // ou só 3, que fica de 3x3

        /*
        10 20 30 40 50
        60 70 80 90 15
        25 35 45 55 65
        */ 

        matriz[0,0] = 10;
        matriz[0,1] = 20;
        matriz[0,2] = 30;
        matriz[0,3] = 40;
        matriz[0,4] = 50;

        matriz[1,0] = 60;
        matriz[1,1] = 70;
        matriz[1,2] = 80;
        matriz[1,3] = 90;
        matriz[1,4] = 15;

        matriz[2,0] = 25;
        matriz[2,1] = 35;
        matriz[2,2] = 45;
        matriz[2,3] = 55;
        matriz[2,4] = 65;

        Console.WriteLine(matriz[2,3]);
    }
}
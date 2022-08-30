using System;

public class Jogador{ //sem modificador vira public automaticamente
    public int energia = 100;
    public bool vivo = true;

}
class Aula28{
   static void Main(){
       Jogador j1 = new Jogador();
       Jogador j2 = new Jogador();
       Jogador j3 = new Jogador();

        j1.energia = 50;
        Console.WriteLine("Energia J1: {0}", j1.energia);
        Console.WriteLine("Energia J2: {0}", j2.energia);

   }
}
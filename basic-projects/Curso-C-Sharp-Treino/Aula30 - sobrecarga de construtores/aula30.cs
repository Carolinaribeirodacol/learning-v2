using System;
using System.IO;
public class Jogador{
    public int energia;
    public bool status;
    public string nome;

    public Jogador(){ // Quando não passar nada
        energia = 100;
        status = true;
        nome = Path.GetRandomFileName();
    }

    public Jogador(string n){ // Quando passar o nome
        energia = 100;
        status = true;
        nome = n;
    }

    public Jogador(string n, int e){ // Quando passar o nome e a energia
        energia = e;
        status = true;
        nome = n;
    }

    public Jogador(string n, int e, bool s){ // Quando passar tudo
        energia = e;
        status = s;
        nome = n;
    }

    public void info(){ 
        Console.WriteLine("Nome: {0}\n", nome);
        Console.WriteLine("Energia: {0}\n", energia);
        Console.WriteLine("Status: {0}\n", status);
    }

}

class Aula30{
   static void Main(){
       Jogador j1 = new Jogador();

       j1.info();

   }
}
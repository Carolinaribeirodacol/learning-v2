using System;
static public class Jogador{
    static public int energia;
    static public bool status;
    static public string nome;

    static public void iniciar(string n){
        energia = 100;
        status = true;
        nome = n;
    }

    static public void info(){ 
        Console.WriteLine("Nome: {0}\n", nome);
        Console.WriteLine("Energia: {0}\n", energia);
        Console.WriteLine("Status: {0}\n", status);
        Console.WriteLine("-------------------------------------");
    }
}

class Inimigo{
    static public bool alerta; // Sendo static afeta todos os inimigos
    public string nome;

    public Inimigo(string n){
        alerta = false;
        nome = n;
    }

    public void info(){
        Console.WriteLine(nome);
        Console.WriteLine(alerta);
    }
}

class Aula31{
   static void Main(){

       Jogador.iniciar("Carolina");
       Jogador.info();

       Inimigo i1 = new Inimigo("kkk");
       Inimigo i2 = new Inimigo("ksksks");
       Inimigo i3 = new Inimigo("hehehe");

       Inimigo.alerta = true; // Acessa através da classe o alerta

       i1.info();
       i2.info();
       i3.info();

   }
}
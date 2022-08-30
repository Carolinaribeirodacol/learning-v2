using System;
// Toda classe tem um construtor, default por padrão
// Método construtor tem o mesmo nome da classe
public class Jogador{ //sem modificador vira public automaticamente
    public int energia = 100;
    public bool vivo = true;
    public string nome;
    public Jogador(string n){
        energia = 100;
        vivo = true;
        nome = n;
    }

    ~Jogador(){ // método destrutor
        Console.WriteLine("Jogador {0} foi morto!", j1.nome);
    }
}
class Aula29{
   static void Main(){
       
       string nick, nome;

       Console.WriteLine("Digite seu Nome: ");
       nome = Console.ReadLine();
       Jogador j1 = new Jogador(nome);

       Console.WriteLine("Digite seu nick: ");
       nick = Console.ReadLine();

        Console.WriteLine("\nNome J1: {0}", j1.nome);
        Console.WriteLine("Nick: {0}", nick);

        
        if(j1.vivo == true){
            Console.WriteLine("Status: Vivo");
            Console.WriteLine("Energia: {0}", j1.energia);
        }
        else
        {
           Console.WriteLine("Status: Morto"); 
        }

   }
}
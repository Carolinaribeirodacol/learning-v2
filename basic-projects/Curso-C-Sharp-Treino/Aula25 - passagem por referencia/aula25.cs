using System;
class Aula25{
   static void Main(){
       int num = 10;
       dobrar(ref num); // passagem por referĂȘncia
       Console.WriteLine(num);
   }

   static void dobrar(ref int valor){
       valor *= 2;
   }
}
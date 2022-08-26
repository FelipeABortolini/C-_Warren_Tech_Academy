using Dojo2508.Model;
using Dojo2508.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dojo2508.View
{
    internal class AnimalView
    {
        public static void Executa()
        {
            Animal animal1 = new Animal();
            animal1.Id = 0;
            animal1.Especie = "Jaguar";
            animal1.Name = "Jonathan";
            animal1.Peso = 100.3;

            Console.WriteLine(animal1);

            Animal animal2 = new Animal
            {
                Id = 1,
                Especie = "Capivara",
                Name = "Ronaldo",
                Peso = 50
            };

            AnimalRepository repo = new AnimalRepository();
            repo.Create(animal1);
            repo.Create(animal2);

            foreach (var animal in repo.Read())
            {
                Console.WriteLine(animal);
            }
        }
    }
}

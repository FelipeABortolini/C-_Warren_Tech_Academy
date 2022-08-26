using Data.Model;
using Data.Repository;
using Microsoft.AspNetCore.Mvc;


namespace WebApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AnimalController : ControllerBase
    {
        [HttpGet]
        public Animal Get()
        {
            Animal a1 = new Animal { Id = 1, Especie = "Catchoro", Nome = "Chimba", Peso = 3.8f };
            return a1;
        }
        [HttpPost]
        public string Post(Animal model)
        {
            AnimalRepository repo = new AnimalRepository();
            return repo.Create(model);
        }
    }
}

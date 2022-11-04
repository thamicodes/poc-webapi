using System.Security.Cryptography;
using System.Text;
using Microsoft.AspNetCore.Mvc;
using novo.Util;

namespace novo.Controllers;

[ApiController]
[Route("[controller]")]
public class ExemploController : ControllerBase
{
    private static readonly string[] Summaries = new[]
    {
        "Freezing", "Bracing", "Chilly", "Cool", "Mild", "Warm", "Balmy", "Hot", "Sweltering", "Scorching"
    };

    private readonly ILogger<ExemploController> _logger;

    public ExemploController(ILogger<ExemploController> logger)
    {
        _logger = logger;
    }


    [HttpGet("c1")]
    public IActionResult CodeSmell()
    {
        int target = -5;
        int num = 3;

        target = -num;
        target = +num;

        return Ok(target);
    }
    [HttpGet("c2")]
    public IActionResult CodeSmell2()
    {
        var fruitBasket = new List<Fruta>();
        fruitBasket.Add(new Laranja());
        fruitBasket.Add(new Laranja());
        fruitBasket.Add(new Uva());  // uncommenting this line will make both foreach below throw an InvalidCastException

        foreach (Fruta fruit in fruitBasket)
        {
            var orange = (Laranja)fruit; // This "explicit" conversion is hidden within the foreach loop below

        }

        foreach (Laranja orange in fruitBasket) // Noncompliant
        {

        }
        return Ok(fruitBasket);
    }
    [HttpGet("v1")]
    public IActionResult Vulnerabilidade()
    {
        var tempPath = Path.GetTempFileName();
        using (var writer = new StreamWriter(tempPath))
        {
            writer.WriteLine("conteúdo");
        }
        return Ok();
    }
    [HttpGet("v2")]
    public IActionResult Vulnerabilidade2()
    {
        string senha = "123";
        var salt = Encoding.UTF8.GetBytes("Hardcoded salt");
        var fromHardcoded = new Rfc2898DeriveBytes(senha, salt);
        salt = Encoding.UTF8.GetBytes(senha);
        var fromPassword = new Rfc2898DeriveBytes(senha, salt);

        var shortSalt = new byte[8];
        RandomNumberGenerator.Create().GetBytes(shortSalt);
        var fromShort = new Rfc2898DeriveBytes(senha, shortSalt);
        return Ok(fromHardcoded);
    }

}

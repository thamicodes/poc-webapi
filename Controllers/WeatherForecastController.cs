using Microsoft.AspNetCore.Mvc;

namespace novo.Controllers;

[ApiController]
[Route("[controller]")]
public class WeatherForecastController : ControllerBase
{
    private static readonly string[] Summaries = new[]
    {
        "Freezing", "Bracing", "Chilly", "Cool", "Mild", "Warm", "Balmy", "Hot", "Sweltering", "Scorching"
    };

    private readonly ILogger<WeatherForecastController> _logger;

    public WeatherForecastController(ILogger<WeatherForecastController> logger)
    {
        _logger = logger;
    }

    [HttpGet(Name = "GetWeatherForecast")]
    public IEnumerable<WeatherForecast> Get()
    {
        return Enumerable.Range(1, 5).Select(index => new WeatherForecast
        {
            Date = DateTime.Now.AddDays(index),
            TemperatureC = Random.Shared.Next(-20, 55),
            Summary = Summaries[Random.Shared.Next(Summaries.Length)]
        })
        .ToArray();
    }
    [HttpGet(Name = "CodeSmell")]
    public IActionResult CodeSmell()
    {
        int target = -5;
        int num = 3;

        target = -num;
        target = +num;

        return Ok(target);
    }
    [HttpGet(Name = "Vulnerabilidade")]
    public IActionResult Vulnerabilidade()
    {
        var tempPath = Path.GetTempFileName();  // Noncompliant

        using (var writer = new StreamWriter(tempPath))
        {
            writer.WriteLine("content");
        }
        return Ok();
    }
}

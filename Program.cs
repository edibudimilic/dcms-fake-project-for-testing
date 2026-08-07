var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();
var port = Environment.GetEnvironmentVariable("PORT") ?? "3000";
app.Urls.Add($"http://0.0.0.0:{port}");
app.MapGet("/", () => Results.Content(
    "<!doctype html><title>DCMS fixture</title><h1>dcms-stack-dotnet OK</h1>", "text/html"));
app.Run();

using AppointmentsAPI.Extensions;
using GlobalExceptionHandling;
using Microsoft.AspNetCore.HttpOverrides;
using NLog;

namespace AppointmentsAPI
{
    public class Program
    {
        public static void Main(string[] args)
        {
            var builder = WebApplication.CreateBuilder(args);

            LogManager.LoadConfiguration(string.Concat(Directory.GetCurrentDirectory(), "/nlog.config"));

            // Add services to the container.

            // Configure Services
            builder.Services.ConfigureCors();
            builder.Services.ConfigureIISIntegration();
            builder.Services.ConfigureLogger();
            builder.Services.ConfigureDapperContext();
            builder.Services.ConfigureRepository();
            builder.Services.ConfigureMediator();
            //
            builder.Services.AddControllers();
            // Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
            builder.Services.AddEndpointsApiExplorer();
            builder.Services.AddSwaggerGen();

            
            

            var app = builder.Build();

            

            // Configure the HTTP request pipeline.
            if (app.Environment.IsDevelopment())
            {
                app.UseSwagger();
                app.UseSwaggerUI();
            }

            // Configure Global Exception Handler
            app.UseMiddleware<GlobalExceptionHandlerMiddleware>();
            app.UseStaticFiles();
            app.UseRouting();
            app.UseHttpsRedirection();
            app.UseCors("AppointmentsCors");

            app.UseAuthorization();


            app.MapControllers();

            app.Run();
        }
    }
}

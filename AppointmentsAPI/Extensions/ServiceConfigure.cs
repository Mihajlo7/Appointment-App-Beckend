using Contracts;
using DapperRepositories;
using DapperRepositories.Context;
using DapperRepositories.Repository;
using LoggerService;
using MediatorCqrs.Handlers;
using Services;
using Services.impl;

namespace AppointmentsAPI.Extensions
{
    public static class ServiceConfigure
    {
        // Configure CORS Policy
        public static void ConfigureCors(this IServiceCollection services)
        {
            
            services.AddCors(options =>
            {
                options.AddPolicy("AppointmentsCors",
                    builder => builder.AllowAnyOrigin()
                    .AllowAnyMethod()
                    .AllowAnyHeader());
            });
        }
        // Configure IIS Integration
        public static void ConfigureIISIntegration(this IServiceCollection services)
        {
            services.Configure<IISOptions>(options => { });
        }

        // Configure Logger
        public static void ConfigureLogger(this IServiceCollection services)
        {
            services.AddSingleton<ILoggerManager,LoggerManager>();
        }
        // Configure Dapper Context
        public static void ConfigureDapperContext(this IServiceCollection services)
        {
            services.AddScoped<IDapperContext,DapperContext>();
        }
        // Configure Repository
        public static void ConfigureRepository(this IServiceCollection services)
        {
            services.AddScoped<IRepoH,RepoH>();
            services.AddScoped<IRepository,Repository>();
            services.AddScoped<IPersonService,PersonService>();
            services.AddScoped<IAppointmentService,AppointmentService>();
        }

        // Configure Mediator
        public static void ConfigureMediator(this IServiceCollection services)
        {
            services.AddMediatR(options =>
            {
                 options.RegisterServicesFromAssemblies(typeof(Program).Assembly,
                    typeof(GetMaxHeightHandler).Assembly);
            });
        }
        
    }
}

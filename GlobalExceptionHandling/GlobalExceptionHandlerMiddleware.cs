using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;
using Contracts;
using GlobalExceptionHandling.ExceptionModels;
using Microsoft.AspNetCore.Http;



namespace GlobalExceptionHandling
{
    
    public  class GlobalExceptionHandlerMiddleware
    {
        private readonly RequestDelegate _next;
        //private readonly ILoggerManager _logger;

        public GlobalExceptionHandlerMiddleware(RequestDelegate next)
        {
            _next = next;
            //_logger = logger;
        }
        public async Task InvokeAsync(HttpContext context)
        {
            try
            {
                await _next(context);
            }catch (Exception ex)
            {
                await HandleExceptionAsync(context, ex);
            }
        }

        public async Task HandleExceptionAsync(HttpContext context,Exception exception)
        {
            context.Response.ContentType = "application/json";
            var response=context.Response;

            ErrorResponse errorResponse = new ErrorResponse();
            
            switch(exception)
            {
                case ApplicationException _:
                    errorResponse.Title = "Application Error";
                    response.StatusCode = StatusCodes.Status409Conflict;
                    errorResponse.StatusCode = StatusCodes.Status409Conflict;
                    errorResponse.Message = exception.Message;
                    break;
                case DbException _:
                    errorResponse.Title = "Database Error";
                    response.StatusCode = StatusCodes.Status409Conflict;
                    errorResponse.StatusCode = StatusCodes.Status409Conflict;
                    errorResponse.Message = exception.Message;
                    break;
                default:
                    errorResponse.Title = "Server Error";
                    response.StatusCode = StatusCodes.Status500InternalServerError;
                    errorResponse.StatusCode= StatusCodes.Status500InternalServerError;
                    errorResponse.Message = exception.Message;
                    break;
            }

            var exResult = JsonSerializer.Serialize(errorResponse);
            await context.Response.WriteAsync(exResult);
        }
    }
}

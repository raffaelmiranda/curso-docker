using Microsoft.AspNetCore.Builder;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace mvc.Models
{
    public static class PopulaDb
    {
        public static void IncluirDabosDB(IApplicationBuilder app)
        {
            IncluirDadosDB(app.ApplicationServices.GetRequiredService<AppDbContext>());
        }

        public static void IncluirDadosDB(AppDbContext context)
        {
            Console.WriteLine("Aplicando Migrations");

            context.Database.Migrate();

            if (!context.Produtos.Any())
            {
                Console.WriteLine("Criando dados...");

                context.Produtos.AddRange(
                    new Produto("Luvas de goleiro", "Futebol", 25),
                    new Produto("Bola de Basquete", "Basquete", 48.95m),
                    new Produto("Bola de Futebol", "Futebol", 19.50m),
                    new Produto("Meias Grandes", "Futebol", 50),
                    new Produto("Cesta para quadra", "Basquete", 29.95m)
                    );
                context.SaveChanges();
            }
            else
                Console.WriteLine("Dados já existem...");
        }
    }
}

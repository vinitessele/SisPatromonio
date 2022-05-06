using System.Data.Entity;
using SisPatrimonio.Models;

namespace SisPatrimonio.Data
{
    /*Essa classe de contexto administra os objetos entidades durante o tempo de execução, 
     * o que inclui preencher objetos com dados de um banco de dados, controlar alterações, 
     * e persistir dados para o banco de dados.*/
    public class Context :DbContext
    {
        public Context() : base("BD")
        {
        }
        public DbSet<Usuario> usuario { get; set; }
    }
}
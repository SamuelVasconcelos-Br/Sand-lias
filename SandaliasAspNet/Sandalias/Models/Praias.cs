using Microsoft.CodeAnalysis.Operations;

namespace Sandalias.Models
{
    public class Praias
    {
        public string Nome { get; set; }
        public string Descricao { get; set; }
        public string CaminhoMapa { get; set; }
        public List<Praias> fotosPraias { get; set; } = new List<Praias> { };
        public string caminhoImagem { get; set; }

    }
}

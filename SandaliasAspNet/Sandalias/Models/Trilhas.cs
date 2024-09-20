namespace Sandalias.Models
{
    public class Trilhas
    {
        public string Nome { get; set; }
        public string Local { get; set; }
        public string Descricao { get; set; }
        public List<Trilhas> fotosTrilhas {  get; set; } = new List<Trilhas>();
        public string CaminhoImagem { get; set; }
        public string CaminhoMapa { get; set; }
        public string Curiosidades { get; set; }
    }
}

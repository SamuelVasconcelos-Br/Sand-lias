namespace Sandalias.Models
{
    public class Animais
    {
        public string Nome { get; set; }
        public string NomeCientifico { get; set; }
        public string Descricao { get; set; }
        public string Cuidados { get; set; }
        public string caminhoImagem { get; set; }
        public List<Animais> fotosAnimais { get; set; } = new List<Animais> { };
        
    }
}

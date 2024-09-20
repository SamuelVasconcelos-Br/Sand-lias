using Microsoft.AspNetCore.Mvc;
using Sandalias.Models;

namespace Sandalias.Controllers
{
    public class AnimaisController : Controller
    {
        public IActionResult Gaivota()
        {
            var gaivota = new Animais
            {
                Nome = "Gaivota",
                NomeCientifico = "Larinae",
                Descricao = "Gaivota é o nome comum utilizado para designar várias espécies de aves marinhas pertencentes à família Laridae, que são encontradas em diferentes regiões costeiras ao redor do mundo. Essas aves são conhecidas por sua habilidade em sobreviver em ambientes próximos ao mar, utilizando o ecossistema marinho como principal fonte de alimento. O termo \"ave marinha\" refere-se a aves que dependem do ambiente costeiro e oceânico para se alimentar e reproduzir, obtendo sua nutrição desde a linha de baixa-mar até as águas mais afastadas do oceano. As gaivotas têm uma alimentação diversificada, incluindo peixes, crustáceos e pequenos invertebrados marinhos, além de se adaptarem bem a ambientes urbanos, onde podem ser vistas em portos e praias.",
                Cuidados = "Evite alimentar as gaivotas com comida humana, pois isso pode causar problemas de saúde e dependência, levando-as a perder suas habilidades naturais de caça. Sempre mantenha sua comida e lixo bem fechados, especialmente em áreas onde as gaivotas são comuns, para evitar que tentem roubá-los. Em locais onde fazem ninhos, é importante não perturbá-las, principalmente durante a reprodução, mantendo distância e evitando barulhos altos ou gestos bruscos. Respeite as leis de proteção da vida selvagem, que muitas vezes protegem as gaivotas, e tenha cuidado para não alimentá-las inadvertidamente, garantindo que seu lixo esteja bem fechado e sem alimentos expostos. Além disso, não interfira em seu comportamento natural, pois elas desempenham um papel importante nos ecossistemas costeiros. Se uma gaivota parecer agressiva, mantenha distância e evite confrontos para sua segurança e a delas.",
                fotosAnimais = new List<Animais>
                {
                    new Animais
                    {
                        caminhoImagem="~/images/Animais/Gaivota.jpg"
                    },
                    new Animais
                    {
                        caminhoImagem="~/images/Animais/Gaivota2.jpg"
                    },
                    new Animais
                    {
                        caminhoImagem="~/images/Animais/Gaivota3.jpg"
                    },
                 
                }
            };
            return View(gaivota);
        }
        public IActionResult Tartaruga()
        {
            var tartaruga = new Animais
            {
                Nome = "Tartaruga",
                NomeCientifico = "Chelonioidea",
                Descricao = "As tartarugas marinhas são répteis pertencentes às famílias Cheloniidae e Dermochelyidae, encontradas em oceanos tropicais e subtropicais. A espécie mais conhecida da família Dermochelyidae é a tartaruga-de-couro (Dermochelys coriacea), que se diferencia por sua carapaça flexível e coberta por tecido semelhante a couro, em vez de placas ósseas. As tartarugas marinhas têm hábitos migratórios e dependem do ecossistema marinho para alimentação e reprodução. Sua dieta inclui algas, águas-vivas, crustáceos e pequenos peixes. Elas desempenham um papel crucial nos ecossistemas marinhos, ajudando a manter o equilíbrio das cadeias alimentares.",
                Cuidados = "Evite alimentar as tartarugas com comida humana, pois isso pode prejudicar sua saúde e alterar seu comportamento natural de busca por alimento. Mantenha sempre seu lixo bem fechado e longe da praia, já que restos de comida ou plásticos podem ser perigosos para elas. Se estiver em uma área de desova, mantenha distância dos ninhos e das tartarugas, especialmente durante a época de reprodução, evitando tocar ou perturbar os filhotes. Respeite as leis de conservação que protegem as tartarugas marinhas, garantindo que suas atividades na praia não interfiram em sua sobrevivência. Não deixe objetos que possam dificultar o caminho das tartarugas, e se uma delas parecer estar em perigo, entre em contato com as autoridades competentes. Por fim, mantenha distância de tartarugas adultas e filhotes, evitando qualquer interferência que possa impactar negativamente sua jornada ao mar.",
                fotosAnimais = new List<Animais>
                {
                    new Animais
                    {
                        caminhoImagem="~/images/Animais/Tartaruga.jpg"
                    },
                    new Animais
                    {
                        caminhoImagem="~/images/Animais/Tartaruga2.jpg"
                    },
                    new Animais
                    {
                        caminhoImagem="~/images/Animais/Tartaruga3.jpg"
                    },

                }
            };
            return View(tartaruga);
        }
        public IActionResult Cavalo()
        {
            var cavalo = new Animais
            {
                Nome = "Cavalo Marinho",
                NomeCientifico = "Hippocampus",
                Descricao = "O cavalo-marinho, pertencente ao gênero Hippocampus, é um peixe marinho de pequeno porte, caracterizado pela sua aparência única, que lembra a forma de um cavalo. Com corpo coberto por placas ósseas, eles variam em cores e tamanhos, dependendo da espécie e do ambiente. Habitam águas costeiras rasas de regiões tropicais e temperadas ao redor do mundo, especialmente em áreas com vegetação marinha densa, como manguezais, recifes de corais e pradarias submarinas. São mestres da camuflagem, utilizando suas caudas preênseis para se prender a plantas e corais, e mudando de cor para se esconder de predadores.",
                Cuidados = "Os cavalos-marinhos enfrentam várias ameaças devido à perda de habitat, poluição e captura excessiva para uso em aquários e na medicina tradicional. Para sua conservação, é fundamental proteger seus habitats naturais, como recifes de corais e áreas com vegetação marinha, que são essenciais para sua sobrevivência e reprodução. Evitar práticas de pesca destrutivas, como a pesca de arrasto, que destrói o fundo do mar, é vital para preservar as áreas onde eles vivem. Além disso, a redução da poluição marinha, principalmente a causada por plásticos, é crucial, pois esses materiais podem danificar o habitat dos cavalos-marinhos e impactar diretamente sua saúde. Também é importante apoiar práticas de pesca sustentável e regulamentações que proíbam a captura indiscriminada desses animais para comércio. Quando observados na natureza, devem ser respeitados e não retirados de seu ambiente natural.",
                fotosAnimais = new List<Animais>
                {
                    new Animais
                    {
                        caminhoImagem="~/images/Animais/CavaloMarinho.jpg"
                    },
                    new Animais
                    {
                        caminhoImagem="~/images/Animais/CavaloMarinho2.jpg"
                    },
                    new Animais
                    {
                        caminhoImagem="~/images/Animais/CavaloMarinho3.jpg"
                    },

                }
            };
            return View(cavalo);
        }
        public IActionResult Caravela()
        {
            var caravela = new Animais
            {
                Nome = "Caravela Portuguesa",
                NomeCientifico = "Physalia physalis",
                Descricao = "A caravela-portuguesa (Physalia physalis) é uma espécie marinha que, apesar de sua aparência semelhante a uma água-viva, na verdade é um organismo colonial composto por vários indivíduos especializados, conhecidos como zooides, que trabalham em conjunto para sobreviver. Ela é facilmente reconhecível por seu flutuador em forma de bolha, que fica na superfície da água e pode atingir até 30 cm de comprimento, com cores que variam entre azul, roxo e rosa. Abaixo da superfície, estendem-se tentáculos extremamente longos, que podem alcançar até 50 metros, equipados com células urticantes que liberam toxinas para capturar pequenos peixes e plâncton, sua principal fonte de alimento. A caravela-portuguesa é amplamente distribuída nos oceanos tropicais e subtropicais.",
                Cuidados = "Para evitar acidentes com a caravela-portuguesa, é essencial tomar precauções quando nadar em áreas onde ela é comum, especialmente em regiões tropicais e subtropicais. Durante surtos em que essas criaturas são levadas para a costa, as praias podem ser fechadas por segurança. Mesmo quando mortas, as toxinas presentes em seus tentáculos podem continuar a ser liberadas, por isso, nunca toque em uma caravela, viva ou não. Caso ocorra contato, é importante sair imediatamente da água e lavar a área afetada com água do mar (nunca com água doce) e remover com cuidado os tentáculos remanescentes com uma pinça ou objeto semelhante. Compressas quentes podem ajudar a aliviar a dor, e o atendimento médico é recomendado, principalmente se houver reações graves, como dificuldade para respirar ou dor intensa.",
                fotosAnimais = new List<Animais>
                {
                    new Animais
                    {
                        caminhoImagem="~/images/Animais/CaravelaPortuguesa.jpg"
                    },
                    new Animais
                    {
                        caminhoImagem="~/images/Animais/CaravelaPortuguesa2.jpg"
                    },
                    new Animais
                    {
                        caminhoImagem="~/images/Animais/CaravelaPortuguesa3.jpg"
                    },

                }
            };
            return View(caravela);
        }
    }
}

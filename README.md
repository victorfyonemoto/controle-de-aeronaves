# Algoritmo para controle de abastecimento de aeronaves

<p align="center">
  <img alt="projeto DevLinks" src="./controledeaeronaves.png" width="60%">
</p>

## Neste repositório está a minha solução para a criação de um algoritmo de controle de abastecimento de aeronaves seguindo os seguintes critérios e instruções:

Um Boeing 737-800 por exemplo, pode gastar em média 3,6 litros por km de voo. O gasto de uma aeronave de grande porte é tanto que a medição muda de eixo, sendo utilizado litros por quilômetros, diferente do que estamos acostumados a calcular nos automóveis que é quilômetros por litro. Um trecho de 1100km, como por exemplo de São Paulo a Porto Alegre precisaria de 3960 litros, sem contar a margem de segurança e outos fatores que podem alterar a quantidade.

Para criação do algoritmo foram considerados os seguintes dados para o calculo desejado, são eles:

- Média da aeronave em litros por quilômetros
- Capacidade máxima em litros do tanque
- Quantidade de quilômetros do trecho planejado
- Quantidade de quilômetros do trecho alternativo
- Quantidade de combustível já na aeronave
    
O algoritmo contém as seguintes regras:

- Uma aeronave deve sempre ser abastecida considerando o trecho planejado + trecho alternativo, visto que se o aeroporto de destino estiver com problemas, uma rota alternativa deverá ser realizada.
- Além do trecho total, uma margem de 30% de combustível deverá ser adicionada, para que qualquer emergência a aeronave esteja com uma quantidade segura de combustível.
- Se o trecho total mais a margem de segurança, extrapolarem a capacidade máxima de combustível do tanque da aeronave, uma mensagem de alerta deve ser mostrada na tela, dizendo a seguinte mensagem “Voo Reprovado, reveja seu planejamento.”. Caso contrário mostrar "Voo Aprovado, bom voo!"
- Se o tanque suportar o trecho total mais a margem de segurança o algoritmo deverá mostrar na tela o valor do trecho principal, trecho alternativo, total do trecho com a margem de segurança, quantidade de combustível necessária para o trecho e quantidade necessária de abastecimento.
- Sub-rotinas para isolar as lógicas do algoritmo

Sequencia lógica do algoritmo:

- Leitura dos dados
- Somar trecho planejado + trecho alternativo
- Adicionar margem de segurança
- Calcular a quantidade de combustível
- Verificar se a quantidade de combustível comporta na aeronave
- Verificar o quanto de combustível será necessário para abastecimento.
- Mostrar resultados.

O algoritmo foi desenvolvido e testado no VisuAlg 3.0 utilizando-se de pseudocódigo.

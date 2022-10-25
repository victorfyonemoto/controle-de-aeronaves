Algoritmo "Controle de Abastacimento de Aeronaves"
// Descrição   : Algoritmo para controle de abastecimento das aeronaves antes dos voos.
// Autor(a)    : Victor Ferreira Yonemoto

Var
// Seção de Declarações das variáveis 
media, capacidade, trechoP, trechoA, qtdTanque: real
trechoT, combustivelT, combustivelTM, qtdAbastecer: real

opcao: inteiro

//Seção dos Procedimentos
Procedimento menu()

Inicio
escreval("========================================================")
escreval("|        Controle de Abastecimento de Aeronaves        |")
escreval("========================================================")
escreval("Informe a média da aeronave em litros por quilômetros")
leia(media)
escreval("Informe a capacidade máxima em litros do tanque")
leia(capacidade)
escreval("Informe a quantidade de quilômetros do trecho planejado")
leia(trechoP)
escreval("Informe a quantidade de quilômetros do trecho alternativo")
leia(trechoA)
escreval("Informe a quantidade de combustível já na aeronave")
leia(qtdTanque)
LimpaTela
controle()
repetir()
FimProcedimento

Procedimento controle()
Inicio

trechoT <- trechoP + trechoA

combustivelT <- media * trechoT

combustivelTM <- combustivelT + (combustivelT * 30 / 100)

qtdAbastecer <- combustivelTM - qtdTanque

Se capacidade >= combustivelTM entao
   escreval("Voo Aprovado, bom voo!")
   escreval("Dados do voo :")
   escreval("Considerando o trecho planejado de", trechoP, " e o trecho alternativo de", trechoA)
   escreval("O trecho total será de :", trechoT, "Km")
   escreval("Considerando que a aeronave possui em seu tanque", qtdTanque," litros, deverá ser abastecido pelo menos:", qtdAbastecer, " litros para realizar o trecho total sem considerar a margem de segurança")
   escreval("Considerando a quantidade de combustível mínima necessária para o trecho total, a aeronave com a margem de segurança deverá possuir em seu tanque:", combustivelTM, " litros")
   escreval("Para que o tanque esteja cheio deverão ser adicionados:", (capacidade - qtdTanque), " litros")
senao
   escreval("Voo Reprovado, reveja seu planejamento.")
Fimse

escreval("========================================================")

FimProcedimento

Procedimento repetir()
Inicio
escreval("Gostaria de realizar um novo cálculo de controle ?")
escreval("[1] - Realizar controle")
escreval("[2] - Sair")
leia(opcao)

Escolha opcao
    caso 1
        LimpaTela
        menu()
        repetir()
    caso 2
        escreval("Sair")
        Fimalgoritmo
    OutroCaso
        LimpaTela
        escreval("Digite um valor válido")
        repetir()
Fimescolha
FimProcedimento

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
menu()
Fimalgoritmo

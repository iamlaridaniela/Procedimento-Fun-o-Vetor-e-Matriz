programa {
  funcao inicio() {
  
   
  }
}
algoritmo "Cadastro_Alunos"

// Função para calcular a média de um aluno
funcao calcularMedia(notas: vetor[1..4] de real): real
var
  soma, media: real
  i: inteiro
inicio
  soma <- 0
  para i de 1 ate 4 faca
    soma <- soma + notas[i]
  fimpara
  media <- soma / 4
  retorne media
fimfuncao

// Função para encontrar a maior nota de uma disciplina
funcao encontrarMaiorNota(matrizNotas: matriz[1..3, 1..4] de real, disciplina: inteiro): real
var
  maiorNota: real
  i: inteiro
inicio
  maiorNota <- matrizNotas[1, disciplina]
  para i de 2 ate 3 faca
    se matrizNotas[i, disciplina] > maiorNota entao
      maiorNota <- matrizNotas[i, disciplina]
    fimse
  fimpara
  retorne maiorNota
fimfuncao

// Procedimento para exibir o relatório
procedimento exibirRelatorio(nomes: vetor[1..3] de caractere, medias: vetor[1..3] de real, matrizNotas: matriz[1..3, 1..4] de real)
var
  i, j: inteiro
inicio
  escreval("Relatório de Notas")
  escreval("------------------")
  para i de 1 ate 3 faca
    escreval("Aluno: ", nomes[i])
    escreval("Média: ", medias[i])
    escreva("Notas: ")
    para j de 1 ate 4 faca
      escreva(matrizNotas[i, j], " ")
    fimpara
    escreval("")
    escreval("")
  fimpara

  escreval("Maiores notas por disciplina:")
  para j de 1 ate 4 faca
    escreval("Disciplina ", j, ": ", encontrarMaiorNota(matrizNotas, j))
  fimpara
fimprocedimento

var
  nomes: vetor[1..3] de caractere
  notas: vetor[1..4] de real
  medias: vetor[1..3] de real
  matrizNotas: matriz[1..3, 1..4] de real
  i, j: inteiro
inicio
  // Cadastro dos alunos e notas
  para i de 1 ate 3 faca
    escreval("Digite o nome do aluno ", i, ":")
    leia(nomes[i])
    escreval("Digite as 4 notas do aluno ", i, ":")
    para j de 1 ate 4 faca
      leia(matrizNotas[i, j])
    fimpara
    medias[i] <- calcularMedia(matrizNotas[i])
  fimpara

  // Exibição do relatório
  exibirRelatorio(nomes, medias, matrizNotas)
fimalgoritmo

  }
}

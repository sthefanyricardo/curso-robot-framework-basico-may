*** Settings ***
Documentation  Tarefa desafio - Usando estruturas lógicas para verificar números em uma lista.
*** Variables ***
@{NUMEROS}  1  2  3  4  5  6  7  8  9  10  11  12  13  14  15  16  17  18  19  20  21  22  23  24  25  26  27  28  29  30

*** Test Cases ***
Tarefa 01 - Verificar os números na lista
  [Documentation]  Teste que verifica a impressão dos números da lista e se são 5, 10 ou nenhum dos dois.
  [Tags]  task01 estruturas_logicas
  Percorrer lista e verificar números

*** Keywords ***
Percorrer lista e verificar números
  [Documentation]  Keyword responsável por percorrer a lista de números e verificar se o número é 5, 10 ou nenhum dos dois.
  Log To Console  \n
  FOR  ${ITEM}  IN  @{NUMEROS}
    IF  ${ITEM} == 5 or ${ITEM} == 10
      Log  Eu sou o número ${ITEM}!
    ELSE
      Log  Eu não sou o número 5 e nem o 10!
    END
  END
  Log To Console  \n
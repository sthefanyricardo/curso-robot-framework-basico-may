*** Settings ***
Documentation  Exemplos de manipulação de variáveis do tipo Lista.

*** Variables ***
#Tipo Lista (arrays) - separar itens com espaço duplo
@{MESES_ANO}  janeiro  fevereiro  março  abril  maio  junho  julho  agosto  setembro  outubro  novembro  dezembro

*** Test Cases ***
Tarefa 01 - Listar os meses do ano
  [Documentation]  Teste que verifica a impressão dos meses do ano no console.
  [Tags]  task01  listar_meses
  Imprimir meses do ano no console

*** Keywords ***
Imprimir meses do ano no console
  [Documentation]  Keyword responsável por imprimir cada mês do ano no console.
  # Lendo e imprimindo no console, um item por vez da Lista
  Log To Console  \nPrimeiro mês do ano: ${MESES_ANO[0]}
  Log To Console  Segundo mês do ano: ${MESES_ANO[1]}
  Log To Console  Terceiro mês do ano: ${MESES_ANO[2]}
  Log To Console  Quarto mês do ano: ${MESES_ANO[3]}
  Log To Console  Quinto mês do ano: ${MESES_ANO[4]}
  Log To Console  Sexto mês do ano: ${MESES_ANO[5]}
  Log To Console  Sétimo mês do ano: ${MESES_ANO[6]}
  Log To Console  Oitavo mês do ano: ${MESES_ANO[7]}
  Log To Console  Nono mês do ano: ${MESES_ANO[8]}
  Log To Console  Décimo mês do ano: ${MESES_ANO[9]}
  Log To Console  Décimo primeiro mês do ano: ${MESES_ANO[10]}
  Log To Console  Décimo segundo mês do ano: ${MESES_ANO[11]}\n
*** Settings ***
Documentation  Exemplos de manipulação de variáveis do tipo Dicionário.

*** Variables ***
&{MESES_DIAS_2025}  Janeiro=31  Fevereiro=28  Março=31  Abril=30  Maio=31  Junho=30  Julho=31  Agosto=31  Setembro=30  Outubro=31  Novembro=30  Dezembro=31

*** Test Cases ***
Tarefa 03 - Listar os meses do ano
  [Documentation]  Teste que verifica a impressão dos meses do ano e a quantidade de dias no console.
  [Tags]  task03 listar_dias_e_meses
  Imprimir meses do ano e a quantidade de dias no console

*** Keywords ***
Imprimir meses do ano e a quantidade de dias no console
  [Documentation]  Keyword responsável por imprimir cada mês do ano e a sua respectiva quantidade de dias no console.
  Log To Console  \n
  FOR  ${CHAVE}  ${VALUE}  IN  &{MESES_DIAS_2025}
    Log To Console  Mês: ${CHAVE} - Quantidade de dias: ${VALUE}
  END
  Log To Console  \n
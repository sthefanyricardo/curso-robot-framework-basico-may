*** Settings ***
Documentation  Exemplo de uso de variáveis como argumentos (parâmetros de entrada) em Keywords
Library  String

*** Variables ***
&{DADOS_PESSOA}  nome=Sthefany  sobrenome=Ricardo

*** Test Cases ***
Tarefa 03 - Uso de argumentos em Keywords
  [Documentation]  Teste que verifica a criação de um email customizado com base nos dados de uma pessoa e imprime o email criado no console.
  [Tags]  task03  argumentos_keywords
  ${EMAIL_PERSONALIZADO}  Criar email customizado  ${DADOS_PESSOA.nome}  ${DADOS_PESSOA.sobrenome}
  Log To Console  \n\n${EMAIL_PERSONALIZADO}\n

*** Keywords ***
Criar email customizado
  [Documentation]  Keyword responsável por criar um email customizado com base nos dados de uma pessoa.
  [Arguments]  ${NOME_PESSOA}  ${SOBRENOME_PESSOA}
  ${PALAVRA_ALEATORIA}  Generate Random String  5  [LETTERS][NUMBERS]
  ${EMAIL_PESSOA}  Catenate  ${NOME_PESSOA}${SOBRENOME_PESSOA}${PALAVRA_ALEATORIA}@testerobot.com
  RETURN  ${EMAIL_PESSOA}
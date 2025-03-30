*** Settings ***
Documentation  Suíte de exmeplo didático para exemplificar o uso de LOGs nos testes
...  Os LOGs são de grande utilidade, faça LOGs para analisar como seu teste está sendo executado nas entrelinhas
...  Os LOGs te ajudam a achar falhas na automação dos seus testes
...  Use LOGs sem moderação!!
Library  SeleniumLibrary

*** Variables ***
${BROWSER}  chrome
${HEADLESS}  ${False}
@{FRUTAS}  maça  banana  uva  abacaxi

*** Test Cases ***
Caso de teste exemplo 01
  Usando LOG para mensagens
  Usando LOG Console
  Usando screen shots

*** Keywords ***
Usando LOG para mensagens
  Log  Minha mensagem de LOG
  ${VAR}  Set Variable  variável qualquer
  Log  Posso logar uma ${VAR} no meio de um log

Usando LOG Console
  Log To Console  Posso logar na saída do console
  Log Many  Posso logar minha lista completa @{FRUTAS}
  Log  Posso logar somente itens da minha lista ${FRUTAS[0]} - ${FRUTAS[1]}

Usando screen shots
  Log  Nos testes web, podemos logar Screenshot com a SeleniumLibrary
  IF  '${HEADLESS}' == 'True' or '${HEADLESS}' == 'true'
    Open Browser  http://www.robotizandotestes.blogspot.com.br  browser=${BROWSER}  options=add_argument("--headless=new")
  ELSE
    Open Browser  http://www.robotizandotestes.blogspot.com.br  browser=${BROWSER}
  END
  Maximize Browser Window
  Capture Page Screenshot  nome_do_meuscreenshot.png
  Close Browser
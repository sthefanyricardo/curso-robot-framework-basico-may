*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Abrir o navegador
  [Documentation]  Abre o navegador escolhido
  Open Browser  browser=chrome  options=add_experimental_option("detach", True)

Fechar o navegador
  [Documentation]  Fecha o navegador escolhido
  Close Browser
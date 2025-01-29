*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}  Chrome
${URL_AMAZON}  https://www.amazon.com.br/
${MENU_CATEGORIA_ELETRONICOS}  //a[contains(text(),'Eletrônicos')]

*** Keywords ***
Abrir o navegador
  [Documentation]  Keywor responsável por abrir o navegador escolhido
  Open Browser  browser=chrome  options=add_experimental_option("detach", True)
  Maximize Browser Window

Fechar o navegador
  [Documentation]  Keywor responsável por fechar o navegador escolhido
  Close Browser

Acessar a home page do site Amazon.com.br
  [Documentation]  Keywor responsável por acessar a home page do site Amazon
  Go To  url=${URL_AMAZON}
  Wait Until Element Is Visible  ${MENU_CATEGORIA_ELETRONICOS}
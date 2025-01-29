*** Settings ***
Documentation  Este é um arquivo de recursos que contém as keywords lógicas que realizam as ações de teste no site Amazon
...  Autora:  Sthefany Albuquerque Ricardo
...  Data:  29/01/2025
Library  SeleniumLibrary

*** Variables ***
${BROWSER}  Chrome
${URL_AMAZON}  https://www.amazon.com.br/
${MENU_CATEGORIA_ELETRONICOS}  //a[contains(text(),'Eletrônicos')]
${TITULO_PAGINA_ELETRONICOS}  //h2[.//span[text()='Eletrônicos e Tecnologia']]
${SUBCATEGORIA_COMPUTADORES_E_INFORMATICA}  //li[@class='a-carousel-card dcl-carousel-element']//div[@class='a-cardui-footer dcl-card-footer']
${CAMPO_PESQUISA}  twotabsearchtextbox
${BTN_CAMPO_PESQUISA}  nav-search-submit-button

*** keywords ***
Abrir o navegador
  [Documentation]  keyword responsável por abrir o navegador escolhido
  Open Browser  browser=chrome  options=add_experimental_option("detach", True)
  Maximize Browser Window

Fechar o navegador
  [Documentation]  keyword responsável por fechar o navegador escolhido
  Capture Page Screenshot
  Close Browser

Acessar a home page do site Amazon.com.br
  [Documentation]  keyword responsável por acessar a home page do site Amazon
  Go To  url=${URL_AMAZON}
  Wait Until Element Is Visible  locator=${MENU_CATEGORIA_ELETRONICOS}

Entrar no menu "Eletrônicos"
  [Documentation]  keyword responsável por acessar a categoria Eletrônicos no menu da home page do site Amazon
  Click Element  locator=${MENU_CATEGORIA_ELETRONICOS}

Verificar se aparece a frase "${TEXTO_TITULO_PAGINA_ELETRONICOS}"
  [Documentation]  keyword responsável por verificar se aparece a frase "Eletrônicos e Tecnologia" na página de Eletrônicos
  Wait Until Page Contains  text=${TEXTO_TITULO_PAGINA_ELETRONICOS}
  Wait Until Element Is Visible  locator=${TITULO_PAGINA_ELETRONICOS}

Verificar se o título da página fica "${TITULO_PAGINA}"
  [Documentation]  keyword responsável por verificar se o título da página atual é "Eletrônicos e Tecnologia | Amazon.com.br"
  Title Should Be  title=${TITULO_PAGINA}

Verificar se aparece a categoria "${NOME_CATEGORIA}"
  [Documentation]  keyword responsável por verificar se aparece a categoria "Computadores e Informática" na página de Eletrônicos
  Element Should Be Visible  locator=${SUBCATEGORIA_COMPUTADORES_E_INFORMATICA}//span[text()='${NOME_CATEGORIA}']

Digitar o nome de produto "${NOME_PRODUTO}" no campo de pesquisa
  [Documentation]  keyword responsável por digitar o nome do produto especificado no campo de pesquisa do site Amazon
  Click Element  locator=${CAMPO_PESQUISA}
  Input Text  locator=${CAMPO_PESQUISA}  text=${NOME_PRODUTO}

Clicar no botão de pesquisa
  [Documentation]  keyword responsável por clicar no botão de pesquisa do site Amazon
  Click Element  locator=${BTN_CAMPO_PESQUISA}

Verificar o resultado da pesquisa se está listando o produto "${NOME_PRODUTO}"
  [Documentation]  keyword responsável por verificar se o produto pesquisado foi listado na página de resultados da pesquisa
  Wait Until Element Is Visible  locator=//*[text()='${NOME_PRODUTO}']
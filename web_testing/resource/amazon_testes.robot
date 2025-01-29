*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}  Chrome
${URL_AMAZON}  https://www.amazon.com.br/
${MENU_CATEGORIA_ELETRONICOS}  //a[contains(text(),'Eletrônicos')]
${TEXTO_TITULO_PAGINA_ELETRONICOS}  Eletrônicos e Tecnologia
${TITULO_PAGINA_ELETRONICOS}  //h2[.//span[text()='Eletrônicos e Tecnologia']]
${SUBCATEGORIA_COMPUTADORES_E_INFORMATICA}  //a[contains(text(),'Computadores e Informática')]

*** keywords ***
Abrir o navegador
  [Documentation]  keyword responsável por abrir o navegador escolhido
  Open Browser  browser=chrome  options=add_experimental_option("detach", True)
  Maximize Browser Window

Fechar o navegador
  [Documentation]  keyword responsável por fechar o navegador escolhido
  Close Browser

Acessar a home page do site Amazon.com.br
  [Documentation]  keyword responsável por acessar a home page do site Amazon
  Go To  url=${URL_AMAZON}
  Wait Until Element Is Visible  locator=${MENU_CATEGORIA_ELETRONICOS}

Entrar no menu "Eletrônicos"
  [Documentation]  keyword responsável por acessar a categoria Eletrônicos no menu da home page do site Amazon
  Click Element  locator=${MENU_CATEGORIA_ELETRONICOS}

Verificar se o título da página fica "${TITULO_PAGINA}"
  [Documentation]  keyword responsável por verificar se o título da página atual é "Eletrônicos e Tecnologia | Amazon.com.br"
  Title Should Be  title=${TITULO_PAGINA}

Verificar se aparece a frase "Eletrônicos e Tecnologia"
  [Documentation]  keyword responsável por verificar se aparece a frase "Eletrônicos e Tecnologia" na página de Eletrônicos
  Wait Until Page Contains  text=${TEXTO_TITULO_PAGINA_ELETRONICOS}
  Wait Until Element Is Visible  locator=${TITULO_PAGINA_ELETRONICOS}
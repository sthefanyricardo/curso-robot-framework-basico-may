*** Settings ***
Documentation  Este é um arquivo de recursos que contém as keywords lógicas que realizam as ações de teste no site Amazon
...  Autora:  Sthefany Albuquerque Ricardo
...  Data:  29/01/2025
Library  SeleniumLibrary

*** Variables ***
${BROWSER}  chrome
${URL_AMAZON}  https://www.amazon.com.br/
${MENU_CATEGORIAS}  //div[@id='nav-main']
${SUBCATEGORIA_COMPUTADORES_E_INFORMATICA}  //li[@class='a-carousel-card dcl-carousel-element']//div[@class='a-cardui-footer dcl-card-footer']
${TEXTO_ADICIONADO_CARRINHO}  //h1[contains(text(),'Adicionado ao carrinho')]
${BTN_ADICIONAR_CARRINHO}  //span[@id='sw-gtc']//a
${BTN_REMOVER_CARRINHO}  //input[@type='submit' and @value='Excluir']
${MENSAGEM_EXCLUSAO_PRODUTO}  //span[@class='a-size-base sc-list-item-removed-msg-text-delete'][contains(., 'foi removido de Carrinho de compras')]
${MENSAGEM_CARRINHO_VAZIO}  //h3[@class='a-size-large a-spacing-top-base sc-your-amazon-cart-is-empty'][contains(., 'Seu carrinho da Amazon está vazio')]
${TEXTO_GARANTIA_ESTENDIDA_PRODUTO}  //span[@id='attach-warranty-displayTitle' and contains(text(), 'Garantia Estendida de 12 meses')]
${BTN_GARANTIA_ESTENDIDA_PRODUTO}  //input[@class='a-button-input' and @type='submit' and @aria-labelledby='attachSiNoCoverage-announce']

*** keywords ***
###  KEYWORDS SETUP E TEARDOWN ###
Abrir o navegador
  [Documentation]  keyword responsável por abrir o navegador escolhido
  Open Browser  browser=chrome  options=add_experimental_option("detach", True)
  Maximize Browser Window

Fechar o navegador
  [Documentation]  keyword responsável por fechar o navegador escolhido
  Capture Page Screenshot
  Close Browser

###  KEYWORDS TESTE PROCEDURAIS ###
Acessar a home page do site Amazon.com.br
  [Documentation]  keyword responsável por acessar a home page do site Amazon
  Go To  url=${URL_AMAZON}
  Wait Until Element Is Visible  locator=${MENU_CATEGORIAS}

Entrar no menu "${NOME_CATEGORIA_MENU}"
  [Documentation]  keyword responsável por acessar a categoria Eletrônicos no menu da home page do site Amazon
  Click Element  locator=//a[contains(text(),'${NOME_CATEGORIA_MENU}')]

Verificar se aparece a frase "${TITULO_PAGINA_ELETRONICOS}"
  [Documentation]  keyword responsável por verificar se aparece a frase "Eletrônicos e Tecnologia" na página de Eletrônicos
  Wait Until Page Contains  text=${TITULO_PAGINA_ELETRONICOS}
  Wait Until Element Is Visible  locator=//span[text()='${TITULO_PAGINA_ELETRONICOS}']

Verificar se o título da página fica "${TITULO_PAGINA}"
  [Documentation]  keyword responsável por verificar se o título da página atual é "Eletrônicos e Tecnologia | Amazon.com.br"
  Title Should Be  title=${TITULO_PAGINA}

Verificar se aparece a categoria "${NOME_CATEGORIA}"
  [Documentation]  keyword responsável por verificar se aparece a categoria "Computadores e Informática" na página de Eletrônicos
  Element Should Be Visible  locator=${SUBCATEGORIA_COMPUTADORES_E_INFORMATICA}//span[text()='${NOME_CATEGORIA}']

Digitar o nome de produto "${NOME_PRODUTO}" no campo de pesquisa
  [Documentation]  keyword responsável por digitar o nome do produto especificado no campo de pesquisa do site Amazon
  Click Element  id=twotabsearchtextbox
  Input Text  id=twotabsearchtextbox  text=${NOME_PRODUTO}

Clicar no botão de pesquisa
  [Documentation]  keyword responsável por clicar no botão de pesquisa do site Amazon
  Click Element  id=nav-search-submit-button

Verificar o resultado da pesquisa se está listando o produto "${NOME_PRODUTO}"
  [Documentation]  keyword responsável por verificar se o produto pesquisado foi listado na página de resultados da pesquisa
  Wait Until Element Is Visible  locator=//h2/span[text()='${NOME_PRODUTO}']

### KEYWORDS DESAFIOS DE TESTE ###
Adicionar o produto "${NOME_PRODUTO}" no carrinho
  [Documentation]  keyword responsável por adicionar o produto "Xbox Series S" no carrinho de compras
  Click Element  locator=//h2/span[text()='${NOME_PRODUTO}']
  Verificar se o título da página fica "Xbox Series S : Amazon.com.br: Games e Consoles"
  Wait Until Element Is Visible  locator=add-to-cart-button
  Click Element  locator=add-to-cart-button
  ${STATUS}  Run Keyword And Return Status  Element Should Be Visible  locator=${TEXTO_GARANTIA_ESTENDIDA_PRODUTO}
  Run Keyword If  '${STATUS}' == 'True'  Click Element  locator=${BTN_GARANTIA_ESTENDIDA_PRODUTO}
  Wait Until Element Is Visible  locator=${TEXTO_ADICIONADO_CARRINHO}

Verificar se o produto "${NOME_PRODUTO}" foi adicionado com sucesso
  [Documentation]  keyword responsável por verificar se o produto "Xbox Series S" foi adicionado com sucesso no carrinho de compras
  Click Element  locator=${BTN_ADICIONAR_CARRINHO}
  Verificar se o título da página fica "Carrinho de compras da Amazon.com"
  Wait Until Element Is Visible  locator=//span[contains(@class, 'a-truncate-cut') and contains(text(), '${NOME_PRODUTO}')]
  
Remover o produto "${NOME_PRODUTO}" do carrinho
  [Documentation]  keyword responsável por remover o produto "Xbox Series S" do carrinho de compras
  Click Element  locator=${BTN_REMOVER_CARRINHO}

Verificar se o carrinho fica vazio
  [Documentation]  keyword responsável por verificar se o carrinho de compras está vazio
  Page Should Contain Element  locator=${MENSAGEM_EXCLUSAO_PRODUTO}
  Reload Page
  Wait Until Element Is Visible  locator=${MENSAGEM_CARRINHO_VAZIO}

###  KEYWORDS TESTE GHERKIN  BDD ###
Dado que estou na home page da Amazon.com.br
  [Documentation]  keyword responsável por chamar as keywords para acessar a home page do site Amazon
  ...  e verificar o título da página
  Acessar a home page do site Amazon.com.br
  Verificar se o título da página fica "Amazon.com.br | Tudo pra você, de A a Z."

Quando acessar o menu "${NOME_CATEGORIA}"
  [Documentation]  keyword responsável por chamar a keyword para acessar a categoria Eletrônicos no menu da home page do site Amazon
  Entrar no menu "${NOME_CATEGORIA}"

Então o título da página deve ficar "${TITULO_PAGINA}"
  [Documentation]  keyword responsável por chamar a keyword que verificar o título atual da página
  Verificar se o título da página fica "${TITULO_PAGINA}"

E o texto "${TEXTO_TITULO_PAGINA_ELETRONICOS}" deve ser exibido na página
  [Documentation]  keyword responsável por chamar a keyword que verificar se aparece a frase "Eletrônicos e Tecnologia" na página de Eletrônicos
    Verificar se aparece a frase "${TEXTO_TITULO_PAGINA_ELETRONICOS}"

Quando pesquisar pelo produto "${NOME_PRODUTO}"
  [Documentation]  keyword responsável por chamar as keywords para pesquisar pelo produto "Xbox Series S"
  Digitar o nome de produto "${NOME_PRODUTO}" no campo de pesquisa
  Clicar no botão de pesquisa

E um produto da linha "${NOME_PRODUTO}" deve ser mostrado na página
  [Documentation]  keyword responsável por chamar a keyword que verificar se o produto pesquisado foi listado na página de resultados da pesquisa
  Verificar o resultado da pesquisa se está listando o produto "${NOME_PRODUTO}"

### KEYWORDS DESAFIOS DE TESTE ###
Quando adicionar o produto "${NOME_PRODUTO}" no carrinho
  [Documentation]  keyword responsável por chamar as keywords para adicionar o produto "Xbox Series S" no carrinho de compras
  Digitar o nome de produto "${NOME_PRODUTO}" no campo de pesquisa
  Clicar no botão de pesquisa
  Verificar o resultado da pesquisa se está listando o produto "${NOME_PRODUTO}"
  Adicionar o produto "${NOME_PRODUTO}" no carrinho

Então o produto "${NOME_PRODUTO}" deve ser mostrado no carrinho
  [Documentation]  keyword responsável por chamar a keyword que verificar se o produto "Xbox Series S" foi adicionado com sucesso no carrinho de compras
  Verificar se o produto "${NOME_PRODUTO}" foi adicionado com sucesso

E existe o produto "${NOME_PRODUTO}" no carrinho
  [Documentation]  keyword responsável por chamar a keyword que verificar se o produto "Xbox Series S" foi adicionado com sucesso no carrinho de compras
  Digitar o nome de produto "${NOME_PRODUTO}" no campo de pesquisa
  Clicar no botão de pesquisa
  Verificar o resultado da pesquisa se está listando o produto "${NOME_PRODUTO}"
  Adicionar o produto "${NOME_PRODUTO}" no carrinho
  Verificar se o produto "${NOME_PRODUTO}" foi adicionado com sucesso

Quando remover o produto "${NOME_PRODUTO}" do carrinho
  [Documentation]  keyword responsável por chamar as keywords para remover o produto "Xbox Series S" do carrinho de compras
  Remover o produto "${NOME_PRODUTO}" do carrinho

Então o carrinho deve ficar vazio
  [Documentation]  keyword responsável por chamar a keyword que verificar se o carrinho de compras está vazio
  Verificar se o carrinho fica vazio
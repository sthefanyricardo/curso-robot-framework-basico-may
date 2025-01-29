*** Settings ***
Documentation  Esta suíte de testes verifica as funcionalidades do site Amazon.com.br - 
...  Exempos de Casos de Teste - Gherkin (BDD)
...  Autora:  Sthefany Albuquerque Ricardo
...  Data:  28/01/2025
Resource  ../resource/kws_amazon.robot
Test Setup  Abrir o navegador
Test Teardown  Fechar o navegador

*** Test Cases ***
Caso de Teste 01 - Acesso ao menu "Eletrônicos"
  [Documentation]  Teste que verifica a busca de categorias no principal menu do site da Amazom e verifica a subcategoria "Computadores e 
  ...  Informática" na página de Eletrônicos
  [Tags]  CT01  menus  categorias
  Dado que estou na home page da Amazon.com.br
  Quando acessar o menu "Eletrônicos"
  Então o título da página deve ficar "Eletrônicos e Tecnologia | Amazon.com.br"
  E o texto "Eletrônicos e Tecnologia" deve ser exibido na página
  E a categoria "Computadores e Informática" deve ser exibida na página

Caso de Teste 02 - Pesquisa de um Produto
  [Documentation]  Teste que verifica a busca de produto no site da Amazon e verifica se o produto pesquisado foi listado
  [Tags]  CT02  busca_produto  lista_produto
  Dado que estou na home page da Amazon.com.br
  Quando pesquisar pelo produto "Xbox Series S"
	Então o título da página deve ficar "Amazon.com.br : Xbox Series S"
  E um produto da linha "Xbox Series S" deve ser mostrado na página
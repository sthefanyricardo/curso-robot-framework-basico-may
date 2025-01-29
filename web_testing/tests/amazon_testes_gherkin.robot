*** Settings ***
Documentation  Esta suíte de testes verifica as funcionalidades do site Amazon.com.br - 
...  Exempos de Casos de Teste - Gherkin (BDD)
...  Autora:  Sthefany Albuquerque Ricardo
...  Data:  28/01/2025
Resource  ../resource/kws_amazon.robot
Test Setup  Abrir o navegador
Test Teardown  Fechar o navegador

*** Test Cases ***
Caso de Teste 01 - Acesso ao menu "Livros"
  [Documentation]  Teste que verifica a busca de categorias no principal menu do site da Amazom e verifica a subcategoria "Computadores e 
  ...  Informática" na página de Eletrônicos
  [Tags]  CT01  menus  categorias
  Dado que estou na home page da Amazon.com.br
  Quando acessar o menu "Livros"
  Então o título da página deve ficar "Livros | Amazon.com.br"
  E o texto "Loja de Livros" deve ser exibido na página
  E o texto "Os mais vendidos" deve ser exibido na página

Caso de Teste 02 - Pesquisa de um Produto
  [Documentation]  Teste que verifica a busca de produto no site da Amazon e verifica se o produto pesquisado foi listado
  [Tags]  CT02  busca_produto  lista_produto
  Dado que estou na home page da Amazon.com.br
  Quando pesquisar pelo produto "fone de ouvido bluetooth"
	Então o título da página deve ficar "Amazon.com.br : fone de ouvido bluetooth"
  E um produto da linha "fone de ouvido bluetooth" deve ser mostrado na página
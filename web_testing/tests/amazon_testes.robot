*** Settings ***
Documentation  Esta suíte de testes verifica as funcionalidades do site Amazon.com.br - 
...  Exempos de Casos de Teste Procedural
...  Autora:  Sthefany Albuquerque Ricardo
...  Data:  28/01/2025
Resource  ../resource/amazon_testes.robot
Test Setup  Abrir o navegador
Test Teardown  Fechar o navegador

*** Test Cases ***
Caso de Teste 01 - Acesso ao menu "Eletrônicos"
  [Documentation]  Teste que verifica a busca de categorias no principal menu do site da Amazom e verifica a subcategoria "Computadores e 
  ...  Informática" na página de Eletrônicos
  [Tags]  CT01  menus  categorias
  Acessar a home page do site Amazon.com.br
  Entrar no menu "Eletrônicos"
  Verificar se aparece a frase "Eletrônicos e Tecnologia"
  Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
	Verificar se aparece a categoria "Computadores e Informática"

Caso de Teste 02 - Pesquisa de um Produto
  [Documentation]  Teste que verifica a busca de produto no site da Amazon e verifica se o produto pesquisado foi listado
  [Tags]  CT02  busca_produto  lista_produto
  Acessar a home page do site Amazon.com.br
	Digitar o nome de produto "Xbox Series S" no campo de pesquisa
  Clicar no botão de pesquisa
	Verificar o resultado da pesquisa, listando o produto pesquisado
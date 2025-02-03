*** Settings ***
Documentation  Esta suíte de testes verifica as funcionalidades do site Amazon.com.br - 
...  Exempos de Casos de Teste Procedural
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
  Acessar a home page do site Amazon.com.br
  Verificar se o título da página fica "Amazon.com.br | Tudo pra você, de A a Z."
  Entrar no menu "Eletrônicos"
  Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
  Verificar se aparece a frase "Eletrônicos e Tecnologia"
 	Verificar se aparece a categoria "Computadores e Informática"
  Verificar se aparece a categoria "Áudio e Som"

Caso de Teste 02 - Pesquisa de um Produto
  [Documentation]  Teste que verifica a busca de produto no site da Amazon e verifica se o produto pesquisado foi listado
  [Tags]  CT02  busca_produto  lista_produto
  Acessar a home page do site Amazon.com.br
  Verificar se o título da página fica "Amazon.com.br | Tudo pra você, de A a Z."
	Digitar o nome de produto "Xbox Series S" no campo de pesquisa
  Clicar no botão de pesquisa
	Verificar o resultado da pesquisa se está listando o produto "Xbox Series S"

### DESAFIOS DE TESTE###
Caso de Teste 03 - Adicionar Produto no Carrinho
  [Documentation]  Teste que verifica a inclusão de um produto no carrinho de compras do site Amazon
  [Tags]  CT03  adicionar_carrinho
  Acessar a home page do site Amazon.com.br
  Digitar o nome de produto "Xbox Series S" no campo de pesquisa
  Clicar no botão de pesquisa
  Verificar o resultado da pesquisa se está listando o produto "Xbox Series S"
  Adicionar o produto "Xbox Series S" no carrinho
  Verificar se o produto "Xbox Series S" foi adicionado com sucesso

Caso de Teste 04 - Remover Produto do Carrinho
  [Documentation]  Esse teste verifica a remoção de um produto no carrinho de compras do site Amazon
  [Tags]  CT04  remover_carrinho
  Acessar a home page do site Amazon.com.br
  Digitar o nome de produto "Xbox Series S" no campo de pesquisa
  Clicar no botão de pesquisa
  Verificar o resultado da pesquisa se está listando o produto "Xbox Series S"
  Adicionar o produto "Xbox Series S" no carrinho
  Verificar se o produto "Xbox Series S" foi adicionado com sucesso
  Remover o produto "Xbox Series S" do carrinho
  Verificar se o carrinho fica vazio
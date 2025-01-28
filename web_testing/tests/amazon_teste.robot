*** Test Cases ***
Caso de Teste 01 - Acesso ao menu "Eletrônicos"
  [Documentation]  Teste de busca de categorias
  [Tags]  CT01
  Acessar a home page do site Amazon.com.br
  Entrar no menu "Eletrônicos"
	Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
	Verificar se aparece a frase "Eletrônicos e Tecnologia"
	Verificar se aparece a categoria "Computadores e Informática"
  
Caso de Teste 02 - Pesquisa de um Produto
  [Documentation]  Teste de busca de produto
  [Tags]  CT02
  Acessar a home page do site Amazon.com.br
	Digitar o nome de produto "Xbox Series S" no campo de pesquisa
  Clicar no botão de pesquisa
	Verificar o resultado da pesquisa, listando o produto pesquisado
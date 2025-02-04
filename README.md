# Automação de Testes com Robot Framework - Nível Básico

Este repositório contém os arquivos de exemplos e desafio de exercícios, desenvolvidos durante o curso de [Automação de Testes com Robot Framework - Nível Básico da Udemy](https://www.udemy.com/course/automacao-de-testes-com-robot-framework-basico/), ministrado por Mayara "May" Fernandes. 

## 📚 Sobre o Curso

O objetivo do curso é introduzir os participantes ao mundo da automação de testes utilizando o Robot Framework, uma ferramenta de automação de testes open-source, modular e extensível. Durante as aulas, são abordados conceitos básicos, boas práticas e exemplos práticos para automação de testes web.

### Conteúdo do Curso:
- Introdução ao Robot Framework
- Configuração do ambiente de desenvolvimento
- Automação de testes web com SeleniumLibrary
- Trabalhando com variáveis no Robot Framework
- Estrutura do Robot Framework
- Automação de testes de API com RequestsLibrary
- Exemplos práticos e exercícios

---

## 🛠️ Tecnologias Utilizadas

- **Python**: Linguagem de programação base para o Robot Framework.
- **Git e GitHub**: Controle de versão e compartilhamento de código.
- **Visual Studio Code**: IDE utilizada para desenvolvimento.
- **Robot Framework**: Framework de automação de testes.
- **SeleniumLibrary**: Biblioteca para automação de testes web.
- **RequestsLibrary**: Biblioteca para automação de testes de API.

---

## 📁 Conteúdo do Repositório  
1. **Estrutura do Repositório e Descrição das Pastas:**

- **`testes_web/`** → Contém os scripts de automação para testes de interface web utilizando **Robot Framework** com **SeleniumLibrary**.  
  - **`resources/`** → Arquivos auxiliares, como **variáveis, keywords reutilizáveis e configurações de ambiente**, evitando duplicação de código.  
  - **`tests/`** → Casos de teste automatizados escritos em **Robot Framework** (`.robot`), organizados conforme os cenários de teste web.  
  - **`resultados/`** → Logs, relatórios e evidências gerados após a execução dos testes.  

- **`testes_api/`** → Diretório para testes automatizados de APIs REST utilizando **RequestsLibrary**.  
  - **`resources/`** → Arquivos com **headers, endpoints e keywords reutilizáveis** para requisições API.  
  - **`tests/`** → Casos de teste escritos em **Robot Framework** para validar requisições e respostas de APIs.  
  - **`resultados/`** → Logs e relatórios das execuções dos testes de API.  

- **`trabalhando_estruturas/`** → Exemplos e exercícios sobre **estruturas de controle** no **Robot Framework**, incluindo loops, condicionais e manipulação de dados.  
  - **`tests/`** → Arquivos `.robot` com os exercícios práticos.  
  - **`resultados/`** → Logs e relatórios gerados após a execução dos exercícios.  

- **`trabalhando_variaveis_escopos_argumentos/`** → Diretório com **exemplos de uso de variáveis, escopos e passagem de argumentos** em keywords no **Robot Framework**.  
  - **`tests/`** → Arquivos `.robot` demonstrando a aplicação de variáveis e argumentos em diferentes contextos.  
  - **`resultados/`** → Relatórios e logs gerados após a execução dos testes de aprendizado.  

- **`Outros Arquivos Importantes:`**  
  - **`requirements.txt`** → Lista de dependências do projeto para instalação rápida.  
  - **`.gitignore`** → Lista de arquivos e diretórios que devem ser ignorados pelo Git.  
  - **`README.md`** → Documentação do projeto, incluindo instruções de instalação e execução dos testes.  

## 🤖 Como Executar os Testes
#### 🔧 Pré-requisitos (Configuração do Ambiente)
  1. **Instalação do Python:**
     - Certifique-se de ter o Python instalado (versão 3.7 ou superior). [Download do Python](https://www.python.org/downloads/)
  2. **Instalação do WebDriver:**
     - Baixe o WebDriver correspondente ao seu navegador (ex: [ChromeDriver para Google Chrome](https://googlechromelabs.github.io/chrome-for-testing/) ou [EdgeDriver para o Microsoft Edge](https://developer.microsoft.com/pt-br/microsoft-edge/tools/webdriver)).
     - Certifique-se de que o caminho para as pastas e/ou arquivos do WebDriver, esteja no PATH do sistema. 
  3. **Instalação das dependências do projeto:**
     - Abra o terminal na raiz do projeto e execute o seguinte comando:
       ```bash
       pip install -r requirements.txt
       ```
       Isso instalará todas as dependências listadas no arquivo.
     - **Verifique a instalação:**
       Após a instalação, você pode verificar se tudo está funcionando corretamente executando um dos testes do seu projeto.

#### 📊 Executando os Testes
1. Clone o repositório:
```bash
   git clone https://github.com/sthefanyricardo/curso-robot-framework-basico-may.git
```
2. Pelo terminal ou IDE, navegue até a pasta desejada do projeto, como no exemplo abaixo:
```bash
   cd curso-robot-framework-basico-may/testes_web
```
3. Execute os testes, com os exemplos de comandos a seguir:
- Dentro da pasta: testes_web/tests
```bash
   robot -d ../resultados -i CT01ORCT04 tests/
```
```bash
   robot -d ../resultados amazon_testes_processuais.robot
```
```bash
   robot -d ../resultados e- CT02ORCT03 tests/
```
- Apenas dentro da pasta: testes_web
```bash
   robot -d ../resultados tests/
```
4. Verifique os resultados:
  Os relatórios e logs serão gerados na pasta ```resultados```.

## 📌 Agradecimentos
- À instrutora May Fernandes pelo curso incrível e pelo compartilhamento de conhecimento.
- À comunidade de automação de testes por todo o suporte e inspiração.
- **Observações**
  - Este repositório é destinado a fins educacionais, para demonstrar os conceitos básicos de automação de testes com Robot Framework.
  - Sinta-se à vontade para clonar, modificar e utilizar este código como base para seus próprios projetos de automação de testes.

## 🙋‍♀️ Autora
Feito com ❤️ por Sthefany A. Ricardo.

📅 Última atualização: Fevereiro de 2025.

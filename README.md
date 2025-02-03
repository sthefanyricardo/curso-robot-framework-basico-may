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
#### Estrutura do Repositório

O repositório está organizado da seguinte forma:

```
curso-robot-framework-basico-may/
├── web_testing/                  # Exemplos e exercícios de automação web
│   ├── resources/                # Arquivos de recursos (variáveis, keywords)
│   ├── tests/                    # Casos de teste
│   └── results/                  # Resultados de execução (logs, reports)
├── requirements.txt              # Lista de todas as dependências necessárias para executar os testes
├── .gitignore                    # Arquivos e pastas ignorados pelo Git
└── README.md                     # Documentação do repositório
```

#### Descrição das Pastas
- `web_testing/`: Contém os scripts de teste e exemplos relacionados aos testes de interface web. Os arquivos .robot são os scripts de teste escritos na linguagem de palavras-chave (keywords) do Robot Framework.
  - `resources/`: Arquivos de recursos, como variáveis e keywords, que são reutilizados nos testes.
  - `tests/`: Casos de teste, organizados em arquivos .robot.
  - `results/`: Resultados de execução, como logs e relatórios gerados após a execução dos testes.

## 🤖 Como Executar os Testes
#### 🔧 Pré-requisitos (Configuração do Ambiente)
  1. Instalação do Python:
    - 1.1 Certifique-se de ter o Python instalado (versão 3.7 ou superior). [Download do Python](https://www.python.org/downloads/)
  2. Instalação do WebDriver:
    2.1 Baixe o WebDriver correspondente ao seu navegador (ex: [ChromeDriver para Google Chrome](https://googlechromelabs.github.io/chrome-for-testing/) ou [EdgeDriver para o Microsoft Edge](https://developer.microsoft.com/pt-br/microsoft-edge/tools/webdriver)).
    2.2 Certifique-se de que o caminho para as pastas e/ou arquivos do WebDriver, esteja no PATH do sistema. 
  3. Instalação das dependências do projeto:
     3.1 Abra o terminal na raiz do projeto e execute o seguinte comando:
        ```bash
        pip install -r requirements.txt
        ```
        Obs.: Isso instalará todas as dependências listadas no arquivo.
     3.2 Verifique a instalação:
        Após a instalação, você pode verificar se tudo está funcionando corretamente executando um dos testes do seu projeto.

#### 📊 Executando os Testes
1. Clone o repositório:
```bash
   git clone https://github.com/sthefanyricardo/curso-robot-framework-basico-may.git
```
2. Pelo terminal ou IDE, navegue até a pasta desejada do projeto, como no exemplo abaixo:
```bash
   cd curso-robot-framework-basico-may/web_testing
```
3. Execute os testes, com os exemplos de comandos a seguir:
- Dentro da pasta: web_testing/tests
```bash
   robot -d ../resultados -i CT01ORCT04 tests/
```
```bash
   robot -d ../resultados amazon_testes_processuais.robot
```
```bash
   robot -d ../resultados e- CT02ORCT03 tests/
```
- Apenas dentro da pasta: web_testing
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

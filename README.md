<h1 align='center'>Plann.er - BackEnd Node</h1>

<div align='center'>

  [Descrição](#descrição)
  |
  [Iniciando](#iniciando)
  |
  [Dependências](#dependências)
  |
  [Rotas](#rotas)
  |
  [Licença](#licença)

</div>

<div align='center'>
  <img src='https://img.shields.io/github/license/matheus369k/plann-er-api.svg' />
</div>

## Descrição

A aplicação e o backend do repositório [plann-er-web](https://github.com/matheus369k/plann-er-web), sendo uma site para o usuário poder gerenciar a sua viagem: 

- podendo marcar uma data de inicio e fim.
- adicionar convida, e enviar emails automaticamente aos convidados.
- podendo criar toda a rotina da viagem.
- convidar novo convidados logo apos a criação da viagem.
- atualizar as datas de incio, fim e local da viagem.

## Dependências

- Git - [baixar](https://git-scm.com)
- Node - [baixar](https://nodejs.org/pt)
- VSCode ( Recomendado ) - [baixar](https://code.visualstudio.com)

## Iniciando

Para testar o projeto na sua maquina, recomenda-se clonar o repositório em uma pasta local, como seguinte comando.

Digite no terminal

__HTTPS__
```
$ git clone https://github.com/matheus369k/plann-er-web.git
```

Acesse o projeto com seguinte comando 

```
$ code plann-er-web
```

crie um arquivo __.env__ e adicione as variáveis ambiente a seguir

```
// url banco de dados
DATABASE_URL="file:./dev.db"

// url back-end
API_BASE_URL="http://localhost:333"

// url front-end
WEB_BASE_URL="http://localhost:5173"

// Port o valor padrão e 3333
PORT=3333
```

Acesse o terminal do projeto e digite 

```
$ npm install
```

Logo apos digite

```
$ npx prisma generate
```

E por fim digite...

```
$ npm run dev
```
para rodar aplicação

## Rotas
Para saber quais são as rotas criadas na aplicação recomendo acessar o [documentação da api](https://nlw-journey.apidocumentation.com/reference), criado pela [rocketseat](https://www.rocketseat.com.br) em um evento em que criar aplicações desdo front ao back, com varias tecnologias diferentes.

## 📜Licença

Para o projeto fora usado a licença 🔗[MIT](/LICENSE.txt).

# My Nginx App

Este é um projeto de teste para criar uma aplicação Nginx que ajusta a cor do background da página, habilita ou desabilita um botão e define uma mensagem, tudo isso conforme variáveis de ambiente.

## Estrutura do Projeto

```
my-nginx-app/
├── Dockerfile
├── entrypoint.sh
├── index.html.template
└── nginx.conf
```

## Arquivos

- **Dockerfile**: Define a imagem Docker que será usada para a aplicação.
- **entrypoint.sh**: Script de entrada que substitui as variáveis de ambiente no template HTML e inicia o Nginx.
- **index.html.template**: Template HTML que usa variáveis de ambiente para definir o conteúdo.
- **nginx.conf**: Arquivo de configuração do Nginx.

## Variáveis de Ambiente

- **BACKGROUND_COLOR**: Define a cor do background da página (e.g., `lightblue`, `red`).
- **ENABLE_BUTTON**: Define se o botão será exibido ou não (`true` para exibir, `false` para não exibir).
- **MENSAGEM**: Define a mensagem que será exibida na página.

## Como Construir e Executar

1. Clone o repositório e navegue até o diretório do projeto:
   ```sh
   git clone <URL_DO_REPOSITORIO>
   cd my-nginx-app
   ```

2. Construa a imagem Docker:
   ```sh
   docker build -t my-nginx-app .
   ```

3. Execute o contêiner Docker com as variáveis de ambiente desejadas:
   ```sh
   docker run -e BACKGROUND_COLOR=lightblue -e ENABLE_BUTTON=true -e MENSAGEM="Olá, Mundo!" -p 8080:80 my-nginx-app
   ```

4. Acesse a aplicação em `http://localhost:8080`.

## Exemplo de Uso

Para alterar a cor de fundo, exibir o botão e definir uma mensagem personalizada, execute o contêiner com as variáveis apropriadas:

```sh
docker run -e BACKGROUND_COLOR=yellow -e ENABLE_BUTTON=true -e MENSAGEM="Bem-vindo ao Nginx App!" -p 8080:80 my-nginx-app
```

## Contribuição

Sinta-se à vontade para contribuir com melhorias para este projeto. Faça um fork do repositório, crie uma branch com suas alterações e envie um pull request.

## Licença

Este projeto é distribuído sob a licença MIT. Veja o arquivo `LICENSE` para mais detalhes.


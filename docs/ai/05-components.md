# Etapa 05 — Componentes BookCard e EmptyState

## Contexto
Criação dos widgets reutilizáveis para a tela de listagem.

## Prompt utilizado
> "commitado, depois mando um push, bora para o próximo"

## Resposta resumida da IA
A IA criou dois componentes: BookCard, que exibe título, autor, ano e
gênero com botões de editar e remover via callbacks, e EmptyState, que
exibe um ícone e mensagem orientando o usuário quando a lista estiver vazia.

## Decisão tomada
Aceito os dois componentes. Separar o card em arquivo próprio evita
deixar a ListPage carregada de código de UI.

## Adaptações realizadas
- Nenhuma nesta etapa.

## Aprendizado
- VoidCallback é o tipo correto para funções passadas como parâmetro
  quando não há argumentos nem retorno.
- Separar widgets em componentes próprios facilita manutenção e leitura.
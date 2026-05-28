# Etapa 03 — Repositório local com SharedPreferences

## Contexto
Criação da classe responsável por salvar, carregar, atualizar e remover
livros usando SharedPreferences.

## Prompt utilizado
> "partiu passo 3"

## Resposta resumida da IA
A IA criou a classe BookRepository com os métodos getAll(), save(),
update(), delete() e um método privado _persist() que centraliza a
gravação no SharedPreferences. Todos os métodos são assíncronos (async/await).

## Decisão tomada
Aceito a estrutura proposta. O método _persist() privado evita repetição
de código e mantém a responsabilidade de escrita em um único lugar.

## Adaptações realizadas
- Nenhuma nesta etapa.

## Aprendizado
- SharedPreferences só salva tipos primitivos. Listas de objetos precisam
  ser convertidas para JSON (jsonEncode) antes de salvar e reconstruídas
  (jsonDecode + fromJson) ao carregar.
- O método _persist() é privado (underline no nome) — convenção do Dart
  para membros que não devem ser acessados fora da classe.
# Etapa 06 — main.dart e ThemeData

## Contexto
Configuração do ponto de entrada do app e centralização do tema visual.

## Prompt utilizado
> "próximo"

## Resposta resumida da IA
A IA criou o main.dart com MaterialApp usando Material 3 e ThemeData
centralizado. Tema baseado na cor 0xFF5B4FCF (roxo/índigo) via
ColorScheme.fromSeed. Configurações de AppBar, Card, campos de formulário
e FAB definidas uma vez e herdadas por todos os widgets.

## Decisão tomada
Aceito o tema proposto. Centralizar no ThemeData evita repetição de
estilo em cada tela.

## Adaptações realizadas
- Nenhuma nesta etapa. Cor pode ser ajustada conforme preferência.

## Aprendizado
- ColorScheme.fromSeed gera uma paleta completa a partir de uma única
  cor semente — não é necessário definir cada cor manualmente.
- Configurações no ThemeData são herdadas automaticamente por todos
  os widgets do app.
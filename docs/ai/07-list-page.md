# Etapa 07 — Tela de listagem ListPage

## Contexto
Criação da tela inicial do app, responsável por listar os livros,
abrir o formulário e confirmar remoções.

## Prompt utilizado
> "próximo"

## Resposta resumida da IA
A IA criou a ListPage com carregamento automático via initState,
navegação para FormPage com parâmetro opcional (cadastro ou edição),
confirmação de remoção via AlertDialog e SnackBar de feedback.
Layout responsivo com ConstrainedBox de maxWidth 720.

## Decisão tomada
Aceito a estrutura proposta.

## Adaptações realizadas
- Nenhuma nesta etapa.

## Aprendizado
- O parâmetro Book? opcional no _openForm() permite reutilizar a
  navegação para cadastro e edição sem duplicar código.
- O if (mounted) antes do SnackBar é uma boa prática para evitar
  erros quando o widget é destruído antes do Future completar.
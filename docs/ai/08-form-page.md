# Etapa 08 — Tela de formulário FormPage

## Contexto
Criação do formulário reutilizável para cadastro e edição de livros.

## Prompt utilizado
> "próximo"

## Resposta resumida da IA
A IA criou a FormPage com Form + GlobalKey para validação, três
TextFormField (título, autor, ano) e um DropdownButtonFormField para
gênero. O getter _isEditing diferencia cadastro de edição. Validações
nos três campos obrigatórios, incluindo verificação de intervalo no ano.
SnackBar de feedback após salvar ou editar.

## Decisão tomada
Aceito a estrutura proposta.

## Adaptações realizadas
- Nenhuma nesta etapa.

## Aprendizado
- O dispose() dos TextEditingControllers é obrigatório para evitar
  vazamento de memória.
- FilledButton é o botão primário do Material 3 e herda a cor do
  ColorScheme automaticamente via ThemeData.
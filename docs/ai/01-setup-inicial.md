# Etapa 01 — Setup inicial e estrutura de pastas

## Contexto
Início do projeto de recuperação de frequência. O enunciado exige um CRUD
de livros com persistência local via SharedPreferences.

## Prompt utilizado
> "Já fiz um trabalho parecido com você antes, no mesmo formato. Quero seguir
> o mesmo padrão: roteiro em passos numerados, estrutura de pastas Flutter
> padrão, documentação em docs/ai/, tema visual centralizado no ThemeData,
> layout responsivo com ConstrainedBox. Sou de nível intermediário."

## Resposta resumida da IA
A IA identificou o trabalho anterior (Reservas de Salas) e propôs um roteiro
em 9 etapas seguindo o mesmo padrão. Estrutura de pastas: models/,
repositories/, components/, pages/, utils/. Sem pasta mocks/ pois a
persistência é feita via SharedPreferences.

## Decisão tomada
Aceito o roteiro completo. Nome do projeto: `minha_biblioteca`.

## Adaptações realizadas
- Removida a pasta mocks/ (desnecessária com SharedPreferences).
- Versionamento feito via GitHub Desktop em vez de terminal.

## Aprendizado
- SharedPreferences requer adição manual no pubspec.yaml.
- Sem mocks, o app inicia com lista vazia até o usuário cadastrar o primeiro livro.
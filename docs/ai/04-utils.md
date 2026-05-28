# Etapa 04 — Utils e enum Genre

## Contexto
Decisão de enriquecer o modelo com campo de gênero literário,
usando enum para garantir valores controlados.

## Prompt utilizado
> "incluir o gênero"

## Resposta resumida da IA
A IA criou o enum Genre com 10 opções e uma extension GenreExtension
que adiciona o getter label para exibir o nome em português. Também
atualizou a classe Book para incluir o campo genre, serializando como
string via genre.name no toJson() e reconstruindo via
Genre.values.firstWhere() no fromJson().

## Decisão tomada
Aceito o enum e a atualização do modelo. O repositório não precisou
de alterações pois já usa toJson/fromJson.

## Adaptações realizadas
- Nenhuma nesta etapa.

## Aprendizado
- Enums no Dart têm a propriedade .name que retorna o nome do valor
  como string — útil para serialização JSON sem pacotes externos.
- Extensions permitem adicionar métodos a tipos existentes sem herança.
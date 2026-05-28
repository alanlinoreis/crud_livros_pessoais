# Relatório final de aprendizado

## Sobre o uso da IA

Este projeto foi desenvolvido com auxílio do Claude (Anthropic) do início
ao fim, seguindo um roteiro em 9 etapas documentadas individualmente.

## O que a IA fez

- Propôs e manteve o roteiro de desenvolvimento em ordem lógica
- Gerou o código de cada arquivo com explicações por trecho
- Sugeriu boas práticas (dispose de controllers, if mounted, _persist privado)
- Adaptou o padrão de um projeto anterior (Reservas de Salas) para o novo tema
- Gerou a documentação de cada etapa em tempo real

## O que eu decidi e adaptei

- Removi a pasta mocks/ por ser desnecessária com SharedPreferences
- Mantive tudo no branch main por ser um projeto solo acadêmico
- Adicionei o campo genre ao modelo Book, indo além do mínimo do enunciado
- Renomeei a classe principal de MyApp para CrudApp
- Usei GitHub Desktop no lugar do terminal para versionamento

## Aprendizados técnicos

- SharedPreferences só aceita tipos primitivos — listas de objetos precisam
  ser serializadas com jsonEncode/jsonDecode
- O factory constructor fromJson() é o padrão para reconstruir objetos
  a partir de JSON no Dart
- Enums têm a propriedade .name que retorna o valor como string,
  útil para serialização sem pacotes externos
- Extensions permitem adicionar métodos a tipos existentes sem herança
- O getter _isEditing evita duplicação de lógica entre cadastro e edição
- O if (mounted) antes de usar context após um await é uma boa prática
  para evitar erros com widgets destruídos
- ConstrainedBox com maxWidth torna o layout responsivo para web e desktop
- ThemeData centralizado evita repetição de estilos em cada tela

## Considerações finais

O uso da IA acelerou o desenvolvimento e ajudou a manter a organização
do projeto. Todo o código foi revisado e compreendido antes de ser
aplicado. As adaptações realizadas mostram que a IA foi usada como
ferramenta de apoio, não como substituta do raciocínio próprio.
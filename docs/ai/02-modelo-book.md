# Etapa 02 — Modelo Book

## Contexto
Criação da classe de modelo de negócio exigida pelo enunciado.

## Prompt utilizado
> "fechou, tudo certo, partimos para o passo 2"

## Resposta resumida da IA
A IA criou a classe Book com os campos id, title, author e publicationYear.
Incluiu os métodos toJson() e fromJson() para serialização com
SharedPreferences. Explicou que o id será gerado via timestamp no momento
do cadastro.

## Decisão tomada
Aceito o modelo proposto. O campo genre (enum extra) ficará para decisão
no Passo 4.

## Adaptações realizadas
- Nenhuma nesta etapa.

## Aprendizado
- O factory constructor fromJson() reconstrói o objeto a partir do Map
  retornado pelo jsonDecode — padrão necessário para persistência local.
- O id baseado em timestamp evita dependência de pacotes externos como uuid.
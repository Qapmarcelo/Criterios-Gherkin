#language: pt

Funcionalidade: Finalizar Compra
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro
Para finalizar minha compra
Contexto:
Dado que estou na página de cadastro da EBAC-SHOP

Cenário: Cadastro com todos os dados obrigatórios
Quando eu preencho todos os campos obrigatórios marcados com asteriscos "*"
Então devo ser redirecionado para a página de confirmação de compra



Cenário: Tentativa de cadastro com e-mail inválido

Quando eu preencho o campo de e-mail Marcelo@@eboc.com
Então devo ver uma mensagem de erro "e-mail inválido"

Cenário: Tentativa de cadastro com campos vazios
Quando eu tento cadastrar com campos vazios
Então devo ver uma mensagem de alerta "Falta de preenchimento"

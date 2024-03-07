Feature: Finalizar Compra
    Como cliente da EBAC-SHOP
    Quero fazer concluir meu cadastro
    Para finalizar minha compra

    Background:
        Given que estou na página de cadastro da EBAC-SHOP

    Scenario: Cadastro com todos os dados obrigatórios
        When eu preencho todos os campos obrigatórios marcados com asteriscos "*"
        And eu clico no botão de "Finalizar compra"
        Then devo ser redirecionado para a página de confirmação de compra



    Scenario: Tentativa de cadastro com e-mail inválido

        When eu preencho o campo de e-mail Marcelo@@eboc.com
        And eu clico no botão de "Finalizar compra"
        Then devo ver uma mensagem de erro "e-mail inválido"

    Scenario: Tentativa de cadastro com campos vazios
        When eu tento cadastrar com campos vazios
        Then devo ver uma mensagem de alerta "Falta de preenchimento"

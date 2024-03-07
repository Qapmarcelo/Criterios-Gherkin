Feature: Escolha detalhada do produtos
    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto e escolher a quantidade
    Para depois inserir no carrinho

    Background:
        Given: que estou na página de um produto na EBAC-SHOP

    Scenario: Seleções de cor, tamanho e quantidade devem ser obrigatórios
        When: for selecionado cor "blue"
        And: O tamanho "XS"
        And: E quantidade "5"
        Then: exibirá a mensagem "Clique em inserir no carrinho"

    Scenario Outline: Seleção de cor, tamanho e quantidade obrigatórios
        When eu seleciono a cor <cor>
        And eu seleciono o tamanho <tamanho>
        And eu insiro a quantidade <quantidade>
        Then devo ver a mensagem <mensagem>
        Or: Voltar ao estado original <limpar>
        Examples:
            | cor    | tamanho | quantidade | mensagem                        | Voltar ao estado original |
            | blue   | XS      | 5          | "Clique em inserir no carrinho" |                           |
            | red    |         | 1          | "Escolha o tamanho"             |                           |
            |        | S       | 1          | "Escolha a cor"                 | Limpar                    |
            | Orange | S       | 11         | "Quantidade invalida"           |                           |
 #language: pt

            Funcionalidade: Escolha detalhada do produtos


            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto e escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que estou na página de um produto na EBAC-SHOP

            Cenário: Seleções de cor, tamanho e quantidade devem ser obrigatórios
            Quando for selecionado cor "blue"
            E O tamanho "XS"
            E E quantidade "5"
            Então  exibirá a mensagem "Clique em inserir no carrinho"

            Cenário: Limpar lista de produtos
            Quando Eu clicar em "Limpar"
            Então "Voltar ao estado original"






            Esquema de Cenário: Seleção de cor, tamanho e quantidade obrigatórios
            Quando eu seleciono a cor <cor>, <tamanho>, <quantidade>
            Então devo ver a mensagem <mensagem>

            exemplos:
            | cor    | tamanho | quantidade | mensagem                        | Voltar ao estado original |
            | blue   | XS      | 5          | "Clique em inserir no carrinho" |                           |
            | red    |         | 1          | "Escolha o tamanho"             |                           |
            |        | S       | 1          | "Escolha a cor"                 | Limpar                    |
            | Orange | S       | 11         | "Quantidade invalida"           |                           |

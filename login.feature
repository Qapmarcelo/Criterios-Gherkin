
 #language: pt

      Funcionalidade: Login na plataforma da EBAC-SHOP
      Como cliente da EBAC-SHOP
      Quero fazer o login (autenticação) na plataforma
      Para visualizar meus pedidos

      Contexto:
      Dado Que cliente acesse o login da EBAC-SHOP


      Cenário: Visualizar pedidos após o login bem-sucedido
      Quando Digitar o Usuário "Marcelo@ebac.com.br"
      E Senha "123acesso"
      Então deve abrir tela de checkout


      Cenário: Mensagem de alerta ao inserir dados inválidos
      Quando Digitar o Usuário "Mar333elo@ebac.com.br"
      E Senha "123acesso"
      Então deve aparecer a mensagem de alerta "Usuário ou senha inválidos"

      Esquema de Cenário: Mensagem de alerta ao inserir dados inválidos
      Quando Digitar o <usuário> e <senha>
      Então deve aparecer uma <mensagem> de erro

      exemplos:
      | Usuário                 | senha               | mensagem                     |
      | "Mar333elo@ebac.com.br" | "123acesso"         | "Usuário ou senha inválidos" |
      | "Marcelo@ebac.com.br"   | "12333333333acesso" | "Usuário ou senha inválidos" |




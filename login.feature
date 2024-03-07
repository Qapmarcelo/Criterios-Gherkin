
Feature: Login na plataforma da EBAC-SHOP
  Como cliente da EBAC-SHOP
  Quero fazer o login (autenticação) na plataforma
  Para visualizar meus pedidos

  Background:
    Given Que cliente acesse o login da EBAC-SHOP


  Scenario: Visualizar pedidos após o login bem-sucedido
    When Digitar o Usuário "Marcelo@ebac.com.br"
    And Senha "123acesso"
    Then deve abrir tela de checkout


  Scenario: Mensagem de alerta ao inserir dados inválidos
    When Digitar o Usuário "Mar333elo@ebac.com.br"
    And Senha "123acesso"
    Then deve aparecer a mensagem de alerta "Usuário ou senha inválidos"

  Scenario Outline: Mensagem de alerta ao inserir dados inválidos
    When Digitar o <usuário> e <senha>
    Then deve aparecer uma <mensagem> de erro

    Examples:
      | Usuário                 | senha       | mensagem                     |
      | "Mar333elo@ebac.com.br" | "123acesso" | "Usuário ou senha inválidos" |



            #Language pt

            Funcionalidade: Login na plataforma

            COMO cliente da EBAC-Shop
            QUERO fazer o login (autenticação) na plataforma
            PARA visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de login da EBAC-Shop

            Cenário: Autenticação válida
            Quando eu digitar o usuário no formato "*@*.com.br"
            E a senha no formato "abc@123"
            Então deve ser exibida a tela: "Tela de pedidos"

            Cenário: Autenticação inválida
            Quando eu preencher o usuário diferente do formato "*@*.com.br"
            E a senha diferente do formato "abc@123"
            Então deve ser exibida a mensagem de alerta: "Usuário ou senha inválidos"

            Esquema do Cenário: Autenticação por múltiplos usuários
            Quando eu digitar o <Usuario>
            E a <Senha>
            Então deve ser exibida a <Mensagem>

            Exemplos:
            | Usuario      | Senha     | Mensagem                     |
            | "*@*.com.br" | "abc@123" | "Tela de pedidos"            |
            | "abc"        | "xyz"     | "Usuário ou senha inválidos" |
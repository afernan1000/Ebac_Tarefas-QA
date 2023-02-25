            #Language pt

            Funcionalidade: Tela de Cadastro

            COMO cliente da EBAC-Shop
            QUERO concluir meu cadastro
            PARA finalizar minha compra

            Contexto:
            Dado que eu acesse a página de checkout da EBAC-Shop

            Regra: Preencher todos os campos obrigatórios marcados com asterisco

            Regra: Não deve permitir e-mail com formato inválido

            Regra: Não é permitido cadastrar campos vazios

            Cenário: Campos obrigatórios preenchidos
            Quando eu preencher todos os campos marcados com "*"
            Então é habilitado "Finalizar Compra"

            Cenário: Campo e-mail com formato inválido
            Quando eu preencher o campo e-mail diferente do formato "*@*.com.br"
            Então deve ser exibida a mensagem de erro: "Endereço de e-mail inválido"

            Cenário: Campos obrigatórios vazios
            Quando eu não preencher todos os campos marcados com "*"
            Então deve ser exibida uma mensagem de alerta: "Preencha todos os campos obrigatórios"

            Esquema do Cenário: Cadastro por múltiplos valores
            Quando eu preencher todos os campos <Obrigatorio> e <E-mail>
            Então deve ser exibida a <Mensagem>

            Exemplos:
            | Obrigatorio | E-mail       | Mensagem                                |
            | "abc"       | "*@*.com.br" | "Finalizar Compra"                      |
            | "abc"       | "xyz"        | "Endereço de e-mail inválido"           |
            | ""          | ""           | "Preencha todos os campos obrigatórios" |
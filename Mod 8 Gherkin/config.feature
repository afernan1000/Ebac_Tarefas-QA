            #Language pt

            Funcionalidade: Configurações de compra

            COMO cliente da EBAC-Shop
            QUERO configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            PARA depois inserir no carrinho

            Contexto:
            Dado que eu acesse a página de configuração do produto da EBAC-Shop

            Regra: Os campos Tamanho, Cor e Quantidade devem ser campos obrigatórios

            Regra: Permitir até 10 itens de um mesmo produto

            Regra: Ao usar Limpar configurações Tamanho e Cor devem voltar ao valor padrão

            Cenário: Campos obrigatórios preenchidos
            Quando eu selecionar um valor para o campo "Tamanho"
            E para o campo "Cor"
            E para o campo "Quantidade"
            Então é habilitada a funcionalidade "Comprar"

            Cenário: Quantidade máxima de itens do mesmo produto
            Quando eu tentar incrementar o campo "Quantidade" com um valor ">10"
            Então não deve permitir incrementar

            Cenário: Funcionalidade Limpar configurações
            Quando eu clicar no botão "Limpar"
            Então os campos "Tamanho" e "Cor" devem voltar para os valores padrão

            Esquema do Cenário: Configuração por múltiplos valores
            Quando eu selecionar um valor para os campos <Obrigatorio>
            E incrementar o campo <Quantidade> em até 10
            Então deve ser habilitada a <Funcionalidade>

            Exemplos:
            | Obrigatorio | Quantidade | Funcionalidade               |
            | "abc"       | "<=10"     | "Comprar"                    |
            | "abc"       | ">10"      | "não incrementar Quantidade" |
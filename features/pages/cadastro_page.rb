class Cadastro < SitePrism::Page
    set_url 'https://carrinho.casasbahia.com.br/Checkout?Pagina=cadastrar&ReturnUrl=https://carrinho.casasbahia.com.br#login'

    element :cmpNome , '#NomeCompleto'
    element :cmpCpf , '#Cpf'
    element :cmpEmail , '#Email'
    element :cmpEmailDois , '#ConfirmarEmail'
    element :cmpSenha , '#Senha'
    element :cmpSenhaDois , '#ConfirmarSenha'
    element :cmpDdd, '#Telefone1DDDPF'
    element :cmpTel, '#Telefone1PF'
    element :cmpDddCel, '#Telefone2DDDPF'
    element :cmpCel, '#Telefone2PF'
    element :dtDia, '#DataNascimentoDia'
    element :dtMes, '#DataNascimentoMes'
    element :dtAno, '#DataNascimentoAno'
    element :btnSalvar , '.btContinuar'
    element :chkSexoM, '.sexM' 
    element :msgErro, '.field-validation-error'

    def preencherForm (nome,cpf,ddd1,tel,ddd2,cel,dia,mes,ano,email,email2,senha,senha2)
        cmpNome.set nome
        cmpCpf.set cpf 
        cmpDdd.set ddd1
        cmpTel.set tel
        cmpDddCel.set ddd2
        cmpCel.set cel
        dtDia.set dia
        dtMes.set mes
        dtAno.set ano
        chkSexoM.click
        cmpEmail.set email
        cmpEmailDois.set email2
        cmpSenha.set senha
        cmpSenhaDois.set senha2
    end

    def clickContinuar
        btnSalvar.click
    end

    def msgErro
        #TODO
    end
    
end

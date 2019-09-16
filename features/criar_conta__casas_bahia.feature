@JIRA-QAUTO-4017 
Feature: Criar conta - Casas Bahia
    Como um consumidor final
    Quero criar conta no site das Casas Bahia
    Para poder fazer compras online

  @cadastro
  Scenario Outline: Cadastro com campos obrigatórios inválidos
    Dado que eu esteja no formulário de cadastro das Casas Bahia
    Quando eu preencher os campos "<nome>","<cpf>","<ddd1>","<tel>","<ddd2>","<cel>","<dia>","<mes>","<ano>","<email>","<email2>","<senha>","<senha2>" inválidos
    E clicar no botão Continuar
    Então o sistema deve exibir uma "<mensagem>" de erro

    Examples:
      | nome | cpf | ddd1 | tel | ddd2 | cel | dia | mes | ano | email | email2 | senha | senha2 | mensagem | hiptest-uid |
      | "" | "63074597437" | "11" | "30223022" | "21" | "97775364" | "16" | "11" | "1981" | "teste2@teste.com.br" | "teste2@teste.com.br" | "1235" | "1235" | "O campo nome é obrigatório." |  |
      | "Fabio Araujo" | "10471506203" | "11" | "30223021" | "21" | "97775363" | "15" | "12" | "1980" | "teste1@teste.com.br" | "teste1@teste.com.br" | "1234" | "1234" | "CPF inválido." |  |
      | "José da Silva" | "" | "11" | "30223021" | "21" | "97775363" | "15" | "12" | "1980" | "teste1@teste.com.br" | "teste1@teste.com.br" | "1234" | "1234" | "CPF é um campo obrigatório." |  |
      | "Ana Lucia" | "63074597437" | "" | "30223022" | "21" | "97775364" | "16" | "11" | "1981" | "teste2@teste.com.br" | "teste2@teste.com.br" | "1235" | "1235" | "DDD do telefone é um campo obrigatório." |  |
      | "Flavio Figueiredo" | "63074597437" | "11" | "" | "21" | "97775365" | "17" | "12" | "1982" | "teste2@teste.com.br" | "teste2@teste.com.br" | "1236" | "1236" | "O campo telefone é obrigatório" |  |
      | "Felipe Jacarini" | "63074597437" | "11" | "30223024" | "" | "97775367" | "18" | "10" | "1983" | "teste3@teste.com.br" | "teste3@teste.com.br" | "1237" | "1237" | "DDD do celular é um campo obrigatório." |  |
      | "Isis de Monaco" | "63074597437" | "11" | "30223025" | "21" | "" | "10" | "11" | "1984" | "teste4@teste.com.br" | "teste4@teste.com.br" | "1238" | "1238" | "O campo celular é obrigatório" |  |
      | "Maria do Carmo" | "63074597437" | "11" | "30223026" | "21" | "97775368" | "" | "12" | "1975" | "teste5@teste.com.br" | "teste5@teste.com.br" | "1239" | "1239" | "O campo Dia é obrigatório" |  |
      | "Moacir de Monaco" | "63074597437" | "11" | "30223027" | "21" | "97775369" | "21" | "" | "1976" | "teste6@teste.com.br" | "teste6@teste.com.br" | "1240" | "1240" | "O campo Mês é obrigatório" |  |
      | "Lourenço Primon" | "63074597437" | "11" | "30223027" | "21" | "97775369" | "21" | "10" | "" | "teste6@teste.com.br" | "teste6@teste.com.br" | "1240" | "1240" | "O campo Ano é obrigatório" |  |
      | "Arthur Jacarini" | "63074597437" | "11" | "30223027" | "21" | "97775369" | "21" | "10" | "1981" | "" | "teste6@teste.com.br" | "1240" | "1240" | "O campo E-mail é obrigatório" |  |
      | "Bernardo Silva" | "63074597437" | "11" | "30223027" | "21" | "97775369" | "21" | "10" | "1982" | "teste6@teste.com.br" | "" | "1240" | "1240" | "O campo Confirmar E-mail é obrigatório" |  |
      | "Clara Silva" | "63074597437" | "11" | "30223027" | "21" | "97775369" | "21" | "10" | "1983" | "teste6@teste.com.br" | "teste6@teste.com.br" | "" | "1240" | "O campo Senha é obrigatório" |  |
      | "João Pedro" | "63074597437" | "11" | "30223027" | "21" | "97775369" | "21" | "10" | "1972" | "teste6@teste.com.br" | "teste6@teste.com.br" | "1240" | "" | "O campo Confirmar Senha é obrigatório" |  |

  @cadastro
  Scenario Outline: Cadastro com campos obrigatórios válidos
    Dado que eu esteja no formulário de cadastro das Casas Bahia
    Quando eu preencher os campos "<nome>","<cpf>","<ddd1>","<tel>","<ddd2>","<cel>","<dia>","<mes>","<ano>","<email>","<email2>","<senha>","<senha2>"
    Então o sistema deve exibir uma mensagem de sucesso

    Examples:
      | nome | cpf | ddd1 | tel | ddd2 | cel | dia | mes | ano | email | email2 | senha | senha2 | hiptest-uid |
      | "Fabio Araujo" | "63074597437" | "11" | "30223021" | "21" | "97775363" | "15" | "12" | "1980" | "teste1@teste.com.br" | "teste1@teste.com.br" | "Teste@1234" | "Teste@1234" |  |
      | "Ana Lucia" | "63074597437" | "11" | "30223022" | "21" | "97775364" | "16" | "11" | "1981" | "teste1@teste.com.br" | "teste1@teste.com.br" | "Teste@1235" | "Teste@1235" |  |

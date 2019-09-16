@JIRA-QAUTO-4017 
Feature: Criar conta - Casas Bahia
    Como um consumidor final
    Quero criar conta no site das Casas Bahia
    Para poder fazer compras online

  @cadastro
  Scenario Outline: Cadastro com campos obrigatórios inválidos (uid:0ea7efd4-d16b-4f76-9ffa-5eae8eecd4c1)
    Dado que eu esteja no formulário de cadastro das Casas Bahia
    Quando eu preencher os campos "<nome>","<cpf>","<ddd1>","<tel>","<ddd2>","<cel>","<dia>","<mes>","<ano>","<email>","<email2>","<senha>","<senha2>" inválidos
    E clicar no botão Continuar
    Então o sistema deve exibir uma "<mensagem>" de erro

    Examples:
      | nome | cpf | ddd1 | tel | ddd2 | cel | dia | mes | ano | email | email2 | senha | senha2 | mensagem | hiptest-uid |
      | "" | "63074597437" | "11" | "30223022" | "21" | "97775364" | "16" | "11" | "1981" | "teste2@teste.com.br" | "teste2@teste.com.br" | "1235" | "1235" | "O campo nome é obrigatório." | uid:642bf3b9-1075-4ab6-97a9-eae985f515f4 |
      | "Fabio Araujo" | "10471506203" | "11" | "30223021" | "21" | "97775363" | "15" | "12" | "1980" | "teste1@teste.com.br" | "teste1@teste.com.br" | "1234" | "1234" | "CPF inválido." | uid:b8060802-b3fe-4d56-9cb7-7b91c1e12b89 |
      | "José da Silva" | "" | "11" | "30223021" | "21" | "97775363" | "15" | "12" | "1980" | "teste1@teste.com.br" | "teste1@teste.com.br" | "1234" | "1234" | "CPF é um campo obrigatório." | uid:2e5f44e2-078c-4fe2-b48a-a4a34f31e2f6 |
      | "Ana Lucia" | "63074597437" | "" | "30223022" | "21" | "97775364" | "16" | "11" | "1981" | "teste2@teste.com.br" | "teste2@teste.com.br" | "1235" | "1235" | "DDD do telefone é um campo obrigatório." | uid:3f083f34-49d0-4054-8bd0-caed970cce5e |
      | "Flavio Figueiredo" | "63074597437" | "11" | "" | "21" | "97775365" | "17" | "12" | "1982" | "teste2@teste.com.br" | "teste2@teste.com.br" | "1236" | "1236" | "O campo telefone é obrigatório" | uid:de403b60-5d56-46c8-b0b6-a2c7c6028c75 |
      | "Felipe Jacarini" | "63074597437" | "11" | "30223024" | "" | "97775367" | "18" | "10" | "1983" | "teste3@teste.com.br" | "teste3@teste.com.br" | "1237" | "1237" | "DDD do celular é um campo obrigatório." | uid:e5f39fce-6e10-41e5-9ff7-fba5a8195cf2 |
      | "Isis de Monaco" | "63074597437" | "11" | "30223025" | "21" | "" | "10" | "11" | "1984" | "teste4@teste.com.br" | "teste4@teste.com.br" | "1238" | "1238" | "O campo celular é obrigatório" | uid:8bac0312-f2b6-4da2-9847-0169131dcdf5 |
      | "Maria do Carmo" | "63074597437" | "11" | "30223026" | "21" | "97775368" | "" | "12" | "1975" | "teste5@teste.com.br" | "teste5@teste.com.br" | "1239" | "1239" | "O campo Dia é obrigatório" | uid:ef115eba-c7be-4082-9a5e-5ac36bc3f222 |
      | "Moacir de Monaco" | "63074597437" | "11" | "30223027" | "21" | "97775369" | "21" | "" | "1976" | "teste6@teste.com.br" | "teste6@teste.com.br" | "1240" | "1240" | "O campo Mês é obrigatório" | uid:64c6eca4-80fb-416e-9c0e-74f64afc27f5 |
      | "Lourenço Primon" | "63074597437" | "11" | "30223027" | "21" | "97775369" | "21" | "10" | "" | "teste6@teste.com.br" | "teste6@teste.com.br" | "1240" | "1240" | "O campo Ano é obrigatório" | uid:1e97a62c-d347-4e71-bdcd-6524b5e29d84 |
      | "Arthur Jacarini" | "63074597437" | "11" | "30223027" | "21" | "97775369" | "21" | "10" | "1981" | "" | "teste6@teste.com.br" | "1240" | "1240" | "O campo E-mail é obrigatório" | uid:aaf53090-08d4-47ba-be60-a8335f5e3909 |
      | "Bernardo Silva" | "63074597437" | "11" | "30223027" | "21" | "97775369" | "21" | "10" | "1982" | "teste6@teste.com.br" | "" | "1240" | "1240" | "O campo Confirmar E-mail é obrigatório" | uid:bbb9bccb-cf76-46c4-b113-594b076eaed6 |
      | "Clara Silva" | "63074597437" | "11" | "30223027" | "21" | "97775369" | "21" | "10" | "1983" | "teste6@teste.com.br" | "teste6@teste.com.br" | "" | "1240" | "O campo Senha é obrigatório" | uid:81e91857-896a-442c-9f2f-4e4d3e2cdef8 |
      | "João Pedro" | "63074597437" | "11" | "30223027" | "21" | "97775369" | "21" | "10" | "1972" | "teste6@teste.com.br" | "teste6@teste.com.br" | "1240" | "" | "O campo Confirmar Senha é obrigatório" | uid:e29ccd02-3c2d-4c62-9792-f78c74399366 |

  @cadastro
  Scenario Outline: Cadastro com campos obrigatórios válidos (uid:ae65908c-00d8-4de6-b002-3fa8a5ea8c96)
    Dado que eu esteja no formulário de cadastro das Casas Bahia
    Quando eu preencher os campos "<nome>","<cpf>","<ddd1>","<tel>","<ddd2>","<cel>","<dia>","<mes>","<ano>","<email>","<email2>","<senha>","<senha2>"
    Então o sistema deve exibir uma mensagem de sucesso

    Examples:
      | nome | cpf | ddd1 | tel | ddd2 | cel | dia | mes | ano | email | email2 | senha | senha2 | hiptest-uid |
      | "Fabio Araujo" | "63074597437" | "11" | "30223021" | "21" | "97775363" | "15" | "12" | "1980" | "teste1@teste.com.br" | "teste1@teste.com.br" | "Teste@1234" | "Teste@1234" | uid:e9d65b61-485b-469b-8062-e86626a1eec9 |
      | "Ana Lucia" | "63074597437" | "11" | "30223022" | "21" | "97775364" | "16" | "11" | "1981" | "teste1@teste.com.br" | "teste1@teste.com.br" | "Teste@1235" | "Teste@1235" | uid:e7ed9677-4bb0-4fab-a396-f9e8a57cd030 |

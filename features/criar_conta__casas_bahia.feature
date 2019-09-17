@JIRA-QAUTO-4017 
Feature: Criar conta - Casas Bahia
    Como um consumidor final
    Quero criar conta no site das Casas Bahia
    Para poder fazer compras online

  @cadastro
  Scenario Outline: Cadastro com campos obrigatórios inválidos (uid:cd173c7f-2aa3-4741-92e6-ba7a1a035338)
    Given que eu esteja no formulário de cadastro das Casas Bahia
    When eu preencher os campos "<nome>","<cpf>","<ddd1>","<tel>","<ddd2>","<cel>","<dia>","<mes>","<ano>","<email>","<email2>","<senha>","<senha2>" inválidos
    And clicar no botão Continuar
    Then o sistema deve exibir uma "<mensagem>" de erro

    Examples:
      | nome | cpf | ddd1 | tel | ddd2 | cel | dia | mes | ano | email | email2 | senha | senha2 | mensagem | hiptest-uid |
      | "" | "63074597437" | "11" | "30223022" | "21" | "97775364" | "16" | "11" | "1981" | "teste2@teste.com.br" | "teste2@teste.com.br" | "1235" | "1235" | "O campo nome é obrigatório." | uid:8ef8f82d-3937-4bc9-8b40-66a5554eb4fc |
      | "Fabio Araujo" | "10471506203" | "11" | "30223021" | "21" | "97775363" | "15" | "12" | "1980" | "teste1@teste.com.br" | "teste1@teste.com.br" | "1234" | "1234" | "CPF inválido." | uid:e59fc24e-0fd7-44e9-adfc-87ad225995a2 |
      | "José da Silva" | "" | "11" | "30223021" | "21" | "97775363" | "15" | "12" | "1980" | "teste1@teste.com.br" | "teste1@teste.com.br" | "1234" | "1234" | "CPF é um campo obrigatório." | uid:996fcbdb-e1ab-4671-bfdd-ff80cb059d89 |
      | "Ana Lucia" | "63074597437" | "" | "30223022" | "21" | "97775364" | "16" | "11" | "1981" | "teste2@teste.com.br" | "teste2@teste.com.br" | "1235" | "1235" | "DDD do telefone é um campo obrigatório." | uid:7f6d38c2-1e9e-4e23-97ee-7bbb3b035877 |
      | "Flavio Figueiredo" | "63074597437" | "11" | "" | "21" | "97775365" | "17" | "12" | "1982" | "teste2@teste.com.br" | "teste2@teste.com.br" | "1236" | "1236" | "O campo telefone é obrigatório" | uid:204900ee-9d90-4e13-b696-166284654357 |
      | "Felipe Jacarini" | "63074597437" | "11" | "30223024" | "" | "97775367" | "18" | "10" | "1983" | "teste3@teste.com.br" | "teste3@teste.com.br" | "1237" | "1237" | "DDD do celular é um campo obrigatório." | uid:59d8cf41-c622-4f3f-bbb3-2f2a22a737fb |
      | "Isis de Monaco" | "63074597437" | "11" | "30223025" | "21" | "" | "10" | "11" | "1984" | "teste4@teste.com.br" | "teste4@teste.com.br" | "1238" | "1238" | "O campo celular é obrigatório" | uid:7e7d7b18-db9a-42ed-b9ff-8bc3cb31727f |
      | "Maria do Carmo" | "63074597437" | "11" | "30223026" | "21" | "97775368" | "" | "12" | "1975" | "teste5@teste.com.br" | "teste5@teste.com.br" | "1239" | "1239" | "O campo Dia é obrigatório" | uid:ef445468-ac78-4c9a-9606-35249ca6739d |
      | "Moacir de Monaco" | "63074597437" | "11" | "30223027" | "21" | "97775369" | "21" | "" | "1976" | "teste6@teste.com.br" | "teste6@teste.com.br" | "1240" | "1240" | "O campo Mês é obrigatório" | uid:933a1ed4-e250-4200-9ec0-0503e9df6f5a |
      | "Lourenço Primon" | "63074597437" | "11" | "30223027" | "21" | "97775369" | "21" | "10" | "" | "teste6@teste.com.br" | "teste6@teste.com.br" | "1240" | "1240" | "O campo Ano é obrigatório" | uid:a5e2da31-ec8e-4b0d-9a20-f8aa7ae0d54e |
      | "Arthur Jacarini" | "63074597437" | "11" | "30223027" | "21" | "97775369" | "21" | "10" | "1981" | "" | "teste6@teste.com.br" | "1240" | "1240" | "O campo E-mail é obrigatório" | uid:96892ee5-fefb-4755-a0a4-6eef7250e984 |
      | "Bernardo Silva" | "63074597437" | "11" | "30223027" | "21" | "97775369" | "21" | "10" | "1982" | "teste6@teste.com.br" | "" | "1240" | "1240" | "O campo Confirmar E-mail é obrigatório" | uid:468811eb-2547-4d9f-b331-0efc64f244f8 |
      | "Clara Silva" | "63074597437" | "11" | "30223027" | "21" | "97775369" | "21" | "10" | "1983" | "teste6@teste.com.br" | "teste6@teste.com.br" | "" | "1240" | "O campo Senha é obrigatório" | uid:ca75a172-0390-4d3c-ab31-1046620b5ed1 |
      | "João Pedro" | "63074597437" | "11" | "30223027" | "21" | "97775369" | "21" | "10" | "1972" | "teste6@teste.com.br" | "teste6@teste.com.br" | "1240" | "" | "O campo Confirmar Senha é obrigatório" | uid:de4696ee-6650-41f3-a7f3-cea2622bc2f1 |

  @cadastro
  Scenario Outline: Cadastro com campos obrigatórios válidos (uid:2739969f-9310-43df-b2d0-da114677fbbb)
    Given que eu esteja no formulário de cadastro das Casas Bahia
    When eu preencher os campos "<nome>","<cpf>","<ddd1>","<tel>","<ddd2>","<cel>","<dia>","<mes>","<ano>","<email>","<email2>","<senha>","<senha2>"
    Then o sistema deve exibir uma mensagem de sucesso

    Examples:
      | nome | cpf | ddd1 | tel | ddd2 | cel | dia | mes | ano | email | email2 | senha | senha2 | hiptest-uid |
      | "Fabio Araujo" | "63074597437" | "11" | "30223021" | "21" | "97775363" | "15" | "12" | "1980" | "teste1@teste.com.br" | "teste1@teste.com.br" | "Teste@1234" | "Teste@1234" | uid:48235341-97de-44ee-a6cb-bd1ea3be76e0 |
      | "Ana Lucia" | "63074597437" | "11" | "30223022" | "21" | "97775364" | "16" | "11" | "1981" | "teste1@teste.com.br" | "teste1@teste.com.br" | "Teste@1235" | "Teste@1235" | uid:feb8f057-41b8-465a-a18a-9b871c187457 |

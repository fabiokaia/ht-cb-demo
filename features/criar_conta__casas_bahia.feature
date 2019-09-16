@JIRA-QAUTO-4017 
Feature: Criar conta - Casas Bahia
    Como um consumidor final
    Quero criar conta no site das Casas Bahia
    Para poder fazer compras online

  @cadastro
  Scenario Outline: Cadastro com campos obrigatórios inválidos (uid:f6a72ae1-2130-4f59-be0c-5cb75865d49c)
    Given que eu esteja no formulário de cadastro das Casas Bahia
    When eu preencher os campos "<nome>","<cpf>","<ddd1>","<tel>","<ddd2>","<cel>","<dia>","<mes>","<ano>","<email>","<email2>","<senha>","<senha2>" inválidos
    And clicar no botão Continuar
    Then o sistema deve exibir uma "<mensagem>" de erro

    Examples:
      | nome | cpf | ddd1 | tel | ddd2 | cel | dia | mes | ano | email | email2 | senha | senha2 | mensagem | hiptest-uid |
      | "" | "63074597437" | "11" | "30223022" | "21" | "97775364" | "16" | "11" | "1981" | "teste2@teste.com.br" | "teste2@teste.com.br" | "1235" | "1235" | "O campo nome é obrigatório." | uid:676b4d50-f573-4674-8e1b-ee28831e9555 |
      | "Fabio Araujo" | "10471506203" | "11" | "30223021" | "21" | "97775363" | "15" | "12" | "1980" | "teste1@teste.com.br" | "teste1@teste.com.br" | "1234" | "1234" | "CPF inválido." | uid:1b17b161-ba41-42d4-93f5-c4fdf8090670 |
      | "José da Silva" | "" | "11" | "30223021" | "21" | "97775363" | "15" | "12" | "1980" | "teste1@teste.com.br" | "teste1@teste.com.br" | "1234" | "1234" | "CPF é um campo obrigatório." | uid:0a3d4cd7-a60b-4bf2-a8a0-01810b323abe |
      | "Ana Lucia" | "63074597437" | "" | "30223022" | "21" | "97775364" | "16" | "11" | "1981" | "teste2@teste.com.br" | "teste2@teste.com.br" | "1235" | "1235" | "DDD do telefone é um campo obrigatório." | uid:c3a3ba1f-2cc9-49f8-9821-316c8fdf7405 |
      | "Flavio Figueiredo" | "63074597437" | "11" | "" | "21" | "97775365" | "17" | "12" | "1982" | "teste2@teste.com.br" | "teste2@teste.com.br" | "1236" | "1236" | "O campo telefone é obrigatório" | uid:448a29d7-0353-4535-83d8-3b5dd7179700 |
      | "Felipe Jacarini" | "63074597437" | "11" | "30223024" | "" | "97775367" | "18" | "10" | "1983" | "teste3@teste.com.br" | "teste3@teste.com.br" | "1237" | "1237" | "DDD do celular é um campo obrigatório." | uid:af43da9d-2006-4014-a34c-c450b61a60d2 |
      | "Isis de Monaco" | "63074597437" | "11" | "30223025" | "21" | "" | "10" | "11" | "1984" | "teste4@teste.com.br" | "teste4@teste.com.br" | "1238" | "1238" | "O campo celular é obrigatório" | uid:f802748e-9246-41ea-89a8-51aecff62144 |
      | "Maria do Carmo" | "63074597437" | "11" | "30223026" | "21" | "97775368" | "" | "12" | "1975" | "teste5@teste.com.br" | "teste5@teste.com.br" | "1239" | "1239" | "O campo Dia é obrigatório" | uid:cb53f84f-b837-4df8-b0c3-9429cc55b77b |
      | "Moacir de Monaco" | "63074597437" | "11" | "30223027" | "21" | "97775369" | "21" | "" | "1976" | "teste6@teste.com.br" | "teste6@teste.com.br" | "1240" | "1240" | "O campo Mês é obrigatório" | uid:4674b35a-b937-4d64-9b80-9d5abf665f2f |
      | "Lourenço Primon" | "63074597437" | "11" | "30223027" | "21" | "97775369" | "21" | "10" | "" | "teste6@teste.com.br" | "teste6@teste.com.br" | "1240" | "1240" | "O campo Ano é obrigatório" | uid:88b6b784-f578-4b64-b230-4ecf1b878575 |
      | "Arthur Jacarini" | "63074597437" | "11" | "30223027" | "21" | "97775369" | "21" | "10" | "1981" | "" | "teste6@teste.com.br" | "1240" | "1240" | "O campo E-mail é obrigatório" | uid:08a3ca89-a1f2-45cb-b2c3-3f07bb5f32b0 |
      | "Bernardo Silva" | "63074597437" | "11" | "30223027" | "21" | "97775369" | "21" | "10" | "1982" | "teste6@teste.com.br" | "" | "1240" | "1240" | "O campo Confirmar E-mail é obrigatório" | uid:bf80517b-0aa8-4e8e-a7d8-0c1979a89df6 |
      | "Clara Silva" | "63074597437" | "11" | "30223027" | "21" | "97775369" | "21" | "10" | "1983" | "teste6@teste.com.br" | "teste6@teste.com.br" | "" | "1240" | "O campo Senha é obrigatório" | uid:729c0d8a-6c52-43a3-9d09-dc4b6a75481f |
      | "João Pedro" | "63074597437" | "11" | "30223027" | "21" | "97775369" | "21" | "10" | "1972" | "teste6@teste.com.br" | "teste6@teste.com.br" | "1240" | "" | "O campo Confirmar Senha é obrigatório" | uid:fb8c0ddc-4b0d-46ae-856a-f76d055ebf6e |

  @cadastro
  Scenario Outline: Cadastro com campos obrigatórios válidos (uid:0c988d65-4301-4efa-8eb2-12a6b71d85c6)
    Given que eu esteja no formulário de cadastro das Casas Bahia
    When eu preencher os campos "<nome>","<cpf>","<ddd1>","<tel>","<ddd2>","<cel>","<dia>","<mes>","<ano>","<email>","<email2>","<senha>","<senha2>"
    Then o sistema deve exibir uma mensagem de sucesso

    Examples:
      | nome | cpf | ddd1 | tel | ddd2 | cel | dia | mes | ano | email | email2 | senha | senha2 | hiptest-uid |
      | "Fabio Araujo" | "63074597437" | "11" | "30223021" | "21" | "97775363" | "15" | "12" | "1980" | "teste1@teste.com.br" | "teste1@teste.com.br" | "Teste@1234" | "Teste@1234" | uid:eee01e4e-7939-4c1a-b656-d45c118dae9c |
      | "Ana Lucia" | "63074597437" | "11" | "30223022" | "21" | "97775364" | "16" | "11" | "1981" | "teste1@teste.com.br" | "teste1@teste.com.br" | "Teste@1235" | "Teste@1235" | uid:00d51796-49fd-42fa-9cc7-05a55e8693db |

# encoding: UTF-8

require_relative 'actionwords'
World(Actionwords)

Dado /^que eu esteja no formulário de cadastro das Casas Bahia$/ do
  que_eu_esteja_no_formulario_de_cadastro_das_casas_bahia
end

Quando /^eu preencher os campos "(.*)","(.*)","(.*)","(.*)","(.*)","(.*)","(.*)","(.*)","(.*)","(.*)","(.*)","(.*)","(.*)" inválidos$/ do |p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13|
  eu_preencher_os_campos_p1p2p3p4p5p6p7p8p9p10p11p12p13_invalidos(p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13)
end

E /^clicar no botão Continuar$/ do
  clicar_no_botao_continuar
end

Então /^o sistema deve exibir uma "(.*)" de erro$/ do |p1|
  o_sistema_deve_exibir_uma_p1_de_erro(p1)
end

Quando /^eu preencher os campos "(.*)","(.*)","(.*)","(.*)","(.*)","(.*)","(.*)","(.*)","(.*)","(.*)","(.*)","(.*)","(.*)"$/ do |p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13|
  eu_preencher_os_campos_p1p2p3p4p5p6p7p8p9p10p11p12p13(p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13)
end

Então /^o sistema deve exibir uma mensagem de sucesso$/ do
  o_sistema_deve_exibir_uma_mensagem_de_sucesso
end

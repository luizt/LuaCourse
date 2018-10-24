-- License GPLv3
-- Copyright 2018 Luiz Torro
-- Author: luiz.torro@gmail.com

--[[
Considere o formato de requisições HTTP:
  <método> <sp> <URI> <sp> <HTTP-Version>
onde método é uma string composta de caracteres maiúsculos [A-Z], sp
corresponde a um ou mais espaços, URI é uma string que especifica o “recurso”
sobre o qual será aplicado a requisição (composta de caracteres “printáveis”),
e HTTP-Version especifica a versão do protocolo HTTP usado (considere as opções
HTTP/1.0 e HTTP/1.1)

Escreva uma função Lua que receba uma requisição HTTP e, caso o método
especificado seja “GET” ou “HEAD”, retorne a URI e a versão do
protocolo HTTP (0 ou 1). Se a requisição não corresponde a nenhum
desses métodos, a função deve retornar nil.
Teste sua função com algumas requisições, por exemplo
  GET http://www.w3.org/pub/WWW/TheProject.html HTTP/1.1 POST /cgi-bin/process.cgi HTTP/1.1
  HEAD /query.html HTTP/1.0
  OPTIONS * HTTP/1.
]]
1

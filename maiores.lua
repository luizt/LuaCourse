-- License GPLv3
-- Copyright 2018 Luiz Torro
-- Author: luiz.torro@gmail.com

--[[
Considere uma tabela que representa uma sequência de
números inteiros, como, por exemplo:
  t = {1, 5, -2, 20, 0}
Escreva uma função maiores em Lua que receba uma sequência
de números inteiros e um valor inteiro, e retorne uma tabela
onde cada elemento é uma tabela do tipo “record” contendo o
índice e o valor dos elementos da sequência recebida cujo valor
seja maior que o segundo parâmetro.
➔ cada elemento da tabela retornada deve ter como chaves as
strings : “indice” e “valor”
]]

function maiores(t, v)
	local ret = {}
	local total = 1

	for i = 1, #t do
		if t[i] > v then
			ret[total] = {indice = i, valor = t[i]}
			total = total + 1
		end
	end

	return total, ret
end

local qtd, res = maiores({2, 43, 23, 48, 34, 20, 29} , 25)

print('Valores maiores:')
for _, v in pairs(res) do
	print('Indice: %2d\tValor: %3d', v.indice, v.valor)
end

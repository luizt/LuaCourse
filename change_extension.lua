-- 1. Escreva uma função Lua que receba uma tabela contendo nomes
-- de arquivos e retorne uma tabela onde os arquivos com extensão
-- jpeg tenham sua extensão trocada para jpg. Considere que os nomes
-- de arquivos tem o formato <nome>[.<ext>], ou seja, a extensão é opcional.
-- Teste sua função com a tabela
-- {"arq.jpeg", "arqjpeg", "arq.jpeg.jpeg", "arq.txt"} 
-- Dica: Lembre-se que a extensão está no final da string!

--string = require('string')
print('inicio')
function change_extension(name)
	local newname = name:gsub('(.+)([%.]jpeg)$', '%1.jpg')
	return newname
end

local names = {"arq.jpeg", "arqjpeg", "arq.jpeg.jpeg", "arq.txt"} 

for _, v in pairs(names) do
	local newname = change_extension(v)
	print(string.format('Nome original: %20s\tNovo nome: %20s', v, newname))	
end

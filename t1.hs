-- 1.Crie uma função isVowel :: Char -> Bool que verifique se um caracter é uma vogal ou não.

isVowel :: Char -> Bool
isVowel c = if c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u' || c == 'A' || c == 'E' || c == 'I' || c == 'O' || c == 'U' then True else False 


-- 2.Escreva uma função addComma, que adicione uma vírgula no final de cada string contida numa lista.

addComma :: [String] -> [String]
addComma lis = map (\s -> s ++ ",") lis


-- 3.Crie uma função htmlListItems :: [String] -> [String], que receba uma lista de strings e retorne outra lista contendo as strings formatadas como itens de lista em HTML. Resolva este exercício COM e SEM funções anônimas (lambda). Exemplo de uso da função:

htmlListItems :: [String] -> [String]
htmlListItems lis = map(\s -> "<LI>"++ s ++ "</LI>") lis


-- 4.Defina uma função que receba uma string e produza outra retirando as vogais, conforme os exemplos abaixo. Resolva este exercício COM e SEM funções anônimas (lambda).

--delVowel :: [String] -> [String]
--delVowel lis = map(\s -> map(\c -> if c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u' then let c = null ) s ) lis
--tentei esses absurdos por um tempo, mas no fim encontrei a resolução abaixo pesquisando (inclusive estava tentando resolver como uma lista de strings pra piorar x.x)
removeVowel :: String -> String
removeVowel str = [c | c <- str, not (c `elem` "aeiouAEIOU")]


-- 5.Defina uma função que receba uma string, possivelmente contendo espaços, e que retorne outra string substituindo os demais caracteres por '-', mas mantendo os espaços. Resolva este exercício COM e SEM funções anônimas (lambda). 

subLetter :: String -> String
subLetter str = [c | c <- str , (c `elem` " ")]


-- 6.Escreva uma função firstName :: String -> String que, dado o nome completo de uma pessoa, obtenha seu primeiro nome. Suponha que cada parte do nome seja separada por um espaço e que não existam espaços no início ou fim do nome. 

firstName :: String -> String
firstName str = takeWhile(>' ') str


-- 7.Escreva uma função isInt :: String -> Bool que verifique se uma dada string só contém dígitos de 0 a 9.

--isInt :: String -> Bool


-- 8.Escreva uma função lastName :: String -> String que, dado o nome completo de uma pessoa, obtenha seu último sobrenome. Suponha que cada parte do nome seja separada por um espaço e que não existam espaços no início ou fim do nome

lastName :: String -> String
lastName str = dropWhile(>' ')str


-- 9.Escreva uma função userName :: String -> String que, dado o nome completo de uma pessoa, crie um nome de usuário (login) da pessoa, formado por: primeira letra do nome seguida do sobrenome, tudo em minúsculas.

--userName :: String -> String
--userName str = 
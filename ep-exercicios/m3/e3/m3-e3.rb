#########################################
## Preencha todas as ocorrÃªncias de __ ##
#########################################


# Operadores condicionais (if/else)
#

# AtribuiÃ§Ã£o de valores com condiÃ§Ãµes
if true
  resultado = 'valor_verdadeiro'
else
  resultado = 'valor_falso'
end
assert_equal "valor_verdadeiro", resultado

resultado = 'valor_inicial'
if true
  resultado = 'valor_verdadeiro'
end
assert_equal "valor_verdadeiro", resultado

resultado = 'valor_inicial'
if false
  resultado = 'valor_falso'
end
assert_equal "valor_inicial", resultado

# Uso de if com uma Ãºnica linha de cÃ³digo
resultado = 'valor_inicial'
resultado = 'valor_verdadeiro' if true
assert_equal "valor_verdadeiro", resultado

resultado = 'valor_inicial'
resultado = 'valor_falso' if false
assert_equal "valor_inicial", resultado


# Operadores de iteraÃ§Ã£o
#

i = 1
resultado = 1
while i <= 10
  resultado = resultado * i
  i += 1
end
assert_equal 3628800, resultado

# Uso de break
i = 1
resultado = 1
while true
  break if i > 10
  resultado = resultado * i
  i += 1
end
assert_equal 3628800, resultado

# Uso de next
i = 1
resultado = 1
while i <= 10
  if (i % 2) == 0
    i += 1
    next
  else
    resultado = resultado * i
    i += 1
  end
end
assert_equal 945, resultado

# Uso do mÃ©todo #times
soma = 0
10.times do
  soma += 1
end
assert_equal 10, soma

sum = 0
10.times do |i|
  sum += i
end
assert_equal 45, sum

# Iterar pelos elementos de um Array
lista = [1, 2, 3]
soma = 0
lista.each do |elemento|
  soma += elemento
end
assert_equal 6, soma
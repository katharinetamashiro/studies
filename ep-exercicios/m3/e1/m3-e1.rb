#########################################
## Preencha todas as ocorrÃªncias de __ ##
#########################################


# Boolean (true/false)
#
def tipo_valor(condicao)
  if condicao
    'verdadeiro'
  else
    'falso'
  end
end
assert_equal 'verdadeiro', tipo_valor(true) # este exemplo jÃ¡ estÃ¡ preenchido
assert_equal 'falso', tipo_valor(false)
assert_equal 'falso', tipo_valor(nil)
assert_equal 'verdadeiro', tipo_valor(1)
assert_equal 'verdadeiro', tipo_valor(0)
assert_equal 'verdadeiro', tipo_valor([])
assert_equal 'verdadeiro', tipo_valor({})
assert_equal 'verdadeiro', tipo_valor('Caracteres')
assert_equal 'verdadeiro', tipo_valor('')


# String
#

# ConcatenaÃ§Ã£o
string = 'Ola, ' + 'Mundo'
assert_equal 'Ola, Mundo', string

ola = 'Ola, '
mundo = 'Mundo'
string = ola + mundo
assert_equal 'Ola, ', ola
assert_equal 'Mundo', mundo

ola = 'Ola, '
mundo = 'Mundo'
ola += mundo
assert_equal 'Ola, Mundo', ola

# Quebra de linha
string = "\n"
assert_equal 1, string.size

string = '\n'
assert_equal 2, string.size

# InterpolaÃ§Ã£o
valor = 123
string = "valor: #{valor}"
assert_equal "valor: 123", string

valor = 123
string = 'valor: #{valor}'
assert_equal "valor: \#{valor}", string

# OperaÃ§Ã£o de "slice" em Strings
string = 'Arroz, FeijÃ£o e batata frita'
assert_equal "Fei", string[7,3]
assert_equal "Fei", string[7..9]
assert_equal "r", string[1]
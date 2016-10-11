# Qual o motivo do erro da requisição feita em 31/07/2016 às 06:11:20?


# A data e a hora da requisção.
# O endereço IP que fez a requisição.
# O status gerado pelo servidor (OK, ALERTA ou ERRO).
# O caminho completo do arquivo acessado.
# No caso de erro, é apresentado o motivo do erro no final da linha, entre parênteses.

FILE = File.open('log-do-servidor.log')
def most_called
    ip_hash = Hash.new
    FILE.each_line do |line|
        ip = line.match(/\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}/).to_s
        if (ip_hash.has_key?(ip))
            ip_hash[ip] += 1
        else
            ip_hash[ip] = 1
        end
    end
    max = ip_hash.values.max
    key = ip_hash.key(max)
    puts "#{key} => #{max}"
end

def requisitions
    n = 0
    FILE.each_line do |line|
        if (line.match(/ALERTA|ERRO/))
            n += 1
        end
    end
    puts n
end
def especific_search
    file_name = ""
    FILE.each_line do |line|
        file_date = line.match(/2016-07-21\s00:17:50\s-\s.*\/(\w+\.\w+)/)
        if (file_date)
            file_name = file_date[1]
        end
    end
    puts file_name
end
def error
    error = ""
    FILE.each_line do |line|
        file_date = line.match(/2016-07-31\s06:11:20\s-\s.*\((.*)\)/) 
        if file_date
            error = file_date[1]
        end
    end
    puts error
end
class M5E1
    NOTICIAS = "09:55 - [política] Prefeito da Krakosia é eleito o melhor para economia\n" +
                "10:14 - [cotidiano] Cachorro salva dono de assalto\n" +
                "11:01 - [esporte] Seleção local de golfe se classifica para mundial\n" +
                "11:36 - [esporte] João da Silva Sauro é cortado da seleção de golfe\n" +
                "13:19 - [economia] Desemprego sobe para 12% no último mês\n" +
                "14:55 - [política] Lei de incentivo ao esporte é aprovada no senado às 10:20\n" +
                "16:13 - [economia] Cotação do dólar sobe 5% em uma semana\n" +
                "19:26 - [esporte] Liga nacional de basquete tem recorde de público"
    # def format_news
    #     str = ""
    #     n = NOTICIAS.lines.count
    #     i = 1
    #     NOTICIAS.each_line do |line|
    #         regex = line.match(/^(\d{2}:\d{2}).*\[(.*)\](.*$)/)
    #         str << "#{regex[2]}:#{regex[3]} (#{regex[1]})"
    #         if (i < n)
    #             str << "\n"
    #             i += 1
    #         end
    #     end
    #     str
    # end
    def format_news 
        new_news = "" 
        NOTICIAS.each_line do |line| 
            captures = line.match(/(\d{2}:\d{2})\s-\s\[(.*)\](.*)(\n)?/) 
            type = captures[2] 
            headline = captures[3] 
            time = captures[1] 
            next_line = captures[4] 
            new_news += "#{type}:#{headline} (#{time})#{next_line}" 
        end
        return new_news 
    end 
    def find_economy_dollar_news
        n = 0
        if (NOTICIAS.match(/\[economia\].*dólar.*$/))
            n += 1
        end
    end
    def find_times
       array = NOTICIAS.scan(/^\d{2}:\d{2}/)
       array
    end
end
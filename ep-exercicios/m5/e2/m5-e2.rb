class M5E2
    def cpf_validation(cpf)
        if cpf.match(/\d{3}\.?\d{3}\.?\d{3}-?\d{2}/)
            return true
        else 
            return false
        end
    end
    def email_validation(email)
        if email.match(/^(\w+\.*)+@([a-zA-Z]*\d*\.*)+$/)
            return true
        else
            return false
        end
    end
    def price_validation(price)
        if price.match(/^(R\$\s?[1-9]\d{0,2}(\.\d{3})*,\d{2}|U\$\s?[1-9]\d{0,2}(,\d{3})*\.\d{2})$/)
            return true
        else
            return false
        end
    end
end
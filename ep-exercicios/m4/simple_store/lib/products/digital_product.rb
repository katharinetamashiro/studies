class DigitalProduct < Product
    attr_reader :expiration_date, :url
    def initialize(list)
        super
        self.expiration_date = expiration_date
        self.url = url
    end
    def expiration_date=(expiration_date)
        begin
            expiration_date = Date.parse(expiration_date)
        rescue 
        end
        if (expiration_date.is_a?(Date) == false) || (expiration_date < Date.today) 
            fail SimpleStore::Error, "O produto não pode estar vencido"
        end
    end
    def url=(url)
        @url = url.to_s
        if url[0..3] != "http"
            fail SimpleStore::Error, 'A URL do produto deve ser válida'
        end
    end
    include DiscountEligible
end
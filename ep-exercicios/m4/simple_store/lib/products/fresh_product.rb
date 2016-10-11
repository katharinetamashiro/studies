class FreshProduct < Product
    attr_reader :expiration_date
    def initialize(list)
        super
        self.expiration_date = expiration_date
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
    include DiscountEligible
end

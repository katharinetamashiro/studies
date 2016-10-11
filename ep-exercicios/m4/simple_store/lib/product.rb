class Product
    attr_accessor :barcode
    attr_reader :title, :price, :code, :manufacturer_code, :manufacturer

    def initialize(list)
        list.each do |key, value|
            instance_variable_set("@#{key}", value)
        end
        self.title = title
        self.price = price
        self.barcode = barcode
        self.manufacturer_code = manufacturer_code
        self.manufacturer = manufacturer
        self.code = code
    end
    def title=(titulo)
        @title = titulo.to_s
        if (@title == '') || (@title == nil)
            fail SimpleStore::Error, "O título do produto não pode ser vazio"
        end
    end
    def price=(price)
        @price = price.to_f
        if (@price <= 0) || (@price == nil)
            fail SimpleStore::Error, "O preço do produto deve ser >= 0.0"
        end
    end
    def manufacturer=(manufacturer)
        @manufacturer = SimpleStore::AUTHORIZED_MANUFACTURERS.key(manufacturer_code)
    end
    def manufacturer_code=(manufacturer_code)
        if SimpleStore::AUTHORIZED_MANUFACTURERS.has_value?(manufacturer_code) == false
            fail SimpleStore::Error, "O fabricante não está autorizado"
        end
    end
    def code=(code)
        @code = generate_control_code
    end
    private
    def generate_control_code
        "#{SimpleStore::PRODUCT_TYPES["#{self.class}".to_sym]}--#{"#{SimpleStore::AUTHORIZED_MANUFACTURERS[manufacturer]}"}--#{barcode}"
    end
end
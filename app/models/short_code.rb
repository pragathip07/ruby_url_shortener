class ShortCode
    ALPHABET = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".freeze
    BASE = ALPHABET.length

    # 1024

    def self.encode(number)
        return ALPHABET.first if number.zero? || number.nil?

        result = ""
        
        while number > 0 do
            index = remainder = number % BASE
            result.prepend ALPHABET[index]

            number = number/BASE
        end

        result
    end

    def self.decode(string)
    end
end
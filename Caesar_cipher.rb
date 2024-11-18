class CaesarCipher
    def new_sentens(sentens, n)
        alphabet = ('a'..'z').to_a
        alphabet_big = ('A'..'Z').to_a
        new_sentens = []

        sentens.chars.each do |letter|
            if alphabet.include?(letter)
                original_index = alphabet.index(letter)
                new_index = (original_index + n) % 26
                new_sentens << alphabet[new_index]
            elsif
                alphabet_big.include?(letter)
                original_index = alphabet_big.index(letter)
                new_index = (original_index + n) % 26
                new_sentens << alphabet_big[new_index]
            else
                new_sentens << letter
            end 
        end 
        new_sentens.join("")
    end
end

cipher = CaesarCipher.new
puts cipher.new_sentens("What a string!", 5)

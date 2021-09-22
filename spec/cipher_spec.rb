require '../Caesar_cipher.rb'

describe CaesarCipher do
  cipher = CaesarCipher.new

  describe '#shift' do
    it 'works with small shifts ' do
      expect(cipher.shift('Aa', 3)).to eql('Dd')
    end

    it 'works with small negative shifts' do
      expect(cipher.shift('Dd', -3)).to eql('Aa')
    end

    it 'wraps from a to z' do
      expect(cipher.shift('Ww', 5)).to eql('Bb')
    end

    it 'works with symbols and numbers' do
      expect(cipher.shift('Hello, World! 12', 23)).to eql('Ebiil, Tloia! 12')
    end

    it 'works with large shifts' do
      expect(cipher.shift('Hello, World!', 75)).to eql('Ebiil, Tloia!')
    end

    it 'works with large negative shifts' do
      expect(cipher.shift('Hello, World!', -55)).to eql('Ebiil, Tloia!')
    end
  end
end

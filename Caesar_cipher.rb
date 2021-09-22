class CaesarCipher
  def shift(string, shift_factor)
    shift_factor %= 26
    shifted_array = string.bytes.map do |ord|
      base, limit = ord <= 90 ? [65, 90] : [97, 122]
      if ord.between?(base, limit)
        ord -= 26 if ord + shift_factor > limit
        ord += shift_factor
      end
      ord.chr
    end
    shifted_array.join
  end
end

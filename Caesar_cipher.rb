class CaesarCipher
  def shift(string, shift_factor)
    # accounts for any shift_factor over 26
    shift_factor %= 26
    # bytes returns an array storing the ordinal value of each letter in the calling string
    shifted_array = string.bytes.map do |ord|
      base, limit = ord <= 90 ? [65, 90] : [97, 122]
      # excludes punctuation
      if ord.between?(base, limit)
        ord -= 26 if ord + shift_factor > limit
        ord += shift_factor
      end
      # chr returns the string equivalent of the integer its called on
      ord.chr
    end
    shifted_array.join
  end
end

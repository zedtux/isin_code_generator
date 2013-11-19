require "isin_code_generator/version"

module IsinCodeGenerator
  def self.make(home_country_iso)
    raise ArgumentError if home_country_iso.length > 2
    raise ArgumentError if home_country_iso.include?(" ")

    code = home_country_iso + (1..9).collect{(rand*10).floor}.join
    code << ("0".."9").detect do |c|
      base10 = ""
      (code + c).each_char{|c| base10 += c.to_i(36).to_s}
      checksum = 0
      len = base10.length-1
      parity = len%2
      (0..len).each do |i|
        i = len-i
        weighted = base10[i, 1].to_i << ((i-parity)&1)
        checksum += weighted%10 + weighted/10
      end
      checksum%10==0
    end
  end
end

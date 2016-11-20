module Converter
  def self.to_ascii(hex)
    [hex].pack("H*")
  end

  def self.to_hex(ascii)
    ascii.unpack("H*")
  end
end

str = "Look mom, no hands"
hex = "4c6f6f6b206d6f6d2c206e6f2068616e6473"

p Converter.to_hex(str) # hex
p Converter.to_ascii(hex) # str
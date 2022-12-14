def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  ciphertext_chars = plaintext.chars.map do |char|
    (35 + cipher.find_index(char)).chr
  end
  return ciphertext_chars.join
end
 

def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  plaintext_chars = ciphertext.chars.map do |char|
    cipher[char.ord - 35]
  end
  return plaintext_chars.join
end

p encode("theswiftfoxjumpedoverthelazydog", "secretkey")


decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")

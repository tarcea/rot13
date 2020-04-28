def rot13(secret_messages)
  # write a method which takes an array of strings (containing secret enemy message bits!)
  # and decodes its elements using ROT13 cipher system; returning an array containing
  # the final messages.
  am = ('a'..'m').to_a
  ab = ('A'..'M').to_a
  nz = ('n'..'z').to_a
  nn = ('N'..'Z').to_a
  secret_messages.map do |secret_message|
    decoded_message = secret_message.split('').map do |letter|
      if am.include?(letter)
        index = am.index(letter)
        nz[index]
      elsif ab.include?(letter)
        index = ab.index(letter)
        nn[index]
      elsif nz.include?(letter)
        index = nz.index(letter)
        am[index]
      elsif nn.include?(letter)
        index = nn.index(letter)
        ab[index]
      else
        letter
      end
    end
    decoded_message.join('')
  end
end
# tests
p rot13(['Why did the chicken cross the road?', 'Gb trg gb gur bgure fvqr!',
         'Jul qvq gur puvpxra pebff gur ebnq?', 'To get to the other side!'])

#!/usr/bin/ruby

# show the file in hex format
def hexdump(file,  width = 16)
  start, counter, ascii, hex, line = -16, 0, '', '', ''
  file.each_byte do |c|                       # addr:   000010:
    hex += "%02x" %c                          # hex:    62 6f 6e
    ascii << (c.between?(32, 126) ? c : '.')  # ascii:  b  o  n
    counter += 1                              # #################
    if counter >= width                       # 000010: 62 6f 6e  bon
      line = "%08x: " %start+= 16               
      37.times {|i| hex.insert(i-1, ' ') if i%5 == 0}
      hex.insert(hex.length,' ')
      puts line + hex + ascii
      line = ''; hex = ''; ascii = ''; counter = 0
    end
  end
  if !ascii.empty? then
      miss = width - ascii.length
      hex += '  ' * miss
      line = "%08x: " %start+= 16               
      (hex.length+5).times {|i| hex.insert(i-1, ' ') if i%5 == 0}
      hex.insert(hex.length,' ')
      puts line + hex + ascii
  end
end

# check argument
case
when ARGV[0] == "-h"
  puts("usage : #{__FILE__} [file]"); exit 1
when ARGV.length == 0
  file = $stdin
else
  file = File.new ARGV[0]
end
hexdump file

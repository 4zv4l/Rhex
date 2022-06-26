# Rhex
A ruby script to show hex dump from file
# Input
The script can either read from a file or from stdin  
- `./hex.rb test`             : wil show the content of test in hex
- `echo "bonjour" | ./hex.rb` : will show 'bonjour' in hex
- `./hex.rb`                  : will put user input in hex in real time
# Output
The output is the same as the `xxd` command
# Test
You can use the `test` binary (simple ELF hello world program)
to test the script, here would be the expected behavior:
```bash
$ ./hex.rb test
00000000: 7f45 4c46 0201 0100 0000 0000 0000 0000  .ELF............
00000010: 0200 3e00 0100 0000 7800 4000 0000 0000  ..>.....x.@.....
00000020: 4000 0000 0000 0000 0000 0000 0000 0000  @...............
00000030: 0000 0000 4000 3800 0100 0000 0000 0000  ....@.8.........
00000040: 0100 0000 0500 0000 0000 0000 0000 0000  ................
00000050: 0000 4000 0000 0000 0000 4000 0000 0000  ..@.......@.....
00000060: aa00 0000 0000 0000 aa00 0000 0000 0000  ................
00000070: 0010 0000 0000 0000 b801 0000 00bf 0100  ................
00000080: 0000 48be 9d00 4000 0000 0000 ba0d 0000  ..H...@.........
00000090: 000f 05b8 3c00 0000 4831 ff0f 0568 656c  ....<...H1...hel
000000a0: 6c6f 2c20 776f 726c 640a                 lo, world.
```

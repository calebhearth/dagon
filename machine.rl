$line = 0
$column = 0
$tokens = []
%%{
  machine new_parser;
  identifier = '-'? lower (lower | digit | '-')*;
  assignment = ':';
  literal = digit;
  newline = "\r"? "\n" | "\r";

  main := |*
    identifier => { emit(:variable, data, ts, te) };
    assignment => { emit(:assignment, data, ts, te) };
    literal => { emit(:literal, data, ts, te) };
    newline => { $line += 1; $column = 0 };
    space { emit(:space, data, ts, te) };
  *|;
}%%

%% write data;

def emit(name, data, start_char, end_char)
  $tokens << [[$line, $column], name, data[start_char...end_char]]
  $column += end_char - start_char
end

def tokenize(data)
  eof = data.length
  %% write init;
  %% write exec;
end

program = DATA.read
tokenize program
puts $tokens.inspect

__END__
xy: 5
y: 4

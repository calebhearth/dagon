
# line 1 "dagon/scanner.rl"
# vim: set syntax=ruby:

=begin

# line 61 "dagon/scanner.rl"

=end

module Dagon
  class Token < Struct.new(:data, :line); end
  class Scanner

    def initialize
      
# line 18 "build/scanner.rb"
class << self
	attr_accessor :_new_parser_actions
	private :_new_parser_actions, :_new_parser_actions=
end
self._new_parser_actions = [
	0, 1, 0, 1, 1, 1, 2, 1, 
	5, 1, 6, 1, 7, 1, 8, 1, 
	9, 1, 10, 1, 11, 1, 12, 1, 
	13, 1, 14, 1, 15, 1, 16, 1, 
	17, 1, 18, 1, 19, 1, 20, 1, 
	21, 1, 22, 1, 23, 1, 24, 1, 
	25, 1, 26, 1, 27, 1, 28, 1, 
	29, 1, 30, 1, 31, 1, 32, 1, 
	33, 1, 34, 1, 35, 1, 36, 1, 
	37, 2, 2, 3, 2, 2, 4
]

class << self
	attr_accessor :_new_parser_key_offsets
	private :_new_parser_key_offsets, :_new_parser_key_offsets=
end
self._new_parser_key_offsets = [
	0, 1, 2, 3, 5, 6, 8, 9, 
	11, 11, 13, 15, 46, 48, 60, 62, 
	64, 65, 66, 71, 73, 78, 81, 83, 
	84, 91, 97, 103, 109, 115, 121, 127, 
	133, 139, 145, 151, 157, 163, 169, 175, 
	181, 187
]

class << self
	attr_accessor :_new_parser_trans_keys
	private :_new_parser_trans_keys, :_new_parser_trans_keys=
end
self._new_parser_trans_keys = [
	61, 32, 38, 32, 42, 32, 32, 61, 
	124, 34, 92, 10, 13, 48, 57, 10, 
	13, 32, 33, 34, 35, 40, 41, 44, 
	45, 46, 58, 64, 91, 93, 101, 102, 
	105, 116, 118, 119, 123, 125, 9, 12, 
	48, 57, 65, 90, 97, 122, 10, 13, 
	32, 33, 38, 42, 43, 45, 47, 61, 
	94, 124, 60, 62, 34, 92, 10, 13, 
	10, 32, 62, 48, 57, 97, 122, 48, 
	57, 45, 48, 57, 97, 122, 46, 48, 
	57, 48, 57, 32, 45, 48, 57, 65, 
	90, 97, 122, 45, 108, 48, 57, 97, 
	122, 45, 115, 48, 57, 97, 122, 45, 
	101, 48, 57, 97, 122, 45, 105, 48, 
	57, 97, 122, 45, 102, 48, 57, 97, 
	122, 45, 97, 48, 57, 98, 122, 45, 
	108, 48, 57, 97, 122, 45, 115, 48, 
	57, 97, 122, 45, 101, 48, 57, 97, 
	122, 45, 114, 48, 57, 97, 122, 45, 
	117, 48, 57, 97, 122, 45, 111, 48, 
	57, 97, 122, 45, 105, 48, 57, 97, 
	122, 45, 100, 48, 57, 97, 122, 45, 
	104, 48, 57, 97, 122, 45, 105, 48, 
	57, 97, 122, 45, 108, 48, 57, 97, 
	122, 0
]

class << self
	attr_accessor :_new_parser_single_lengths
	private :_new_parser_single_lengths, :_new_parser_single_lengths=
end
self._new_parser_single_lengths = [
	1, 1, 1, 2, 1, 2, 1, 2, 
	0, 2, 0, 23, 2, 10, 2, 2, 
	1, 1, 1, 0, 1, 1, 0, 1, 
	1, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2
]

class << self
	attr_accessor :_new_parser_range_lengths
	private :_new_parser_range_lengths, :_new_parser_range_lengths=
end
self._new_parser_range_lengths = [
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 1, 4, 0, 1, 0, 0, 
	0, 0, 2, 1, 2, 1, 1, 0, 
	3, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2
]

class << self
	attr_accessor :_new_parser_index_offsets
	private :_new_parser_index_offsets, :_new_parser_index_offsets=
end
self._new_parser_index_offsets = [
	0, 2, 4, 6, 9, 11, 14, 16, 
	19, 20, 23, 25, 53, 56, 68, 71, 
	74, 76, 78, 82, 84, 88, 91, 93, 
	95, 100, 105, 110, 115, 120, 125, 130, 
	135, 140, 145, 150, 155, 160, 165, 170, 
	175, 180
]

class << self
	attr_accessor :_new_parser_indicies
	private :_new_parser_indicies, :_new_parser_indicies=
end
self._new_parser_indicies = [
	1, 0, 2, 0, 1, 0, 2, 3, 
	0, 4, 0, 2, 1, 0, 1, 0, 
	7, 8, 6, 6, 10, 11, 9, 13, 
	12, 16, 16, 17, 18, 19, 20, 21, 
	22, 23, 24, 25, 27, 28, 30, 31, 
	33, 34, 35, 36, 37, 38, 39, 40, 
	15, 26, 29, 32, 14, 16, 16, 41, 
	43, 44, 45, 46, 1, 1, 1, 1, 
	1, 48, 47, 42, 7, 8, 6, 10, 
	11, 9, 10, 50, 51, 49, 53, 52, 
	32, 49, 52, 54, 32, 32, 32, 55, 
	56, 26, 54, 13, 57, 59, 58, 29, 
	29, 29, 29, 60, 32, 62, 32, 32, 
	61, 32, 63, 32, 32, 61, 32, 64, 
	32, 32, 61, 32, 35, 32, 32, 65, 
	32, 66, 32, 32, 61, 32, 67, 32, 
	32, 61, 32, 68, 32, 32, 61, 32, 
	69, 32, 32, 61, 32, 66, 32, 32, 
	61, 32, 70, 32, 32, 61, 32, 69, 
	32, 32, 61, 32, 71, 32, 32, 61, 
	32, 72, 32, 32, 61, 32, 66, 32, 
	32, 61, 32, 73, 32, 32, 61, 32, 
	74, 32, 32, 61, 32, 69, 32, 32, 
	61, 0
]

class << self
	attr_accessor :_new_parser_trans_targs
	private :_new_parser_trans_targs, :_new_parser_trans_targs=
end
self._new_parser_trans_targs = [
	11, 1, 11, 4, 11, 11, 7, 11, 
	8, 9, 11, 16, 11, 22, 11, 11, 
	12, 13, 11, 14, 15, 11, 11, 17, 
	18, 11, 21, 23, 11, 24, 11, 11, 
	20, 25, 30, 29, 34, 36, 39, 11, 
	11, 11, 11, 11, 0, 2, 3, 5, 
	6, 11, 11, 11, 19, 11, 11, 11, 
	10, 11, 11, 11, 11, 11, 26, 27, 
	28, 11, 20, 31, 32, 33, 35, 37, 
	38, 40, 41
]

class << self
	attr_accessor :_new_parser_trans_actions
	private :_new_parser_trans_actions, :_new_parser_trans_actions=
end
self._new_parser_trans_actions = [
	67, 0, 35, 0, 37, 69, 0, 9, 
	0, 0, 7, 0, 65, 0, 43, 41, 
	0, 5, 31, 5, 5, 17, 19, 0, 
	0, 29, 5, 0, 33, 0, 25, 27, 
	76, 0, 0, 0, 0, 0, 0, 21, 
	23, 45, 61, 15, 0, 0, 0, 0, 
	0, 63, 47, 39, 0, 13, 59, 71, 
	0, 57, 55, 11, 51, 53, 0, 0, 
	0, 49, 73, 0, 0, 0, 0, 0, 
	0, 0, 0
]

class << self
	attr_accessor :_new_parser_to_state_actions
	private :_new_parser_to_state_actions, :_new_parser_to_state_actions=
end
self._new_parser_to_state_actions = [
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 1, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0
]

class << self
	attr_accessor :_new_parser_from_state_actions
	private :_new_parser_from_state_actions, :_new_parser_from_state_actions=
end
self._new_parser_from_state_actions = [
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 3, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0
]

class << self
	attr_accessor :_new_parser_eof_trans
	private :_new_parser_eof_trans, :_new_parser_eof_trans=
end
self._new_parser_eof_trans = [
	1, 1, 1, 1, 1, 1, 1, 6, 
	6, 6, 13, 0, 42, 43, 50, 50, 
	51, 50, 50, 55, 56, 55, 58, 59, 
	61, 62, 62, 62, 66, 62, 62, 62, 
	62, 62, 62, 62, 62, 62, 62, 62, 
	62, 62
]

class << self
	attr_accessor :new_parser_start
end
self.new_parser_start = 11;
class << self
	attr_accessor :new_parser_first_final
end
self.new_parser_first_final = 11;
class << self
	attr_accessor :new_parser_error
end
self.new_parser_error = -1;

class << self
	attr_accessor :new_parser_en_main
end
self.new_parser_en_main = 11;


# line 70 "dagon/scanner.rl"
      # % fix syntax highlighting
    end

    def emit(name, data, start_char, end_char)
      handle_indents
      if @tokens.last && @tokens.last[0] == :IDENTIFIER && name == :LBRACKET
        @tokens << ['[', Token.new(data[start_char...end_char], @line)]
      else
        @tokens << [name, Token.new(data[start_char...end_char], @line)]
      end
      @column += end_char - start_char
    end

    def emit_string(data, start_char, end_char)
      handle_indents
      str = data[(start_char+1)...(end_char-1)]
      str = eval("\"#{str}\"") # ...
      @tokens << [:STRING, Token.new(str, @line)]
      @column += end_char - start_char
    end

    def handle_indents
      if @check_indents
        @check_indents = false
        if @indent_count > @last_indent_count
          (@indent_count - @last_indent_count).times do
            @tokens << [:INDENT, Token.new("  ", @line)]
          end
        elsif @indent_count < @last_indent_count
          (@last_indent_count - @indent_count).times do
            @tokens << [:DEDENT, Token.new("  ", @line)]
          end
          @last_indent_count = @indent_count
        end
      end
    end

    def problem(data, ts, te)
      puts "Unexpected \"#{data[ts...te]}\" on line #{@line}\n" +
            "#{@line}: #{@lines[@line-1]}"
      exit(1)
    end

    def self.tokenize data, filename
      new.tokenize(data, filename)
    end

    def reset
      @line = 1
      @column = 0
      @tokens = []
      @indent_count = 0
      @last_indent_count = 0
      @check_indents = true
    end

    def tokenize(data, filename)
      @filename = filename
      @data = data
      @lines = data.lines.to_a
      reset
      
# line 306 "build/scanner.rb"
begin
	p ||= 0
	pe ||= data.length
	cs = new_parser_start
	ts = nil
	te = nil
	act = 0
end

# line 132 "dagon/scanner.rl"
      eof = data.length
      
# line 319 "build/scanner.rb"
begin
	_klen, _trans, _keys, _acts, _nacts = nil
	_goto_level = 0
	_resume = 10
	_eof_trans = 15
	_again = 20
	_test_eof = 30
	_out = 40
	while true
	_trigger_goto = false
	if _goto_level <= 0
	if p == pe
		_goto_level = _test_eof
		next
	end
	end
	if _goto_level <= _resume
	_acts = _new_parser_from_state_actions[cs]
	_nacts = _new_parser_actions[_acts]
	_acts += 1
	while _nacts > 0
		_nacts -= 1
		_acts += 1
		case _new_parser_actions[_acts - 1]
			when 1 then
# line 1 "NONE"
		begin
ts = p
		end
# line 349 "build/scanner.rb"
		end # from state action switch
	end
	if _trigger_goto
		next
	end
	_keys = _new_parser_key_offsets[cs]
	_trans = _new_parser_index_offsets[cs]
	_klen = _new_parser_single_lengths[cs]
	_break_match = false
	
	begin
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + _klen - 1

	     loop do
	        break if _upper < _lower
	        _mid = _lower + ( (_upper - _lower) >> 1 )

	        if data[p].ord < _new_parser_trans_keys[_mid]
	           _upper = _mid - 1
	        elsif data[p].ord > _new_parser_trans_keys[_mid]
	           _lower = _mid + 1
	        else
	           _trans += (_mid - _keys)
	           _break_match = true
	           break
	        end
	     end # loop
	     break if _break_match
	     _keys += _klen
	     _trans += _klen
	  end
	  _klen = _new_parser_range_lengths[cs]
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + (_klen << 1) - 2
	     loop do
	        break if _upper < _lower
	        _mid = _lower + (((_upper-_lower) >> 1) & ~1)
	        if data[p].ord < _new_parser_trans_keys[_mid]
	          _upper = _mid - 2
	        elsif data[p].ord > _new_parser_trans_keys[_mid+1]
	          _lower = _mid + 2
	        else
	          _trans += ((_mid - _keys) >> 1)
	          _break_match = true
	          break
	        end
	     end # loop
	     break if _break_match
	     _trans += _klen
	  end
	end while false
	_trans = _new_parser_indicies[_trans]
	end
	if _goto_level <= _eof_trans
	cs = _new_parser_trans_targs[_trans]
	if _new_parser_trans_actions[_trans] != 0
		_acts = _new_parser_trans_actions[_trans]
		_nacts = _new_parser_actions[_acts]
		_acts += 1
		while _nacts > 0
			_nacts -= 1
			_acts += 1
			case _new_parser_actions[_acts - 1]
when 2 then
# line 1 "NONE"
		begin
te = p+1
		end
when 3 then
# line 35 "dagon/scanner.rl"
		begin
act = 3;		end
when 4 then
# line 38 "dagon/scanner.rl"
		begin
act = 6;		end
when 5 then
# line 34 "dagon/scanner.rl"
		begin
te = p+1
 begin  handle_indents  end
		end
when 6 then
# line 36 "dagon/scanner.rl"
		begin
te = p+1
 begin  emit_string(data, ts, te)  end
		end
when 7 then
# line 39 "dagon/scanner.rl"
		begin
te = p+1
 begin  emit(:ASSIGNMENT, data, ts, te-1)  end
		end
when 8 then
# line 40 "dagon/scanner.rl"
		begin
te = p+1
 begin  emit(:ARROW, data, ts, te)  end
		end
when 9 then
# line 44 "dagon/scanner.rl"
		begin
te = p+1
 begin  @indent_count += 1;  end
		end
when 10 then
# line 45 "dagon/scanner.rl"
		begin
te = p+1
 begin  emit(:LPAREN, data, ts, te)  end
		end
when 11 then
# line 46 "dagon/scanner.rl"
		begin
te = p+1
 begin  emit(:RPAREN, data, ts, te)  end
		end
when 12 then
# line 47 "dagon/scanner.rl"
		begin
te = p+1
 begin  emit(:LBRACE, data, ts, te)  end
		end
when 13 then
# line 48 "dagon/scanner.rl"
		begin
te = p+1
 begin  emit(:RBRACE, data, ts, te)  end
		end
when 14 then
# line 49 "dagon/scanner.rl"
		begin
te = p+1
 begin  emit(:LBRACKET, data, ts, te)  end
		end
when 15 then
# line 50 "dagon/scanner.rl"
		begin
te = p+1
 begin  emit(:RBRACKET, data, ts, te)  end
		end
when 16 then
# line 51 "dagon/scanner.rl"
		begin
te = p+1
 begin  emit(:DOT, data, ts, te)  end
		end
when 17 then
# line 52 "dagon/scanner.rl"
		begin
te = p+1
 begin  emit('!', data, ts, te)  end
		end
when 18 then
# line 53 "dagon/scanner.rl"
		begin
te = p+1
 begin  emit('@', data, ts, te)  end
		end
when 19 then
# line 54 "dagon/scanner.rl"
		begin
te = p+1
 begin  emit(data[(ts+1)...(te-1)], data, ts + 1, te - 1)  end
		end
when 20 then
# line 55 "dagon/scanner.rl"
		begin
te = p+1
 begin  emit(:EXPONENT, data, ts + 1, te - 1)  end
		end
when 21 then
# line 56 "dagon/scanner.rl"
		begin
te = p+1
 begin  emit(:COMMA, data, ts, te)  end
		end
when 22 then
# line 57 "dagon/scanner.rl"
		begin
te = p+1
		end
when 23 then
# line 59 "dagon/scanner.rl"
		begin
te = p+1
 begin  problem(data, ts, te)  end
		end
when 24 then
# line 33 "dagon/scanner.rl"
		begin
te = p
p = p - 1; begin  @last_indent_count = @indent_count; @indent_count = 0; @line += data[ts...te].lines.count; @column = 0; @check_indents = true  end
		end
when 25 then
# line 34 "dagon/scanner.rl"
		begin
te = p
p = p - 1; begin  handle_indents  end
		end
when 26 then
# line 35 "dagon/scanner.rl"
		begin
te = p
p = p - 1; begin  emit(data[ts...te].upcase.to_sym, data, ts, te)  end
		end
when 27 then
# line 37 "dagon/scanner.rl"
		begin
te = p
p = p - 1; begin  emit(:CONSTANT, data, ts, te)  end
		end
when 28 then
# line 38 "dagon/scanner.rl"
		begin
te = p
p = p - 1; begin  emit(:IDENTIFIER, data, ts, te)  end
		end
when 29 then
# line 41 "dagon/scanner.rl"
		begin
te = p
p = p - 1; begin  emit(':', data, ts, te)  end
		end
when 30 then
# line 42 "dagon/scanner.rl"
		begin
te = p
p = p - 1; begin  emit(:FLOAT, data, ts, te)  end
		end
when 31 then
# line 43 "dagon/scanner.rl"
		begin
te = p
p = p - 1; begin  emit(:INTEGER, data, ts, te)  end
		end
when 32 then
# line 57 "dagon/scanner.rl"
		begin
te = p
p = p - 1;		end
when 33 then
# line 59 "dagon/scanner.rl"
		begin
te = p
p = p - 1; begin  problem(data, ts, te)  end
		end
when 34 then
# line 43 "dagon/scanner.rl"
		begin
 begin p = ((te))-1; end
 begin  emit(:INTEGER, data, ts, te)  end
		end
when 35 then
# line 57 "dagon/scanner.rl"
		begin
 begin p = ((te))-1; end
		end
when 36 then
# line 59 "dagon/scanner.rl"
		begin
 begin p = ((te))-1; end
 begin  problem(data, ts, te)  end
		end
when 37 then
# line 1 "NONE"
		begin
	case act
	when 3 then
	begin begin p = ((te))-1; end
 emit(data[ts...te].upcase.to_sym, data, ts, te) end
	when 6 then
	begin begin p = ((te))-1; end
 emit(:IDENTIFIER, data, ts, te) end
end 
			end
# line 630 "build/scanner.rb"
			end # action switch
		end
	end
	if _trigger_goto
		next
	end
	end
	if _goto_level <= _again
	_acts = _new_parser_to_state_actions[cs]
	_nacts = _new_parser_actions[_acts]
	_acts += 1
	while _nacts > 0
		_nacts -= 1
		_acts += 1
		case _new_parser_actions[_acts - 1]
when 0 then
# line 1 "NONE"
		begin
ts = nil;		end
# line 650 "build/scanner.rb"
		end # to state action switch
	end
	if _trigger_goto
		next
	end
	p += 1
	if p != pe
		_goto_level = _resume
		next
	end
	end
	if _goto_level <= _test_eof
	if p == eof
	if _new_parser_eof_trans[cs] > 0
		_trans = _new_parser_eof_trans[cs] - 1;
		_goto_level = _eof_trans
		next;
	end
end
	end
	if _goto_level <= _out
		break
	end
	end
	end

# line 134 "dagon/scanner.rl"
      @check_indents = true
      if @indent_count != 0
        @last_indent_count = @indent_count
        @indent_count = 0
      end
      handle_indents
      @tokens
    end
  end
end

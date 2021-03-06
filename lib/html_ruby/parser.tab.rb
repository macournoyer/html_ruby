#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.11
# from Racc grammer file "".
#

require 'racc/parser.rb'

require_relative 'template'
require_relative 'tag'
require_relative 'text'
require_relative 'expression'
require_relative 'statement'
require_relative 'parser.rex'
module HtmlRuby
  class Parser < Racc::Parser

module_eval(<<'...end parser.racc/module_eval...', 'parser.racc', 30)

...end parser.racc/module_eval...
##### State transition tables begin ###

racc_action_table = [
     4,     9,    13,     6,     7,     8,     4,   nil,    15,     6,
     7,     8,     4,   nil,   nil,     6,     7,     8,     4,   nil,
    16,     6,     7,     8,    11,   nil,     6,     7,     8 ]

racc_action_check = [
     0,     1,     9,     0,     0,     0,    11,   nil,    11,    11,
    11,    11,     2,   nil,   nil,     2,     2,     2,    14,   nil,
    14,    14,    14,    14,     4,   nil,     4,     4,     4 ]

racc_action_pointer = [
    -2,     1,    10,   nil,    21,   nil,   nil,   nil,   nil,     2,
   nil,     4,   nil,   nil,    16,   nil,   nil ]

racc_action_default = [
   -11,   -11,    -1,    -2,   -11,    -7,    -8,    -9,   -10,   -11,
    -3,   -11,    -6,    17,   -11,    -5,    -4 ]

racc_goto_table = [
    10,     1,     2,    12,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,    10,    14 ]

racc_goto_check = [
     3,     1,     2,     4,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,     3,     2 ]

racc_goto_pointer = [
   nil,     1,     2,    -2,    -1 ]

racc_goto_default = [
   nil,   nil,   nil,     3,     5 ]

racc_reduce_table = [
  0, 0, :racc_error,
  1, 9, :_reduce_1,
  1, 10, :_reduce_2,
  2, 10, :_reduce_3,
  4, 11, :_reduce_4,
  3, 11, :_reduce_5,
  2, 11, :_reduce_6,
  1, 11, :_reduce_none,
  1, 12, :_reduce_8,
  1, 12, :_reduce_9,
  1, 12, :_reduce_10 ]

racc_reduce_n = 11

racc_shift_n = 17

racc_token_table = {
  false => 0,
  :error => 1,
  :IDENTIFIER => 2,
  "{" => 3,
  "}" => 4,
  :STRING => 5,
  :EXPRESSION => 6,
  :STATEMENT => 7 }

racc_nt_base = 8

racc_use_result_var = true

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "IDENTIFIER",
  "\"{\"",
  "\"}\"",
  "STRING",
  "EXPRESSION",
  "STATEMENT",
  "$start",
  "template",
  "tags",
  "tag",
  "value" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

module_eval(<<'.,.,', 'parser.racc', 4)
  def _reduce_1(val, _values, result)
     return Template.new(val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 7)
  def _reduce_2(val, _values, result)
     return [ val[0] ] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 8)
  def _reduce_3(val, _values, result)
     val[0].push(val[1]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 11)
  def _reduce_4(val, _values, result)
     return Tag.new(val[0], val[2])   
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 12)
  def _reduce_5(val, _values, result)
     return Tag.new(val[0], [])       
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 13)
  def _reduce_6(val, _values, result)
     return Tag.new(val[0], [val[1]]) 
    result
  end
.,.,

# reduce 7 omitted

module_eval(<<'.,.,', 'parser.racc', 17)
  def _reduce_8(val, _values, result)
     return Text.new(val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 18)
  def _reduce_9(val, _values, result)
     return Expression.new(val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 19)
  def _reduce_10(val, _values, result)
     return Statement.new(val[0]) 
    result
  end
.,.,

def _reduce_none(val, _values, result)
  val[0]
end

  end   # class Parser
  end   # module HtmlRuby



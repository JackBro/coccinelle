open Common

type parsing_stat = {
    filename: filename;
    mutable passing_through_lines: int;
    mutable have_timeout: bool;
    mutable correct: int;
    mutable bad: int;
  } 

val tokens: filename -> Parser_c.token list
val info_from_token: Parser_c.token -> Common.parse_info



val parse:                        filename -> Ast_c.program
val parse_print_error:            filename -> Ast_c.program
val parse_print_error_heuristic:  filename -> (Ast_c.program2 * parsing_stat)


val parse_gen: ((Lexing.lexbuf -> Parser_c.token) -> Lexing.lexbuf -> 'a) -> string -> 'a


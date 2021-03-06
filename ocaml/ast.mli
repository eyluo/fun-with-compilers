type exp = 
  | Var of Symbol.t
  | Operator of Lexer.op * mexp * mexp
  | IntVal of int
and mexp = exp Mark.t

type stmt = 
  | Assign of Symbol.t * mexp
  | Return of mexp
type mstmt = stmt Mark.t

type program = mstmt list

val string_of_exp : mexp -> string
val string_of_stmt : mstmt -> string
val string_of_program : program -> string
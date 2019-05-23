(* ****** ****** *)

(*
** For testing csv_parsing_line
*)

(* ****** ****** *)
//
#include
"share/atspre_staload.hats"
#include
"share/atspre_staload_libats_ML.hats"
//
(* ****** ****** *)
//
#include "./../mylibies.hats"
//
(* ****** ****** *)
//
#staload
_(*SBF*) = "libats/DATS/stringbuf.dats"
//
(* ****** ****** *)

local
#staload
CSVPARSE = $CSV_PARSE_LINE
in(*in-of-local*)
extern
fun{}
csv_parse_line(line: string): list0(string)
implement
{}(*tmp*)
csv_parse_line
  (line) = res0 where
{
//
var nerr: int = 0
val res0 =
  $CSVPARSE.csv_parse_line_nerr<>(line, nerr)
//
val res0 = $UNSAFE.castvwtp0{list0(string)}(res0)
//
} (* end of [csv_parse_line] *)
end // end of [local]

(* ****** ****** *)

implement
main0() = {
//
val inp = "\
Total,245,307,536,422,301,487,395,383,307,407,0,584,120,65,325.6428571,555\
" // end of [val]
//
implement
fprint_list$sep<>
  (out) = fprint(out, "; ")
//
val xs0 = csv_parse_line(inp)
val ((*void*)) = println! ("xs0 = ", xs0)
//
val inp = "\
Total,,0, \"0, 0\",\"0, \"\"0\"\"\"
" // end of [val]
val xs0 = csv_parse_line(inp)
val ((*void*)) = println! ("xs0 = ", xs0)
//
} (* end of [main0] *)

(* ****** ****** *)

(* end of [test01.dats] *)


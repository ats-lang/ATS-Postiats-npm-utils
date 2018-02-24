(* ****** ****** *)

(*
** For testing
** csv_parsing_line
*)

(* ****** ****** *)
//
#include
"share/atspre_staload.hats"
#include
"share/HATS/atspre_staload_libats_ML.hats"
//
(* ****** ****** *)
//
#include "./../mydepies.hats"
#include "./../mylibies.hats"
#include "./../mylibies_link.hats"
//
(* ****** ****** *)

implement
main0() = {
//
local
implement(a)
stream_vt_foreach$fwork<a><void>
  (x0, env) = let
  val x0 =
  $UNSAFE.castvwtp0{Strptr1}(x0)
  // end of [val]
  val x1 = $UNSAFE.strptr2string(x0)
//
  val ents = csv_parse_line(x1)
//
  local
  implement
  fprint_list$sep<>(out) = fprint(out, "; ")
  in
  val ((*void*)) = println!("ents = ", ents)
  end // end of [local]
//
  val ((*freed*)) = strptr_free(x0)
in
  // nothing
end // end of [stream_vt_foreach$fwork]
//
in
//
val
lines =
streamize_fileref_line(stdin_ref)
//
val-~stream_vt_nil() = stream_vt_foreach(lines)
//
end // end of [local]
//
} (* end of [main0] *)

(* ****** ****** *)

(* end of [test02.dats] *)

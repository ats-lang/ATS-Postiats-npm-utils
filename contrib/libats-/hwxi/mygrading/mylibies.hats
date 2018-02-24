(* ****** ****** *)
//
// HX-2017-01-27:
// For downstream static loading
//
(* ****** ****** *)
//
local
//
#define HX_MYGRADING_targetloc "."
//
in (*in-of-local*)
//
#staload
MYGRADING = "{$HX_MYGRADING}/SATS/mygrading.sats"
#staload
_(*MYGRADING*) = "{$HX_MYGRADING}/DATS/mygrading.dats"
//
end // end of [local]
//
(* ****** ****** *)

(* end of [mylibies.hats] *)

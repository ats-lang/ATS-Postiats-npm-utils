(* ****** ****** *)
//
// HX-2017-01-27:
// For downstream static loading
//
(* ****** ****** *)
//
local
//
#define
HX_MYGRADING_targetloc
"$PATSHOMELOCS/atscntrb-hx-mygrading"
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

(* end of [mydepies.hats] *)

(* ****** ****** *)
//
// HX-2017-01-21:
// For handling dependencies
//
(* ****** ****** *)
//
local
//
#define
HX_CSV_PARSE_targetloc
"$PATSHOMELOCS/atscntrb-hx-csv-parse"
//
in (*in-of-local*)
//
#staload
_(*SBF*) = "libats/DATS/stringbuf.dats"
//
#staload
CSVPARSE =
"{$HX_CSV_PARSE}/DATS/csv_parse_line.dats"
//
end // end of [local]
//
(* ****** ****** *)

(* end of [mydepies.hats] *)

(*
** THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
** EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
** OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
** NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
** HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
** WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
** FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
** OTHER DEALINGS IN THE SOFTWARE.
*)

(* ****** ****** *)

(*
** A library for grading BUCS course
*)

(* ****** ****** *)
//
// Author: Hongwei Xi
// Authoremail: gmhwxiATgmailDOTcom
// Start time: the first of July, 2016
//
(* ****** ****** *)
//
#include
"share/atspre_staload.hats"
#include
"share/HATS/atspre_staload_libats_ML.hats"
//
(* ****** ****** *)
//
(*
#define
CSV_parse_targetloc
"$PATSHOMELOCS/atscntrb-hx-csv-parse"
*)
//
#define
CSV_parse_targetloc"./../../CSV-parse"
//
(* ****** ****** *)
//
#staload
"{$CSV_parse}\
/DATS/csv_parse_line.dats"
//
(* ****** ****** *)

#staload "./../SATS/mygrading.sats"

(* ****** ****** *)

#staload
_(*SBF*) = "libats/DATS/stringbuf.dats"

(* ****** ****** *)

implement
csv_parse_line
  (line) = res0 where
{
//
var nerr: int = 0
val res0 = csv_parse_line_nerr<>(line, nerr)
val res0 = $UNSAFE.castvwtp0{list0(string)}(res0)
//
} (* end of [csv_parse_line] *)

(* ****** ****** *)

(* end of [mygrading.dats] *)
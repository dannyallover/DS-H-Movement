(* ::Package:: *)

(* ::Title:: *)
(*Transmission Time Assignment*)


(* ::Section:: *)
(*This notebook aims to bound a time span for each transmission. The motivating idea is that a transmission occurs sometime between a student's adult age and a teacher's death date.*)


(* ::Input:: *)
(*(** set directory **)*)


(* ::Input:: *)
(*SetDirectory[ParentDirectory[ParentDirectory[NotebookDirectory[]]]];*)


(* ::Input:: *)
(*Directory[];*)


(* ::Input:: *)
(*(** transmitter birth and death date **)*)


(* ::Input:: *)
(*transmitterBDDDFixed=Import["data/time/m0_transmitter_birth_death_range_evaluated_and_birth_assumed.csv","CSV"];*)


(* ::Input:: *)
(*transmitterBDDDFixed[[1]]*)


(* ::Input:: *)
(*(** transmitters in city network **)*)


(* ::Input:: *)
(*transmitters=ToExpression[Import["data/cities/m10_transmitter_to_one_city_by_highest_ratio.csv","CSV"]][[;;,1]];*)


(* ::Input:: *)
(*transmitters[[1]]*)


(* ::Input:: *)
(*(** transmitter to single time **)*)


(* ::Input:: *)
(*res=Reap[For[i=1,i<=Length[transmitterBDDDFixed],i++,*)
(*t=transmitterBDDDFixed[[i,1]];*)
(*If[!MemberQ[transmitters,t],Continue[];];*)
(*b=transmitterBDDDFixed[[i,2]];*)
(*e=transmitterBDDDFixed[[i,3]];*)
(*Sow[{t,Floor[(b+e)/2]}]*)
(*]][[2]][[1]];*)


(* ::Input:: *)
(*res[[1]]*)


(* ::Input:: *)
(*(** export data **)*)


(* ::Input:: *)
(*(*Export["data/time/m11_transmitter_to_single_time.csv",res];*)*)

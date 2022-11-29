(* ::Package:: *)

(* ::Title:: *)
(*Transmitter to City with Highest Ratio*)


(* ::Section:: *)
(*Transmitters often have multiple cities assigned to them in their biography. For the purpose of big picture visaulization, assigning one city to a transmitter is helpful. We do so by assigning the transmitter his city with the highest ratio.*)


(* ::Input:: *)
(*(** set directory **)*)


(* ::Input:: *)
(*SetDirectory[ParentDirectory[ParentDirectory[NotebookDirectory[]]]];*)


(* ::Input:: *)
(*Directory[];*)


(* ::Input:: *)
(*(** transmitter city ratios **)*)


(* ::Input:: *)
(*tCR=ToExpression[Import["data/cities/m4_transmitter_to_city_ratios.csv","CSV"]];*)


(* ::Input:: *)
(*tCR[[1]]*)


(* ::Input:: *)
(*(** get city with highest ratio **)*)


(* ::Input:: *)
(*res=Reap[For[i=1,i<=Length[tCR],i++,*)
(*If[tCR[[i,2]]=={},Continue[];];*)
(*t=tCR[[i,1]];*)
(*cits=tCR[[i,2]];*)
(*citsRS=Reverse[SortBy[cits,#[[2]]&]];*)
(*cit=citsRS[[1,1]];*)
(*Sow[{t,cit}]*)
(*]][[2]][[1]];*)


(* ::Input:: *)
(*(** export data **)*)


(* ::Input:: *)
(*(*Export["data/cities/m10_transmitter_to_one_city_by_highest_ratio.csv",res];*)*)

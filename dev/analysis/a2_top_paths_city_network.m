(* ::Package:: *)

(* ::Title:: *)
(*Top Paths in Entire Weighted City Network (nodes as cities)*)


(* ::Section:: *)
(*We take the entire city network (where the nodes are cities), and we calculate:*)
(*(1) the top 24 outgoing paths, and*)
(*(2) the top outgoing path for each city of interest.*)


(* ::Input:: *)
(*(** set directory **)*)


(* ::Input:: *)
(*SetDirectory[ParentDirectory[ParentDirectory[NotebookDirectory[]]]];*)


(* ::Input:: *)
(*Directory[];*)


(* ::Input:: *)
(*(** import partitioned networks **)*)


(* ::Input:: *)
(*cityNetworkW=ToExpression[Import["data/city-network/m8_weighted_city_network_nodes_as_cities.csv","CSV"]];*)


(* ::Input:: *)
(*cityNetworkW[[1]]*)


(* ::Input:: *)
(*(** sort by weight **)*)


(* ::Input:: *)
(*edges=Reverse[SortBy[cityNetworkW,#[[2]]&]]*)


(* ::Input:: *)
(*(** get top 24 paths - no inward edges **)*)


(* ::Input:: *)
(*count=0;*)


(* ::Input:: *)
(*top24P=Reap[For[i=1,i<=Length[edges],i++,*)
(*edge=edges[[i,1]];*)
(*If[ToString[edge[[1]]]!=ToString[edge[[2]]],Sow[edges[[i]]];count++;];*)
(*If[count>24,i=1000000;];*)
(*];][[2]][[1]];*)


(* ::Input:: *)
(*top24P[[;;10]]*)


(* ::Input:: *)
(*(** export data **)*)


(* ::Input:: *)
(*(*Export["data/analysis/top-paths/a2_top_24_outgoing_paths.csv",top24P];*)*)


(* ::Input:: *)
(*(** cits of interest **)*)


(* ::Input:: *)
(*citsToStudy=ToExpression[Flatten[Import["data/cities/xxx_cities_to_study.csv"]]];*)


(* ::Input:: *)
(*citsToStudy*)


(* ::Input:: *)
(*Length[citsToStudy]*)


(* ::Input:: *)
(*(** get top outgoing paths for each city of study **)*)


(* ::Input:: *)
(*topPEachCity=Reap[For[i=1,i<=Length[citsToStudy],i++,*)
(*cit=citsToStudy[[i]];*)
(*count=1;*)
(*For[j=1,j<=Length[edges],j++,*)
(*edge=edges[[j,1]];*)
(*If[edge[[1]]==edge[[2]],Continue[]];*)
(*If[ToString[edge[[1]]]==ToString[cit]&&MemberQ[citsToStudy,edge[[2]]],Sow[edges[[j]]];count++];*)
(*If[count>1,j=1000000];*)
(*]*)
(*]][[2]][[1]];*)


(* ::Input:: *)
(*topPEachCity[[;;10]]*)


(* ::Input:: *)
(*(** export data **)*)


(* ::Input:: *)
(*(*Export["data/analysis/top-paths/a2_top_outgoing_path_each_city.csv",topPEachCity];*)*)


(* ::Input:: *)
(*(** deciding on colors for density **)*)


(* ::Input:: *)
(*(** 0-2.5k = pink, 2.5k-5k = magenta, 5k - 10k = green, 10k - 25k = blue, 25k - 50k = red **)*)

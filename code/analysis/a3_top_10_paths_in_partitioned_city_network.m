(* ::Package:: *)

(* ::Title:: *)
(*Top 10 paths in each 30 year time slice*)


(* ::Section:: *)
(*This notebooks uses the partitioned city network (partitioned by every 30 years) and gets the top 10 paths in each partitioned network.*)


(* ::Input:: *)
(*(** set directory **)*)


(* ::Input:: *)
(*SetDirectory[ParentDirectory[ParentDirectory[NotebookDirectory[]]]];*)


(* ::Input:: *)
(*Directory[];*)


(* ::Input:: *)
(*(** import partitioned networks **)*)


(* ::Input:: *)
(*pNetworks=ToExpression[Import["data/city-network/m9_weighted_city_network_nodes_as_cities_30_year_network_partition.csv","CSV"]];*)


(* ::Input:: *)
(*pNetworks[[1]]*)


(* ::Input:: *)
(*top10x30={};*)


(* ::Input:: *)
(*For[i=1,i<=27,i++,*)
(*pN=pNetworks[[i]];*)
(*pN=Reverse[SortBy[pN,#[[2]]&]];*)
(*top10x30=Append[top10x30,pN[[;;10]]];*)
(*]*)


(* ::Input:: *)
(*top10x30*)


(* ::Input:: *)
(*(** export data **)*)


(* ::Input:: *)
(*(*Export["data/analysis/top-paths/a3_top_10_paths_in_each_30_year_sliced_network.csv",top10x30];*)*)


(* ::Input:: *)
(*(** help with latex formatting **)*)


(* ::Input:: *)
(*(*x1=top10x30[[10]];*)
(*x2=top10x30[[11]];*)
(*x3=top10x30[[12]];*)*)


(* ::Input:: *)
(*(*y="";*)*)


(* ::Input:: *)
(*(*For[i=1,i\[LessEqual]Length[x],i++,*)
(*y=y<>ToString[x1[[i,1,1]]]<>" & "<>ToString[x1[[i,1,2]]]<>" & "<>ToString[x1[[i,2]]]<>" & "<>ToString[x2[[i,1,1]]]<>" & "<>ToString[x2[[i,1,2]]]<>" & "<>ToString[x2[[i,2]]]<>" & "<> ToString[x3[[i,1,1]]]<>" & "<>ToString[x3[[i,1,2]]]<>" & "<>ToString[x3[[i,2]]]<> " \\\\ "<>"\n";*)
(*]*)*)


(* ::Input:: *)
(*(*y*)*)

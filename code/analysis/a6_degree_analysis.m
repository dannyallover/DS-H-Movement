(* ::Package:: *)

(* ::Title:: *)
(*City Network Degree Distribution*)


(* ::Section:: *)
(*This notebooks uses the city network (nodes as cities) and deduces the degree distribution of the network.*)


(* ::Input:: *)
(*(** set directory **)*)


(* ::Input:: *)
(*SetDirectory[ParentDirectory[ParentDirectory[NotebookDirectory[]]]];*)


(* ::Input:: *)
(*Directory[];*)


(* ::Input:: *)
(*(** import partitioned networks **)*)


(* ::Input:: *)
(*cityNetwork=ToExpression[Import["data/city-network/m8_weighted_city_network_nodes_as_cities.csv","CSV"]];*)


(* ::Input:: *)
(*(** create graph **)*)


(* ::Input:: *)
(*g=Graph[cityNetwork[[;;,1]]];*)


(* ::Input:: *)
(*(** get degrees of each vertex **)*)


(* ::Input:: *)
(*degrees=VertexDegree[g];*)


(* ::Input:: *)
(*(** desired data: degree, number of occurences **)*)


(* ::Input:: *)
(*dat=Tally[degrees];*)


(* ::Input:: *)
(*dat*)


(* ::Input:: *)
(*(** export data **)*)


(* ::Input:: *)
(*(*Export["data/analysis/degree-analysis/a6_degree_analysis_of_city_network_nodes_as_cities.csv",dat];*)*)


(* ::Input:: *)
(*(** massaging for latex **)*)


(* ::Input:: *)
(*(*buckets=Table[0,{i,1,52,1}];*)*)


(* ::Input:: *)
(*(*For[i=1,i\[LessEqual]Length[dat],i++,*)
(*bucket=Floor[dat[[i,1]]/10]+1;*)
(*buckets[[bucket]]+=dat[[i,2]]*)
(*]*)*)


(* ::Input:: *)
(*(*Table[{i*10,buckets[[i]]},{i,1,Length[buckets],1}]*)*)

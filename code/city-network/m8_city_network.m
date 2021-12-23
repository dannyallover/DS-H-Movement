(* ::Package:: *)

(* ::Title:: *)
(*Weighted City Network (nodes as cities)*)


(* ::Section:: *)
(*We construct a graph where the nodes themselves are cities. We also weight each edge by the taraf count.*)


(* ::Input:: *)
(*(** set directory **)*)


(* ::Input:: *)
(*SetDirectory[ParentDirectory[ParentDirectory[NotebookDirectory[]]]];*)


(* ::Input:: *)
(*Directory[];*)


(* ::Input:: *)
(*(** highways 2 **)*)


(* ::Input:: *)
(*highways=ToExpression[Import["data/highways/m7_highways_2_time_count.csv"]];*)


(* ::Input:: *)
(*highways[[1]]*)


(* ::Input:: *)
(*(** construct edges **)*)


(* ::Input:: *)
(*edges=Table[DirectedEdge[highways[[i,3]],highways[[i,4]]],{i,1,Length[highways],1}];*)


(* ::Input:: *)
(*edges[[1]]*)


(* ::Input:: *)
(*Length[edges]*)


(* ::Input:: *)
(*edgesU=DeleteDuplicates[edges];*)


(* ::Input:: *)
(*Length[edgesU]*)


(* ::Input:: *)
(*(** edges to weights **)*)


(* ::Input:: *)
(*edgesWeights=Association[Table[edgesU[[i]]->0,{i,1,Length[edgesU],1}]];*)


(* ::Input:: *)
(*edgesWeights[edges[[1]]]*)


(* ::Input:: *)
(*(** calcualte edge weights **)*)


(* ::Input:: *)
(*Monitor[For[i=1,i<=Length[highways],i++,*)
(*edge=DirectedEdge[highways[[i,3]],highways[[i,4]]];*)
(*weight=highways[[i,7]];*)
(*edgesWeights[edge]+=weight;*)
(*],i]*)


(* ::Input:: *)
(*edgesWeights[edges[[1]]]*)


(* ::Input:: *)
(*(** get edges and edge weights **)*)


(* ::Input:: *)
(*cityNetworkW=Table[{edgesU[[i]],edgesWeights[edgesU[[i]]]},{i,1,Length[edgesU],1}]*)


(* ::Input:: *)
(*(** export weighted city network **)*)


(* ::Input:: *)
(*(*Export["data/city-network/m8_weighted_city_network_nodes_as_cities.csv",cityNetworkW];*)*)

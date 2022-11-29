(* ::Package:: *)

(* ::Title:: *)
(*City Centrality Metrics*)


(* ::Section:: *)
(*This notebooks uses the partitioned city network (partitioned by every 30 years) and finds the node (city) with the top page rank score and the node (city) with the top betweenness centrality score.*)


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
(*(** desired dat: top page rank city, its page rank score, top betweeness centrality city, its betweeness score **)*)


(* ::Input:: *)
(*dat=Reap[For[i=1,i<=Length[pNetworks],i++,*)
(*network=pNetworks[[i]];*)
(*edges=network[[;;,1]];*)
(*weights=Table[network[[i,1]]->network[[i,2]],{i,1,Length[network],1}];*)
(*g=Graph[edges,EdgeWeight->weights];*)
(*pr=PageRankCentrality[g];*)
(*prvertex=VertexList[g][[Position[pr,Max[pr]][[1]]]];*)
(*bc=BetweennessCentrality[g];*)
(*bcvertex=VertexList[g][[Position[bc,Max[bc]][[1]]]];*)
(*Sow[{prvertex[[1]],Max[pr],bcvertex[[1]],Max[bc]}]*)
(*]][[2]][[1]];*)


(* ::Input:: *)
(*dat*)


(* ::Input:: *)
(*(** export data **)*)


(* ::Input:: *)
(*(*Export["data/analysis/a5_page_rank_and_betweeness_centrality_on_partioned_weighted_city_networks.csv",dat];*)*)


(* ::Input:: *)
(*(** help with latex formatting **)*)


(* ::Input:: *)
(*(*y="";*)*)


(* ::Input:: *)
(*(*For[i=1,i\[LessEqual]Length[dat],i++,*)
(*y=y<>"\\multicolumn{1}{ |c| }{-11} & \\multicolumn{1}{ |c| }{30} & "<>"\\multicolumn{1}{ |c| }{"<>ToString[dat[[i,1]]]<>"} & "<>"\\multicolumn{1}{ |c| }{"<>ToString[dat[[i,2]]]<>"} & "<>"\\multicolumn{1}{ |c| }{"<>ToString[dat[[i,3]]]<>"} & "<>"\\multicolumn{1}{ |c| }{"<>ToString[dat[[i,4]]]<> "} \\\\ "<>"\n";*)
(*]*)*)


(* ::Input:: *)
(*(*y*)*)

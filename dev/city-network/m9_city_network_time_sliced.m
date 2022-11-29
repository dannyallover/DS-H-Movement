(* ::Package:: *)

(* ::Title:: *)
(*Time Sliced Weighted City Network (30 year slices) (nodes as cities)*)


(* ::Section:: *)
(*We partition the network every 30 years and redistribute the edge weights (which are the taraf counts) accordingly.*)


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
(*(** complete city network **)*)


(* ::Input:: *)
(*cityNetwork=ToExpression[Import["/Users/dannyhalawi/Desktop/*other/research/hadith-movement/data/city-network/weighted_city_network_nodes_as_cities.csv","CSV"]];*)


(* ::Input:: *)
(*cityNetwork=cityNetwork[[;;,1]];*)


(* ::Input:: *)
(*cityNetworkU=DeleteDuplicates[cityNetwork];*)


(* ::Input:: *)
(*cityNetworkU[[1]]*)


(* ::Input:: *)
(*(** get maximum year to know how many networks there are **)*)


(* ::Input:: *)
(*Max[highways[[;;,6]]]*)


(* ::Input:: *)
(*Ceiling[841/30]*)


(* ::Input:: *)
(*(** assign all edges to counts for each partitioned network **)*)
(*networkCounts=Table[Association[Table[cityNetworkU[[i]]->0,{i,1,Length[cityNetworkU],1}]],{j,1,29,1}];*)


(* ::Input:: *)
(*networkCounts[[1]]*)


(* ::Input:: *)
(*Monitor[For[i=1,i<=Length[highways],i++,*)
(*edge=DirectedEdge[highways[[i,3]],highways[[i,4]]];*)
(*weight=highways[[i,7]];*)
(*beg=highways[[i,5]];*)
(*end=highways[[i,6]];*)
(*amount=weight/(end-beg+1);*)
(*For[j=beg,j<=end,j++,*)
(*bucket=Ceiling[j/30];*)
(*If[bucket<1,bucket=1];*)
(*temp=networkCounts[[bucket]];*)
(*temp[edge]+=amount;*)
(*networkCounts[[bucket]]=temp;*)
(*]*)
(*],i]*)


(* ::Input:: *)
(*networkCounts[[1]]*)


(* ::Input:: *)
(*(** for each counts in each time slice take the edges that have non zero counts **)*)


(* ::Input:: *)
(*finalNetworks=Reap[For[i=1,i<=Length[networkCounts],i++,*)
(*nC=networkCounts[[i]];*)
(*n=Reap[For[j=1,j<=Length[cityNetworkU],j++,*)
(*edge=cityNetworkU[[j]];*)
(*count=nC[edge];*)
(*If[count>0,Sow[{edge,count}]];*)
(*];][[2]][[1]];*)
(*Sow[n];*)
(*]][[2]][[1]];*)


(* ::Input:: *)
(*finalNetworks[[1]]*)


(* ::Input:: *)
(*Length[finalNetworks]*)


(* ::Input:: *)
(*(** export partitioned networks **)*)


(* ::Input:: *)
(*(*Export["data/city-network/m9_weighted_city_network_nodes_as_cities_30_year_network_partition.csv",finalNetworks];*)*)

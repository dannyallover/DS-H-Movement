(* ::Package:: *)

(* ::Title:: *)
(*Hadith Travel Analysis*)


(* ::Section:: *)
(*This notebook quantifies metrics relating to hadith travel. We calculate*)
(*1) the travel duration of each hadith,*)
(*2) the number of transmitters in each hadith, and*)
(*3) the number of cities in each transmitter's biography.*)


(* ::Input:: *)
(*(** set directory **)*)


(* ::Input:: *)
(*SetDirectory[ParentDirectory[ParentDirectory[NotebookDirectory[]]]];*)


(* ::Input:: *)
(*Directory[];*)


(* ::Input:: *)
(*(** import edges in each isnad **)*)


(* ::Input:: *)
(*isnads=ToExpression[Import["data/base/xxx_isnad_edges.csv","CSV"]];*)


(* ::Input:: *)
(*isnads[[1]]*)


(* ::Input:: *)
(*(** number of transmitters in each isnad **)*)


(* ::Input:: *)
(*numTransmitters=Table[Length[VertexList[isnads[[i]]]],{i,1,Length[isnads],1}];*)


(* ::Input:: *)
(*numTransmitters[[1]]*)


(* ::Input:: *)
(*h1=Sort[Tally[numTransmitters]];*)


(* ::Input:: *)
(*h1*)


(* ::Input:: *)
(*(*Export["data/analysis/travel-analysis/a0_number_of_transmitters_in_each_isnad.csv",h1];*)*)


(* ::Input:: *)
(*(** city network edges **)*)


(* ::Input:: *)
(*cn=ToExpression[Flatten[Import["data/base/xxx_city_network_edges.csv","CSV"]]];*)


(* ::Input:: *)
(*cn[[1]]*)


(* ::Input:: *)
(*(** edges to average time **)*)


(* ::Input:: *)
(*times=ToExpression[Import["data/time/m1_edge_to_transmission_span.csv","CSV"]];*)


(* ::Input:: *)
(*times[[1]]*)


(* ::Input:: *)
(*edgeToTime=Association[Table[times[[i,1]]->Floor[Mean[{times[[i,2]],times[[i,3]]}]],{i,1,Length[times],1}]];*)


(* ::Input:: *)
(*edgeToTime[cn[[1]]]*)


(* ::Input:: *)
(*(** filtering on isnads with time data **)*)


(* ::Input:: *)
(*cnIsnads=Reap[For[i=1,i<=Length[isnads],i++,*)
(*isnad=isnads[[i]];*)
(*first=isnad[[1]];*)
(*last=isnad[[Length[isnad]]];*)
(*If[!KeyExistsQ[edgeToTime,first],Continue[];];*)
(*If[!KeyExistsQ[edgeToTime,last],Continue[];];*)
(*Sow[isnad];*)
(*];*)
(*][[2]][[1]];*)


(* ::Input:: *)
(*cnIsnads[[1]]*)


(* ::Input:: *)
(*(** get travel duration of each isnad **)*)


(* ::Input:: *)
(*travelDuration=Reap[For[i=1,i<=Length[cnIsnads],i++,*)
(*isnad=cnIsnads[[i]];*)
(*If[Length[isnad]==1,Continue[];];*)
(*end=edgeToTime[isnad[[Length[isnad]]]];*)
(*start=edgeToTime[isnad[[1]]];*)
(*Sow[end-start];*)
(*]][[2]][[1]];*)


(* ::Input:: *)
(*Max[travelDuration]*)


(* ::Input:: *)
(*(** tally in 50 year buckets **)*)


(* ::Input:: *)
(*(*** calculate number of buckets ***)*)


(* ::Input:: *)
(*numBuckets=Ceiling[Max[travelDuration]/50]*)


(* ::Input:: *)
(*buckets=Table[{i*50,0},{i,1,numBuckets,1}];*)


(* ::Input:: *)
(*buckets[[1]]*)


(* ::Input:: *)
(*For[i=1,i<=Length[travelDuration],i++,*)
(*bucket=Ceiling[travelDuration[[i]]/50];*)
(*buckets[[bucket]][[2]]++;*)
(*]*)


(* ::Input:: *)
(*h2=buckets;*)


(* ::Input:: *)
(*h2*)


(* ::Input:: *)
(*(*Export["data/analysis/travel-analysis/a0_travel_duration_of_each_hadith.csv",h2];*)*)


(* ::Input:: *)
(*(** transmitters to cities **)*)


(* ::Input:: *)
(*t2C=ToExpression[Import["data/cities/xxx_all_transmitters_to_cities.csv","CSV"]];*)


(* ::Input:: *)
(*t2C[[2]]*)


(* ::Input:: *)
(*transmitterToCities=Association[Table[t2C[[i,1]]->t2C[[i,2]],{i,1,Length[t2C],1}]];*)


(* ::Input:: *)
(*transmitterToCities[2]*)


(* ::Input:: *)
(*(** number of cities belonging to each transmitter **)*)


(* ::Input:: *)
(*numC=Table[Length[transmitterToCities[t2C[[i,1]]]],{i,1,Length[t2C],1}];*)


(* ::Input:: *)
(*h3=Tally[numC];*)


(* ::Input:: *)
(*h3=Sort[h3];*)


(* ::Input:: *)
(*h3=Delete[h3,1];*)


(* ::Input:: *)
(*h3*)


(* ::Input:: *)
(*(*Export["data/analysis/travel-analysis/a0_number_of_cities_for_transmitters.csv",h3];*)*)

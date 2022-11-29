(* ::Package:: *)

(* ::Title:: *)
(*Model Network Flow*)


(* ::Section:: *)
(*To model network flow, we've already assigned each transmitter one city in accordance to the city with the highest ratio, and we've already assigned each transmitter a time. We can plot each transmitter's city on hierarchy vs time to model visually the network flow.*)


(* ::Input:: *)
(*(** set directory **)*)


(* ::Input:: *)
(*SetDirectory[ParentDirectory[ParentDirectory[NotebookDirectory[]]]];*)


(* ::Input:: *)
(*Directory[];*)


(* ::Input:: *)
(*(** time assignments for transmitters **)*)


(* ::Input:: *)
(*tTime=Import["data/time/m11_transmitter_to_single_time.csv","CSV"];*)


(* ::Input:: *)
(*tTime[[1]]*)


(* ::Input:: *)
(*tToTime=Association[Table[tTime[[i,1]]->tTime[[i,2]],{i,1,Length[tTime],1}]];*)


(* ::Input:: *)
(*tToTime[2]*)


(* ::Input:: *)
(*(** hierarchy assignment for transmitters **) *)


(* ::Input:: *)
(*tTrophic=Import["data/base/xxx_transmitter_mackay_trophic_levels.csv","CSV"];*)


(* ::Input:: *)
(*tTrophic[[1]]*)


(* ::Input:: *)
(*tToTrophic=Association[Table[tTrophic[[i,1]]->tTrophic[[i,2]],{i,1,Length[tTrophic],1}]];*)


(* ::Input:: *)
(*(** city assignments for transmitters **)*)


(* ::Input:: *)
(*tCity=ToExpression[Import["data/cities/m10_transmitter_to_one_city_by_highest_ratio.csv","CSV"]];*)


(* ::Input:: *)
(*tCity[[1]]*)


(* ::Input:: *)
(*tToCity=Association[Table[tCity[[i,1]]->tCity[[i,2]],{i,1,Length[tCity],1}]];*)


(* ::Input:: *)
(*tToCity[2]*)


(* ::Input:: *)
(*(** transmitters **)*)


(* ::Input:: *)
(*transmitters=tCity[[;;,1]];*)


(* ::Input:: *)
(*(** declare cities of interest **)*)


(* ::Input:: *)
(*citsToStudy=ToExpression[Flatten[Import["data/cities/xxx_cities_to_study.csv"]]];*)


(* ::Input:: *)
(*citsToStudy[[1]]*)


(* ::Input:: *)
(*citsToStudy*)


(* ::Input:: *)
(*narrowed={\:0628\:0635\:0631\:0629,\:0628\:063a\:062f\:0627\:062f,\:0643\:0648\:0641\:0629,\:0627\:0644\:0645\:062f\:064a\:0646\:0647,\:0645\:0635\:0631,\:062f\:0645\:0634\:0642,\:0646\:064a\:0633\:0627\:0628\:0648\:0631,\:0645\:0643\:0629,\:0623\:0635\:0628\:0647\:0627\:0646,\:0648\:0627\:0633\:0637};*)


(* ::Input:: *)
(*(** create x-y points **)*)


(* ::Input:: *)
(*res=Reap[For[i=1,i<=Length[transmitters],i++,*)
(*Sow[{transmitters[[i]],tToTrophic[transmitters[[i]]]+RandomReal[{-1,1}],tToTime[transmitters[[i]]],tToCity[transmitters[[i]]]}];*)
(*];][[2]][[1]];*)


(* ::Input:: *)
(*res[[1]]*)


(* ::Input:: *)
(*(** create data points for each city **)*)


(* ::Input:: *)
(*lists=Table[{},{i,1,Length[narrowed],1}];*)


(* ::Input:: *)
(*For[i=1,i<=Length[narrowed],i++,*)
(*For[j=1,j<=Length[res],j++,*)
(*If[res[[j,4]]==narrowed[[i]],lists[[i]]=Append[lists[[i]],{res[[j,3]],res[[j,2]],a}]]*)
(*]*)
(*]*)


(* ::Input:: *)
(*(*Export["data/analysis/network-flow/a4_network_flow_bsrh.csv",lists[[1]]];*)*)


(* ::Input:: *)
(*(*Export["data/analysis/network-flow/a4_network_flow_bghdad.csv",lists[[2]]];*)*)


(* ::Input:: *)
(*(*Export["data/analysis/network-flow/a4_network_flow_kwfh.csv",lists[[3]]];*)*)


(* ::Input:: *)
(*(*Export["data/analysis/network-flow/a4_network_flow_almdynh.csv",lists[[4]]];*)*)


(* ::Input:: *)
(*(*Export["data/analysis/network-flow/a4_network_flow_msr.csv",lists[[5]]];*)*)


(* ::Input:: *)
(*(*Export["data/analysis/network-flow/a4_network_flow_dmshq.csv",lists[[6]]];*)*)


(* ::Input:: *)
(*(*Export["data/analysis/network-flow/a4_network_flow_nysabwr.csv",lists[[7]]];*)*)


(* ::Input:: *)
(*(*Export["data/analysis/network-flow/a4_network_flow_mkh.csv",lists[[8]]];*)*)


(* ::Input:: *)
(*(*Export["data/analysis/network-flow/a4_network_flow_asbhan.csv",lists[[9]]];*)*)


(* ::Input:: *)
(*(*Export["data/analysis/network-flow/a4_network_flow_wast.csv",lists[[10]]];*)*)

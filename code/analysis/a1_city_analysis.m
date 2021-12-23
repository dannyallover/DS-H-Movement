(* ::Package:: *)

(* ::Title:: *)
(*City Analysis*)


(* ::Section:: *)
(*This notebook uncovers the most popular cities. We first extract the most popular cities with respect to biography frequency. We then extract the most popular cities with respect to transmission frequency.*)


(* ::Input:: *)
(*(** set directory **)*)


(* ::Input:: *)
(*SetDirectory[ParentDirectory[ParentDirectory[NotebookDirectory[]]]];*)


(* ::Input:: *)
(*Directory[];*)


(* ::Input:: *)
(*(** city network transmitters to cities **)*)


(* ::Input:: *)
(*transmitterCities=ToExpression[Import["data/cities/xxx_all_transmitters_to_cities.csv","CSV"]];*)


(* ::Input:: *)
(*transmitterCities[[2]]*)


(* ::Input:: *)
(*(** tally the cities **)*)


(* ::Input:: *)
(*citiesBioTallied=Tally[Flatten[transmitterCities[[;;,2]]]];*)


(* ::Input:: *)
(*citiesBioTallied[[1]]*)


(* ::Input:: *)
(*citiesBioTalliedSorted=Reverse[SortBy[citiesBioTallied,#[[2]]&]];*)


(* ::Input:: *)
(*(** top 25 cities with respect to biography frequency **)*)


(* ::Input:: *)
(*citiesBioTalliedSorted[[;;25]]*)


(* ::Input:: *)
(*(*Export["data/analysis/city-analysis/a1_popular_cities_wrt_bios_count.csv",citiesBioTalliedSorted];*)*)


(* ::Input:: *)
(*(** transmission to space, time, and count **)*)


(* ::Input:: *)
(*transmissionSpaceTimeCount=ToExpression[Import["data/space-time/m6_transmission_space_time_magnitude.csv","CSV"]];*)


(* ::Input:: *)
(*transmissionSpaceTimeCount[[1]]*)


(* ::Input:: *)
(*cits=DeleteDuplicates[transmissionSpaceTimeCount[[;;,2]]];*)


(* ::Input:: *)
(*citsToCount=Association[Table[cits[[i]]->0,{i,1,Length[cits],1}]];*)


(* ::Input:: *)
(*citsToCount[\:0645\:0631\:0648]*)


(* ::Input:: *)
(*(** map each city to its transmission count **)*)


(* ::Input:: *)
(*For[i=1,i<=Length[transmissionSpaceTimeCount],i++,*)
(*citsToCount[transmissionSpaceTimeCount[[i,2]]]+=transmissionSpaceTimeCount[[i,5]];*)
(*];*)


(* ::Input:: *)
(*citsToCount[\:0645\:0631\:0648]*)


(* ::Input:: *)
(*citiesTransmissionTallied=Table[{cits[[i]],Floor[citsToCount[cits[[i]]]]},{i,1,Length[cits],1}];*)


(* ::Input:: *)
(*citiesTransmissionTallied[[1]]*)


(* ::Input:: *)
(*(** top 25 cities with respect to transmission frequency **)*)


(* ::Input:: *)
(*citiesTransmissionTalliedSorted=Reverse[SortBy[citiesTransmissionTallied,#[[2]]&]];*)


(* ::Input:: *)
(*citiesTransmissionTalliedSorted[[;;25]]*)


(* ::Input:: *)
(*(*Export["data/analysis/city-analysis/a1_popular_cities_wrt_transmission_count.csv",citiesTransmissionTalliedSorted];*)*)


(* ::Input:: *)
(*(** asside: we deduce from the above the lists that we are interested in studying in our project, due to their popularity and geographic diversity **)*)


(* ::Input:: *)
(*cits={\:0628\:0635\:0631\:0629,\:0628\:063a\:062f\:0627\:062f,\:0643\:0648\:0641\:0629,\:0627\:0644\:0645\:062f\:064a\:0646\:0647,\:0645\:0635\:0631,\:062f\:0645\:0634\:0642,\:0646\:064a\:0633\:0627\:0628\:0648\:0631,\:0645\:0643\:0629,\:0623\:0635\:0628\:0647\:0627\:0646,\:0648\:0627\:0633\:0637,\:0645\:0631\:0648,\:062d\:0645\:0635,\:0635\:0646\:0639\:0627\:0621,\:0627\:0644\:0631\:064a,\:0642\:0631\:0637\:0628\:0629,\:062d\:0631\:0627\:0646,\:0628\:063a\:0644\:0627\:0646,\:0647\:0631\:0627\:0629,\:0627\:0644\:0631\:0642\:0629,\:062c\:0631\:062c\:0627\:0646,\:0627\:0644\:0645\:0648\:0635\:0644,\:0628\:062e\:0627\:0631\:0649,\:062d\:0644\:0628,\:0637\:0648\:0633};*)


(* ::Input:: *)
(*Length[cits]*)


(* ::Input:: *)
(*(** selected cities to transmission count **)*)


(* ::Input:: *)
(*citiesSelectedCounts=Reap[For[i=1,i<=Length[cits],i++,*)
(*city1=cits[[i]];*)
(*For[j=1,j<=Length[citiesTransmissionTalliedSorted],j++,*)
(*city2=citiesTransmissionTalliedSorted[[j]];*)
(*If[city1==city2[[1]],Sow[{city1,city2[[2]]}]];*)
(*];*)
(*]][[2]][[1]];*)


(* ::Input:: *)
(*citiesSelectedCounts*)


(* ::Input:: *)
(*(*Export["data/analysis/city-analysis/a1_cities_to_study_transmission_count.csv",citiesSelectedCounts];*)*)

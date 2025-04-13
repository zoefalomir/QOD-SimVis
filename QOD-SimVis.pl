/* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
%%    Qualitative Object Descriptor Dataset for Visual Similarity (MDAI'25)
%%
%%    Author: Assoc. Prof. Zoe Falomir (zfalomir@cs.umu.se)
%%
%%    Copyright 2025  Zoe Falomir
%%
%%
%%    This file is part of QOD-SimVis.
%%
%%    QOD-SimVis is free software: you can redistribute it and/or modify
%%    it under the terms of the GNU General Public License as published by
%%    the Free Software Foundation, either version 3 of the License, 
%%    or any later version.
%%
%%    QOD-SimVis is distributed in the hope that it will be useful,
%%    but WITHOUT ANY WARRANTY; without even the implied warranty of
%%    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%%    GNU General Public License for more details.
%%
%%    See more details regarding the GNU General Public License at
%%    <http://www.gnu.org/licenses/>.
%%
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */


/* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
%%  Compile in SWI-Prolog as:
%%
%%  ?- initialization(cd('$HOME')).
%%
%%  ?-['Dataset-QOD-TH'].
%%
%%  ?-['QOD-SimVis'].
%%
%%
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -- */

/* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
%%
%% Example of a situation:
%%
%% scene(OBJECT1, OBJECT2)
%%
%% view(SCENE, OBJECT, [PERSPECTIVE]) where
%%
%%   PERSPECTIVE = {fru,lfu,rbu,blu,dfr,ldf,bld,dbr} where f is front, l is left, u is up, r is right, b is back, d is down.
%%   Time = t0, t1, t2, ..., tn
%%
%%   side(LOCATION, FEATURE, ORIENTATION) where
%%
%%   LOCATION = {front, right, up, back, left, down}
%%   FEATURE = digit, letter, image, RGB-D image, etc.
%%   ORIENTATION = {turned_0q, turned_1q, turned_2q, turned_3q, none-oriented}
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -- */


:- discontiguous
        scene/2,
        view/5,
        side/5.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Example tests
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

scene(sc01, t1).
view(sc01, object1, front, right, up).
side(sc01, object1, front, letter_B, turned_0q).
side(sc01, object1, right, letter_M, turned_0q).
side(sc01, object1, up, letter_A, turned_2q).
view(sc01, object2, front, right, up).
side(sc01, object2, front, letter_M, turned_0q).
side(sc01, object2, right, letter_T, turned_0q).
side(sc01, object2, up, letter_A, turned_3q).

scene(sc02, t1).
view(sc02, object1, front, right, up).
side(sc02, object1, front, letter_M, turned_0q).
side(sc02, object1, right, letter_T, turned_0q).
side(sc02, object1, up, letter_A, turned_3q).
view(sc02, object2, front, right, up).
side(sc02, object2, front, letter_M, turned_1q).
side(sc02, object2, right, letter_A, turned_0q).
side(sc02, object2, up, letter_B, turned_1q).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Comparing cubes in Scenes
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                          

symbols_in_both_objects(Scene,Symbol):-
      side(Scene, Object1, _, Symbol,_),
      side(Scene, Object2, _, Symbol,_),
      Object1 \== Object2.

common_symbols_in_both_objects(Scene,Symbol_List):-
      findall(Symbol,symbols_in_both_objects(Scene,Symbol),List),
      sort(List, Symbol_List). %remove symbol duplicates

common_symbols_in_same_locations(Scene,Symbol):-
      side(Scene, Object1, Location, Symbol,_),
      side(Scene, Object2, Location, Symbol,_),
      Object1 \== Object2.

all_common_symbols_in_same_locations(Scene,List_SSL):-
      findall(Symbol,common_symbols_in_same_locations(Scene,Symbol),List),
      sort(List, List_SSL). %List of Symbol_Same_Location (SSL)

symbols_non_oriented_in_Object(Scene, Object, Symbol):-
    side(Scene,Object,_, Symbol,non_oriented).

symbols_oriented_0q_in_Object(Scene, Object, Symbol):-
    side(Scene,Object,_, Symbol,turned_0q).
symbols_oriented_0q_in_Object(Scene, Object, Symbol):-
    side(Scene,Object,_, Symbol,LOrient),
    member(turned_0q, LOrient).

all_symbols_oriented_0q_in_Object(Scene, Object, ListFinal):-
    findall(Symbol,symbols_oriented_0q_in_Object(Scene, Object, Symbol),List1),
    sort(List1, List_S0q),
    findall(Symbol,symbols_non_oriented_in_Object(Scene, Object, Symbol),List2),
    sort(List2, List_Non),
    merge(List_S0q, List_Non, ListFinal).



common_symbols_with_same_orientation(Scene,Symbol):-
      side(Scene, Object1, _, Symbol, Orientation),
      side(Scene, Object2, _, Symbol, Orientation),
      Object1 \== Object2.

all_symbols_with_same_orientation(Scene, ListFinal):-
    findall(Symbol,common_symbols_with_same_orientation(Scene,Symbol),List1),
    sort(List1, ListFinal).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% Description of Visual Similarity:
%%
%% alfa: number of common symbols.
%% beta: return the common symbols in both objects that have the same orientation in object1 and object2.
%% gamma: obtain the symbols in common at the same location.
%% order: quantity of symbols that are orientated wrt the point of view of the observer (quantity of 0q)
%% delta: 1 - abs(order(view1) - order(view2))
%%
%% ------------------------------------------------
%%
%% Examples:
%%
%% ?- calculate_alfa(sc01,List,A).
%% List = [letter_A, letter_M],
%% A = 0.6666666666666666.
%%
%% ?- calculate_gamma(sc01,List,G).
%% List = [letter_A],
%% G = 0.3333333333333333.
%%
%% ?- calculate_beta(sc3,L,N,L2,N2,Beta).
%% L = [letter_X, letter_o, number_0],
%% N = 2,
%% L2 = [letter_X, letter_o],
%% N2 = 3,
%% Beta = 0.6666666666666666.
%%
%% ?- calculate_delta(sc1, object1, object2, List_Obj1_0q, Order_Obj1, List_Obj2_0q, Order_Obj2, Delta).
%% List_Obj1_0q = [letter_H, letter_R, letter_W],
%% Order_Obj1 = 1.0,
%% List_Obj2_0q = [letter_R, letter_S],
%% Order_Obj2 = Delta, Delta = 0.5.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

calculate_alfa(Scene, Symbol_List, Alfa):-
  common_symbols_in_both_objects(Scene, Symbol_List),
  length(Symbol_List,N),
  integer(N),
  Alfa is N/3.

calculate_gamma(Scene, List_SSL, Gamma):-
  all_common_symbols_in_same_locations(Scene,List_SSL),
  length(List_SSL,N),
  integer(N),
  Gamma is N/3.
  
order(3,1.0).
order(2,0.5).
order(1,0.0).
order(0,0.0).

calculate_order(Scene, Object, List_0q, Order_Obj):-
  all_symbols_oriented_0q_in_Object(Scene, Object, List_0q),
  length(List_0q, N),
  order(N, Order_Obj).

calculate_delta(Scene, Object1, Object2, List_Obj1_0q, Order_Obj1, List_Obj2_0q, Order_Obj2, Delta):-
  calculate_order(Scene, Object1, List_Obj1_0q, Order_Obj1),
  calculate_order(Scene, Object2, List_Obj2_0q, Order_Obj2),
  Object1 \== Object2,
  Delta is 1 -(abs(Order_Obj1 - Order_Obj2)).


calculate_beta(Scene, LSymbols, _, _,_,Beta):-
  common_symbols_in_both_objects(Scene, LSymbols),
  length(LSymbols,0),
  Beta is 0.

calculate_beta(Scene, LSymbols, N2, LSymbolsSameOrient,N1,Beta):-
  common_symbols_in_both_objects(Scene, LSymbols),
  length(LSymbols,N2),
  N2 =\= 0,
  all_symbols_with_same_orientation(Scene, LSymbolsSameOrient),
  length(LSymbolsSameOrient,N1),
  integer(N1),
  Beta is N1/N2.


calculate_visual_similarity(Scene, Alfa, Beta, Gamma,Delta,Sim_Vis):-
   calculate_alfa(Scene, Symbol_List, Alfa),
   write("Alfa: "), print(Alfa),nl,
   write("Symbols in common: "), print(Symbol_List),nl,
   calculate_beta(Scene, _, _, LSymbolsSameOrient,_,Beta),
   write("Beta: "), print(Beta),nl,
   write("Symbols in common with same orientation: "), print(LSymbolsSameOrient),
   calculate_gamma(Scene, List_SSL, Gamma),nl,
   write("Gamma: "), print(Gamma),nl,
   write("Symbols in common with same location: "), print(List_SSL),nl,
   calculate_delta(Scene, object1, object2, List_Obj1_0q, Order_Obj1, List_Obj2_0q, Order_Obj2, Delta),
   write("Order Object 1: "), print(Order_Obj1),nl,
   write("Sides oriented 0q: "), print(List_Obj1_0q),nl,
   write("Order Object 2: "), print(Order_Obj2),nl,
   write("Sides oriented 0q: "), print(List_Obj2_0q),nl,
   write("Delta: "), print(Delta),nl,
   Mu_s is 0.7, %weight for symbols %read(Mu_s)
   write("Mu_s: "), print(Mu_s),nl,
   Mu_o is 0.1, %weight for orientation
   write("Mu_o: "), print(Mu_o),nl,
   Mu_l is 0.1, %weight for location
   write("Mu_l: "), print(Mu_l),nl,
   Mu_ro is 0.1, %weight for relative orientation
   write("Mu_ro: "), print(Mu_ro),nl,
   Sim_Vis is (Mu_s * Alfa + Mu_o * Beta + Mu_l * Gamma + Mu_ro * Delta),
   write("Sim_Vis: "), print(Sim_Vis).


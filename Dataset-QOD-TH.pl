
/* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
%%    Qualitative Object Descriptor Dataset for Visual Similarity (MDAI'25)
%%
%%    Author: Zoe Falomir (zfalomir@cs.umu.se) and Vicent Costa (vicent@iiia.csic.es)
%%
%%    Copyright 2025  Zoe Falomir and Vicent Costa
%%
%%
%%    This file is part of QOD-SimVis.
%%
%%    QOD-SimVis is free software: you can redistribute it and/or modify
%%    it under the terms of the GNU General Public License as published by
%%    the Free Software Foundation, either version 3 of the License,
%%    or non_oriented later version.
%%
%%    QOD-SimVis is distributed in the hope that it will be useful,
%%    but WITHOUT non_oriented WARRANTY; without even the implied warranty of
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
%%
%%  ?-['Dataset-QOD-TH'].
%%
%%
%%
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -- */


:- discontiguous
        scene/2,
        view/5,
        side/5.


scene(sc1, t1).
view(sc1, object1, front, right, up).
side(sc1, object1, front, letter_H, [turned_0q,turned_2q]).
side(sc1, object1, right, letter_R, turned_0q).
side(sc1, object1, up, letter_W, turned_0q).
view(sc1, object2, front, right, up).
side(sc1, object2, front, letter_R, turned_0q).
side(sc1, object2, right, letter_S, [turned_0q,turned_2q]).
side(sc1, object2, up, letter_W, turned_1q).

scene(sc2, t1).
view(sc2, object1, front, right, up).
side(sc2, object1, front, letter_o, non_oriented).
side(sc2, object1, right, letter_F, turned_0q).
side(sc2, object1, up, letter_P, turned_0q).
view(sc2, object2, front, right, up).
side(sc2, object2, front, letter_F, turned_1q).
side(sc2, object2, right, letter_A, turned_0q).
side(sc2, object2, up, letter_P, turned_1q).

scene(sc3, t1).
view(sc3, object1, front, right, up).
side(sc3, object1, front, letter_X, [turned_0q,turned_2q]).
side(sc3, object1, right, number_0, [turned_0q,turned_2q]).
side(sc3, object1, up, letter_o, non_oriented).
view(sc3, object2, front, right, up).
side(sc3, object2, front, number_0, [turned_1q,turned_3q]).
side(sc3, object2, right, letter_o, non_oriented).
side(sc3, object2, up, letter_X, [turned_0q,turned_2q]).

scene(sc4, t1).
view(sc4, object1, front, right, up).
side(sc4, object1, front, letter_Y, turned_1q).
side(sc4, object1, right, letter_S, [turned_0q,turned_2q]).
side(sc4, object1, up, letter_B, turned_1q).
view(sc4, object2, front, right, up).
side(sc4, object2, front, letter_B, turned_0q).
side(sc4, object2, right, letter_A, turned_1q).
side(sc4, object2, up, letter_Y, turned_3q).

scene(sc5, t1).
view(sc5, object1, front, right, up).
side(sc5, object1, front, letter_O, non_oriented).
side(sc5, object1, right, letter_L, turned_0q).
side(sc5, object1, up, letter_F, turned_3q).
view(sc5, object2, front, right, up).
side(sc5, object2, front, letter_O, non_oriented).
side(sc5, object2, right, letter_F, turned_3q).
side(sc5, object2, up, letter_R, turned_1q).

scene(sc6, t1).
view(sc6, object1, front, right, up).
side(sc6, object1, front, letter_O, non_oriented).
side(sc6, object1, right, letter_P, turned_0q).
side(sc6, object1, up, letter_W, turned_3q).
view(sc6, object2, front, right, up).
side(sc6, object2, front, letter_O, non_oriented).
side(sc6, object2, right, letter_L, turned_0q).
side(sc6, object2, up, letter_F, turned_0q).

scene(sc7, t1).
view(sc7, object1, front, right, up).
side(sc7, object1, front, letter_X, [turned_0q,turned_2q]).
side(sc7, object1, right, letter_B, turned_0q).
side(sc7, object1, up, letter_R, turned_3q).
view(sc7, object2, front, right, up).
side(sc7, object2, front, letter_A, turned_0q).
side(sc7, object2, right, letter_W, turned_3q).
side(sc7, object2, up, letter_Y, turned_0q).

scene(sc8, t1).
view(sc8, object1, front, right, up).
side(sc8, object1, front, letter_P, turned_0q).
side(sc8, object1, right, letter_F, turned_3q).
side(sc8, object1, up, letter_H, [turned_0q,turned_2q]).
view(sc8, object2, front, right, up).
side(sc8, object2, front, letter_F, turned_3q).
side(sc8, object2, right, letter_A, turned_0q).
side(sc8, object2, up, letter_B, turned_3q).

scene(sc9, t1).
view(sc9, object1, front, right, up).
side(sc9, object1, front, letter_X, [turned_0q,turned_2q]).
side(sc9, object1, right, letter_H, [turned_0q, turned_2q]).
side(sc9, object1, up, letter_S, [turned_0q, turned_2q]).
view(sc9, object2, front, right, up).
side(sc9, object2, front, letter_L, turned_1q).
side(sc9, object2, right, letter_S, [turned_1q, turned_3q]).
side(sc9, object2, up, letter_P, turned_1q).

scene(sc10, t1).
view(sc10, object1, front, right, up).
side(sc10, object1, front, letter_Y, turned_0q).
side(sc10, object1, right, letter_R, turned_0q).
side(sc10, object1, up, letter_P, turned_0q).
view(sc10, object2, front, right, up).
side(sc10, object2, front, letter_B, turned_0q).
side(sc10, object2, right, letter_L, turned_0q).
side(sc10, object2, up, letter_P, turned_1q).

scene(sc11, t1).
view(sc11, object1, front, right, up).
side(sc11, object1, front, letter_H, turned_0q).
side(sc11, object1, right, letter_S, turned_0q).
side(sc11, object1, up, letter_W, turned_0q).
view(sc11, object2, front, right, up).
side(sc11, object2, front, letter_W, turned_1q).
side(sc11, object2, right, letter_B, turned_0q).
side(sc11, object2, up, letter_P, turned_1q).

scene(sc12, t1).
view(sc12, object1, front, right, up).
side(sc12, object1, front, letter_Y, turned_0q).
side(sc12, object1, right, letter_W, turned_0q).
side(sc12, object1, up, letter_R, turned_0q).
view(sc12, object2, front, right, up).
side(sc12, object2, front, letter_B, turned_0q).
side(sc12, object2, right, letter_Y, turned_2q).
side(sc12, object2, up, letter_L, turned_0q).

scene(sc13, t1).
view(sc13, object1, front, right, up).
side(sc13, object1, front, letter_F, turned_0q).
side(sc13, object1, right, letter_A, turned_1q).
side(sc13, object1, up, letter_R, turned_0q).
view(sc13, object2, front, right, up).
side(sc13, object2, front, letter_F, turned_3q).
side(sc13, object2, right, letter_Y, turned_0q).
side(sc13, object2, up, letter_A, turned_0q).

scene(sc14, t1).
view(sc14, object1, front, right, up).
side(sc14, object1, front, letter_R, turned_0q).
side(sc14, object1, right, letter_L, turned_0q).
side(sc14, object1, up, letter_o, non_oriented).
view(sc14, object2, front, right, up).
side(sc14, object2, front, letter_L, turned_1q).
side(sc14, object2, right, letter_o, non_oriented).
side(sc14, object2, up, letter_R, turned_1q).

scene(sc15, t1).
view(sc15, object1, front, right, up).
side(sc15, object1, front, letter_X, [turned_0q, turned_2q]). 
side(sc15, object1, right, number_0, [turned_0q, turned_2q]).
side(sc15, object1, up, letter_F, turned_1q).
view(sc15, object2, front, right, up).
side(sc15, object2, front, letter_S, [turned_0q, turned_2q]).
side(sc15, object2, right, letter_X, [turned_0q, turned_2q]).
side(sc15, object2, up, number_0, [turned_1q, turned_3q]).


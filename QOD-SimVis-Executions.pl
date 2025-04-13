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

?- ['QOR_v6'].

?- ['Dataset-QOD-SimVis'].
true.


?- calculate_visual_similarity(sc1, Alfa, Beta, Gamma,Delta,Sim_Vis).
Alfa: 0.6666666666666666
Symbols in common: [letter_R,letter_W]
Beta: 0.5
Symbols in common with same orientation: [letter_R]
Gamma: 0.3333333333333333
Symbols in common with same location: [letter_W]
Order Object 1: 1.0
Sides oriented 0q: [letter_H,letter_R,letter_W]
Order Object 2: 0.5
Sides oriented 0q: [letter_R,letter_S]
Delta: 0.5
Mu_s: 0.7
Mu_o: 0.1
Mu_l: 0.1
Mu_ro: 0.1
Sim_Vis: 0.6
Alfa = 0.6666666666666666,
Beta = Delta, Delta = 0.5,
Gamma = 0.3333333333333333,
Sim_Vis = 0.6.

?- calculate_visual_similarity(sc2, Alfa, Beta, Gamma,Delta,Sim_Vis).
Alfa: 0.6666666666666666
Symbols in common: [letter_F,letter_P]
Beta: 0
Symbols in common with same orientation: []
Gamma: 0.3333333333333333
Symbols in common with same location: [letter_P]
Order Object 1: 1.0
Sides oriented 0q: [letter_F,letter_P,letter_o]
Order Object 2: 0.0
Sides oriented 0q: [letter_A]
Delta: 0.0
Mu_s: 0.7
Mu_o: 0.1
Mu_l: 0.1
Mu_ro: 0.1
Sim_Vis: 0.49999999999999994
Alfa = 0.6666666666666666,
Beta = 0,
Gamma = 0.3333333333333333,
Delta = 0.0,
Sim_Vis = 0.49999999999999994.

?- calculate_visual_similarity(sc3, Alfa, Beta, Gamma,Delta,Sim_Vis).
Alfa: 1
Symbols in common: [letter_X,letter_o,number_0]
Beta: 0.6666666666666666
Symbols in common with same orientation: [letter_X,letter_o]
Gamma: 0
Symbols in common with same location: []
Order Object 1: 1.0
Sides oriented 0q: [letter_X,letter_o,number_0]
Order Object 2: 0.5
Sides oriented 0q: [letter_X,letter_o]
Delta: 0.5
Mu_s: 0.7
Mu_o: 0.1
Mu_l: 0.1
Mu_ro: 0.1
Sim_Vis: 0.8166666666666667
Alfa = 1,
Beta = 0.6666666666666666,
Gamma = 0,
Delta = 0.5,
Sim_Vis = 0.8166666666666667.

?- calculate_visual_similarity(sc4, Alfa, Beta, Gamma,Delta,Sim_Vis).
Alfa: 0.6666666666666666
Symbols in common: [letter_B,letter_Y]
Beta: 0
Symbols in common with same orientation: []
Gamma: 0
Symbols in common with same location: []
Order Object 1: 0.0
Sides oriented 0q: [letter_S]
Order Object 2: 0.0
Sides oriented 0q: [letter_B]
Delta: 1.0
Mu_s: 0.7
Mu_o: 0.1
Mu_l: 0.1
Mu_ro: 0.1
Sim_Vis: 0.5666666666666667
Alfa = 0.6666666666666666,
Beta = Gamma, Gamma = 0,
Delta = 1.0,
Sim_Vis = 0.5666666666666667.

?- calculate_visual_similarity(sc5, Alfa, Beta, Gamma,Delta,Sim_Vis).
Alfa: 0.6666666666666666
Symbols in common: [letter_F,letter_O]
Beta: 1
Symbols in common with same orientation: [letter_F,letter_O]
Gamma: 0.3333333333333333
Symbols in common with same location: [letter_O]
Order Object 1: 0.5
Sides oriented 0q: [letter_L,letter_O]
Order Object 2: 0.0
Sides oriented 0q: [letter_O]
Delta: 0.5
Mu_s: 0.7
Mu_o: 0.1
Mu_l: 0.1
Mu_ro: 0.1
Sim_Vis: 0.65
Alfa = 0.6666666666666666,
Beta = 1,
Gamma = 0.3333333333333333,
Delta = 0.5,
Sim_Vis = 0.65.

?- calculate_visual_similarity(sc6, Alfa, Beta, Gamma,Delta,Sim_Vis).
Alfa: 0.3333333333333333
Symbols in common: [letter_O]
Beta: 1
Symbols in common with same orientation: [letter_O]
Gamma: 0.3333333333333333
Symbols in common with same location: [letter_O]
Order Object 1: 0.5
Sides oriented 0q: [letter_O,letter_P]
Order Object 2: 1.0
Sides oriented 0q: [letter_F,letter_L,letter_O]
Delta: 0.5
Mu_s: 0.7
Mu_o: 0.1
Mu_l: 0.1
Mu_ro: 0.1
Sim_Vis: 0.41666666666666663
Alfa = Gamma, Gamma = 0.3333333333333333,
Beta = 1,
Delta = 0.5,
Sim_Vis = 0.41666666666666663.

?- calculate_visual_similarity(sc7, Alfa, Beta, Gamma,Delta,Sim_Vis).
Alfa: 0
Symbols in common: []
Beta: 0
Symbols in common with same orientation: _2144
Gamma: 0
Symbols in common with same location: []
Order Object 1: 0.5
Sides oriented 0q: [letter_B,letter_X]
Order Object 2: 0.5
Sides oriented 0q: [letter_A,letter_Y]
Delta: 1.0
Mu_s: 0.7
Mu_o: 0.1
Mu_l: 0.1
Mu_ro: 0.1
Sim_Vis: 0.1
Alfa = Beta, Beta = Gamma, Gamma = 0,
Delta = 1.0,
Sim_Vis = 0.1 .

?- calculate_visual_similarity(sc7, Alfa, Beta, Gamma,Delta,Sim_Vis).
Alfa: 0
Symbols in common: []
Beta: 0
Symbols in common with same orientation: _6126
Gamma: 0
Symbols in common with same location: []
Order Object 1: 0.5
Sides oriented 0q: [letter_B,letter_X]
Order Object 2: 0.5
Sides oriented 0q: [letter_A,letter_Y]
Delta: 1.0
Mu_s: 0.7
Mu_o: 0.1
Mu_l: 0.1
Mu_ro: 0.1
Sim_Vis: 0.1
Alfa = Beta, Beta = Gamma, Gamma = 0,
Delta = 1.0,
Sim_Vis = 0.1 .

?- calculate_visual_similarity(sc8, Alfa, Beta, Gamma,Delta,Sim_Vis).
Alfa: 0.3333333333333333
Symbols in common: [letter_F]
Beta: 1
Symbols in common with same orientation: [letter_F]
Gamma: 0
Symbols in common with same location: []
Order Object 1: 0.5
Sides oriented 0q: [letter_H,letter_P]
Order Object 2: 0.0
Sides oriented 0q: [letter_A]
Delta: 0.5
Mu_s: 0.7
Mu_o: 0.1
Mu_l: 0.1
Mu_ro: 0.1
Sim_Vis: 0.3833333333333333
Alfa = 0.3333333333333333,
Beta = 1,
Gamma = 0,
Delta = 0.5,
Sim_Vis = 0.3833333333333333.

?- calculate_visual_similarity(sc9, Alfa, Beta, Gamma,Delta,Sim_Vis).
Alfa: 0.3333333333333333
Symbols in common: [letter_S]
Beta: 0
Symbols in common with same orientation: []
Gamma: 0
Symbols in common with same location: []
Order Object 1: 1.0
Sides oriented 0q: [letter_H,letter_S,letter_X]
Order Object 2: 0.0
Sides oriented 0q: []
Delta: 0.0
Mu_s: 0.7
Mu_o: 0.1
Mu_l: 0.1
Mu_ro: 0.1
Sim_Vis: 0.2333333333333333
Alfa = 0.3333333333333333,
Beta = Gamma, Gamma = 0,
Delta = 0.0,
Sim_Vis = 0.2333333333333333.

?- calculate_visual_similarity(sc10, Alfa, Beta, Gamma,Delta,Sim_Vis).
Alfa: 0.3333333333333333
Symbols in common: [letter_P]
Beta: 0
Symbols in common with same orientation: []
Gamma: 0.3333333333333333
Symbols in common with same location: [letter_P]
Order Object 1: 1.0
Sides oriented 0q: [letter_P,letter_R,letter_Y]
Order Object 2: 0.5
Sides oriented 0q: [letter_B,letter_L]
Delta: 0.5
Mu_s: 0.7
Mu_o: 0.1
Mu_l: 0.1
Mu_ro: 0.1
Sim_Vis: 0.31666666666666665
Alfa = Gamma, Gamma = 0.3333333333333333,
Beta = 0,
Delta = 0.5,
Sim_Vis = 0.31666666666666665.

?- calculate_visual_similarity(sc11, Alfa, Beta, Gamma,Delta,Sim_Vis).
Alfa: 0.3333333333333333
Symbols in common: [letter_W]
Beta: 0
Symbols in common with same orientation: []
Gamma: 0
Symbols in common with same location: []
Order Object 1: 1.0
Sides oriented 0q: [letter_H,letter_S,letter_W]
Order Object 2: 0.0
Sides oriented 0q: [letter_B]
Delta: 0.0
Mu_s: 0.7
Mu_o: 0.1
Mu_l: 0.1
Mu_ro: 0.1
Sim_Vis: 0.2333333333333333
Alfa = 0.3333333333333333,
Beta = Gamma, Gamma = 0,
Delta = 0.0,
Sim_Vis = 0.2333333333333333.

?- calculate_visual_similarity(sc12, Alfa, Beta, Gamma,Delta,Sim_Vis).
Alfa: 0.3333333333333333
Symbols in common: [letter_Y]
Beta: 0
Symbols in common with same orientation: []
Gamma: 0
Symbols in common with same location: []
Order Object 1: 1.0
Sides oriented 0q: [letter_R,letter_W,letter_Y]
Order Object 2: 0.5
Sides oriented 0q: [letter_B,letter_L]
Delta: 0.5
Mu_s: 0.7
Mu_o: 0.1
Mu_l: 0.1
Mu_ro: 0.1
Sim_Vis: 0.2833333333333333
Alfa = 0.3333333333333333,
Beta = Gamma, Gamma = 0,
Delta = 0.5,
Sim_Vis = 0.2833333333333333.

?- calculate_visual_similarity(sc13, Alfa, Beta, Gamma,Delta,Sim_Vis).
Alfa: 0.6666666666666666
Symbols in common: [letter_A,letter_F]
Beta: 0
Symbols in common with same orientation: []
Gamma: 0.3333333333333333
Symbols in common with same location: [letter_F]
Order Object 1: 0.5
Sides oriented 0q: [letter_F,letter_R]
Order Object 2: 0.5
Sides oriented 0q: [letter_A,letter_Y]
Delta: 1.0
Mu_s: 0.7
Mu_o: 0.1
Mu_l: 0.1
Mu_ro: 0.1
Sim_Vis: 0.6
Alfa = 0.6666666666666666,
Beta = 0,
Gamma = 0.3333333333333333,
Delta = 1.0,
Sim_Vis = 0.6.

?- calculate_visual_similarity(sc14, Alfa, Beta, Gamma,Delta,Sim_Vis).
Alfa: 1
Symbols in common: [letter_L,letter_R,letter_o]
Beta: 0.3333333333333333
Symbols in common with same orientation: [letter_o]
Gamma: 0
Symbols in common with same location: []
Order Object 1: 1.0
Sides oriented 0q: [letter_L,letter_R,letter_o]
Order Object 2: 0.0
Sides oriented 0q: [letter_o]
Delta: 0.0
Mu_s: 0.7
Mu_o: 0.1
Mu_l: 0.1
Mu_ro: 0.1
Sim_Vis: 0.7333333333333333
Alfa = 1,
Beta = 0.3333333333333333,
Gamma = 0,
Delta = 0.0,
Sim_Vis = 0.7333333333333333.

?- calculate_visual_similarity(sc15, Alfa, Beta, Gamma,Delta,Sim_Vis).
Alfa: 0.6666666666666666
Symbols in common: [letter_X,number_0]
Beta: 0.5
Symbols in common with same orientation: [letter_X]
Gamma: 0
Symbols in common with same location: []
Order Object 1: 0.5
Sides oriented 0q: [letter_X,number_0]
Order Object 2: 0.5
Sides oriented 0q: [letter_S,letter_X]
Delta: 1.0
Mu_s: 0.7
Mu_o: 0.1
Mu_l: 0.1
Mu_ro: 0.1
Sim_Vis: 0.6166666666666666
Alfa = 0.6666666666666666,
Beta = 0.5,
Gamma = 0,
Delta = 1.0,
Sim_Vis = 0.6166666666666666.

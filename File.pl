% diagnostico_dengue.pl

% Hechos sobre síntomas
sintoma(fiebre).
sintoma(dolor_muscular).
sintoma(dolor_articular).
sintoma(cansancio).
sintoma(dolores_de_cabeza).
sintoma(sarpullido).

% Regla para diagnóstico
diagnostico(Dengue) :- 
    sintoma(fiebre),
    sintoma(dolor_muscular),
    sintoma(dolor_articular),
    sintoma(cansancio),
    sintoma(dolores_de_cabeza),
    sintoma(sarpullido),
    Dengue = 'Posible Dengue'.
diagnostico(NoDengue) :- 
    + sintoma(fiebre),
    NoDengue = 'No es Dengue'.
# Mi-repositorio-dengue
git clone https://github.com/Pedro0400/diagnostico_dengue.git
cd diagnostico_dengue
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
    
    git add diagnostico_dengue.pl
git commit -m "Agregar programa de diagnóstico del dengue"
git push origin master

git checkout -b mejoras
git add diagnostico_dengue.pl
git commit -m "Agregar mejoras al diagnóstico"
git push origin mejoras

git checkout -b pruebas 
git add diagnostico_dengue.pl
git commit -m "Agregar pruebas al diagnóstico"
git push origin pruebas

git branch -a

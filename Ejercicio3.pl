%BASE DE CONOCIMIENTOS
%Padecimientos
padecede("Pedro", "gripe").
padecede("Pedro", "hepatitis").
padecede("Juan", "hepatitis").
padecede("Maria", "gripe").
padecede("Carlos", "acidez").

%Sintoma
sintoma("fiebre", "gripe").
sintoma("cansancio", "hepatitis").
sintoma("ardor_estomacal", "acidez").
sintoma("cansancio", "gripe").

%Medicamentos
suprime("paracetamol", "fiebre").
suprime("melox", "acidez").

alivia(A, B) :- suprime(A, C), sintoma(C, B).
tomar(A, B) :- padecede(A, C), alivia(B, C).

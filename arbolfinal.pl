hombre(luis).
hombre(david).
hombre(esteban).
hombre(marco).
hombre(alejandro).

mujer(maria).
mujer(marta).
mujer(karla).
mujer(fernanda).
mujer(ana).

progenitor(esteban,alejandro).
progenitor(karla,alejandro).
progenitor(esteban,ana).
progenitor(karla,ana).

progenitor(luis,esteban).
progenitor(maria,esteban).
progenitor(luis,fernanda).
progenitor(maria,fernanda).

progenitor(david,karla).
progenitor(marta,karla).
progenitor(david,marco).
progenitor(marta,marco).

pareja(esteban,karla).
pareja(karla,esteban).
pareja(david,marta).
pareja(marta,david).
pareja(luis,maria).
pareja(maria,luis).

marido(X,Y):-pareja(X,Y),hombre(X).
esposa(X,Y):-pareja(X,Y),mujer(X).
padre(X,Y):-progenitor(X,Y),hombre(X).
madre(X,Y):-progenitor(X,Y),mujer(X).
hijo(Y,X):-progenitor(X,Y),hombre(Y).
hija(Y,X):-progenitor(X,Y),mujer(Y).
abuelo(Y,X):-progenitor(M,Y),progenitor(X,M),hombre(X).
abuela(Y,X):-progenitor(M,Y),progenitor(X,M),mujer(X).
hermana(X,Y):-progenitor(Z,X), progenitor(Z,Y), X\==Y, mujer(X).
hermano(X,Y):-progenitor(Z,X), progenitor(Z,Y), X\==Y, hombre(X).
tio(X,Y):-hermano(X,Z),progenitor(Z,Y).
tia(X,Y):-hermana(X,Z),progenitor(Z,Y).
nieto(X,Y):-progenitor(Y,Z),progenitor(Z,X),hombre(X).
nieta(X,Y):-progenitor(Y,Z),progenitor(Z,X),mujer(X).








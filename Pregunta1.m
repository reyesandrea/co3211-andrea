% Laboratorio 6
% Andrea Reyes - Carnet: 15-11201

% PREGUNTA 1

% a. Calcular analíticamente el autovalor de mayor magnitud de A
%    y un autovector asociado para todo eps >= 0




% b. Función que utilice el método de la potencia para calcular
%    numéricamente el autovalor de mayor magnitud de A y un 
%    autovector asociado para distintos valores de eps

A = input('Matriz A: ');
error = input('Error: ');
x = [1;1;1];
itmax = input('Máxima iteración: ');
[x,k,r] = potencia(A,error,x,itmax);

% Mayor autovalor de A
R1 = ['Mayor autovalor de A: ',num2str(r)];
display(R1);

% Autovector correspondiente al mayor autovalor de A
R2 = ['Autovector correspondiente: '];
display(R2);
disp(x);

% FALTA CALCULAR ERROR RELATIVO ###

% ##################### RESPUESTAS #####################
% CASO error = 1:
  % Autovalor encontrado:
  % Iteraciones realizadas:
  % Error relativo cometido:
  
% CASO error = 10⁻²:
  % Autovalor encontrado:
  % Iteraciones realizadas:
  % Error relativo cometido:

% CASO error = 10⁻⁴:
  % Autovalor encontrado:
  % Iteraciones realizadas:
  % Error relativo cometido:

% CASO error = 10⁻⁸:
  % Autovalor encontrado:
  % Iteraciones realizadas:
  % Error relativo cometido:

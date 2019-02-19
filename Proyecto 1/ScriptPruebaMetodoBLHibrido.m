
% Este script prueba el Metodo de busqueda de linea hibrido
% Pagina web: http://www.sfu.ca/~ssurjano/optimization.html

%% Funcion Rosenbrock

puntoIni = [2; 2];
pOptimo = [1; 1];
[x, iter] = metodoblhibrido('rosenbrock', puntoIni);
fprintf('\n\nPunto optimo aproximado:\n\n');
disp(x');
fprintf('\n\nNumero de iteraciones: %d\n\n', iter);
fprintf('\n\nPunto optimo:\n\n');
disp(pOptimo');

%% Funcion Rastrigin

puntoIni = [0.4; 0.3];
pOptimo = [0; 0];
[x, iter] = metodoblhibrido('rastrigin', puntoIni);
fprintf('\n\nPunto optimo aproximado:\n\n');
disp(x');
fprintf('\n\nNumero de iteraciones: %d\n\n', iter);
fprintf('\n\nPunto optimo:\n\n');
disp(pOptimo');

%% Funcion Griewank

puntoIni = [2; 0];
pOptimo = [0; 0];
[x, iter] = metodoblhibrido('griewank', puntoIni);
fprintf('\n\nPunto optimo aproximado:\n\n');
disp(x');
fprintf('\n\nNumero de iteraciones: %d\n\n', iter);
fprintf('\n\nPunto optimo:\n\n');
disp(pOptimo');

%% Funcion Ackley

puntoIni = [0; 1.5];
pOptimo = [0; 0];
[x, iter] = metodoblhibrido('ackley', puntoIni);
fprintf('\n\nPunto optimo aproximado:\n\n');
disp(x');
fprintf('\n\nNumero de iteraciones: %d\n\n', iter);
fprintf('\n\nPunto optimo:\n\n');
disp(pOptimo');

%% Funcion Branin

puntoIni = [-4; 13];
pOptimo1 = [-pi; 12.275];
pOptimo2 = [pi; 2.275];
pOptimo3 = [9.42478; 2.475];
[x, iter] = metodoblhibrido('branin', puntoIni);
fprintf('\n\nPunto optimo aproximado:\n\n');
disp(x);
fprintf('\n\nNumero de iteraciones: %d\n\n', iter);
fprintf('\n\nPuntos optimos:\n\n');
disp(pOptimo1');
disp(pOptimo2');
disp(pOptimo3');

%% Funcion Easom

puntoIni = [5; 5];
pOptimo = [pi; pi];
[x, iter] = metodoblhibrido('easom', puntoIni);
fprintf('\n\nPunto optimo aproximado:\n\n');
disp(x');
fprintf('\n\nNumero de iteraciones: %d\n\n', iter);
fprintf('\n\nPunto optimo:\n\n');
disp(pOptimo');

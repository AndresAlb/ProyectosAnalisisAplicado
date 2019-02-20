
% Este script prueba el Metodo de busqueda de linea hibrido
% Pagina web: http://www.sfu.ca/~ssurjano/optimization.html

%% Funcion Rosenbrock

fprintf('\nROSENBROCK:\n')
puntoIni = [2; 2];
pOptimo = [1; 1];
[x, iter] = metodoblhibrido('rosenbrock', puntoIni);
fprintf('\n\nPunto optimo aproximado:\n\n');
disp(x');
fprintf('Numero de iteraciones: %d\n', iter);
fprintf('\nPunto optimo:\n\n');
disp(pOptimo');

%% Funcion Rastrigin

fprintf('\nRASTRIGIN:\n')
puntoIni = [0.3; 0.2];
pOptimo = [0; 0];
[x, iter] = metodoblhibrido('rastrigin', puntoIni);
fprintf('\n\nPunto optimo aproximado:\n\n');
disp(x');
fprintf('Numero de iteraciones: %d\n', iter);
fprintf('\nPunto optimo:\n\n');
disp(pOptimo');

%% Funcion Griewank

fprintf('\nGRIEWANK:\n')
puntoIni = [1.4; 0];
pOptimo = [0; 0];
[x, iter] = metodoblhibrido('griewank', puntoIni);
fprintf('\n\nPunto optimo aproximado:\n\n');
disp(x');
fprintf('Numero de iteraciones: %d\n', iter);
fprintf('\nPunto optimo:\n\n');
disp(pOptimo');

%% Funcion Ackley

fprintf('\nACKLEY:\n')
puntoIni = [-0.1; 0.1];
pOptimo = [0; 0];
[x, iter] = metodoblhibrido('ackley', puntoIni);
fprintf('\n\nPunto optimo aproximado:\n\n');
disp(x');
fprintf('Numero de iteraciones: %d\n', iter);
fprintf('\nPunto optimo:\n\n');
disp(pOptimo');

%% Funcion Branin

fprintf('\nBRANIN:\n')
puntoIni = [-4; 13];
pOptimo1 = [-pi; 12.275];
pOptimo2 = [pi; 2.275];
pOptimo3 = [9.42478; 2.475];
[x, iter] = metodoblhibrido('branin', puntoIni);
fprintf('\n\nPunto optimo aproximado:\n\n');
disp(x');
fprintf('Numero de iteraciones: %d\n', iter);
fprintf('\nPuntos optimos:\n\n');
disp(pOptimo1');
disp(pOptimo2');
disp(pOptimo3');

%% Funcion Easom

fprintf('\nEASOM:\n')
puntoIni = [5; 5];
pOptimo = [pi; pi];
[x, iter] = metodoblhibrido('easom', puntoIni);
fprintf('\n\nPunto optimo aproximado:\n\n');
disp(x');
fprintf('Numero de iteraciones: %d\n', iter);
fprintf('\nPunto optimo:\n\n');
disp(pOptimo');

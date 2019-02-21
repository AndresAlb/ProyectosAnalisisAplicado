
% Este script prueba el Metodo de busqueda de linea hibrido
% Pagina web: http://www.sfu.ca/~ssurjano/optimization.html

%% Funcion Rosenbrock

fprintf('\nROSENBROCK:\n')
puntoIni = [2; 2];
pOptimo = [1; 1];
[x, iterBH] = metodoblhibrido('rosenbrock', puntoIni, true);
[~, iterBIC] = metodoblinterpolacion('rosenbrock', puntoIni, true);
[~, iterBS] = metodoblsimple('rosenbrock', puntoIni, true);
fprintf('\n\nPunto optimo aproximado:\n\n');
disp(x');
fprintf('Numero de iteraciones con backtracking hibrido: %d\n', iterBH);
fprintf('Numero de iteraciones con backtracking interpolacion: %d\n', iterBIC);
fprintf('Numero de iteraciones con backtracking simple: %d\n', iterBS);
fprintf('\nPunto optimo:\n\n');
disp(pOptimo');

%% Funcion Rastrigin

fprintf('\nRASTRIGIN:\n')
puntoIni = [0.4; 0.3]; %[0.3; 0.2];
pOptimo = [0; 0];
[x, iterBH] = metodoblhibrido('rastrigin', puntoIni, false);
[~, iterBIC] = metodoblinterpolacion('rastrigin', puntoIni, false);
[~, iterBS] = metodoblsimple('rastrigin', puntoIni, false);
fprintf('\n\nPunto optimo aproximado:\n\n');
disp(x');
fprintf('Numero de iteraciones con backtracking hibrido: %d\n', iterBH);
fprintf('Numero de iteraciones con backtracking interpolacion: %d\n', iterBIC);
fprintf('Numero de iteraciones con backtracking simple: %d\n', iterBS);
fprintf('\nPunto optimo:\n\n');
disp(pOptimo');

%% Funcion Griewank

fprintf('\nGRIEWANK:\n')
puntoIni = [2; 0]; %[1.4; 0];
pOptimo = [0; 0];
[x, iterBH] = metodoblhibrido('griewank', puntoIni, true);
[~, iterBIC] = metodoblinterpolacion('griewank', puntoIni, true);
[~, iterBS] = metodoblsimple('griewank', puntoIni, true);
fprintf('\n\nPunto optimo aproximado:\n\n');
disp(x');
fprintf('Numero de iteraciones con backtracking hibrido: %d\n', iterBH);
fprintf('Numero de iteraciones con backtracking interpolacion: %d\n', iterBIC);
fprintf('Numero de iteraciones con backtracking simple: %d\n', iterBS);
fprintf('\nPunto optimo:\n\n');
disp(pOptimo');

%% Funcion Ackley

fprintf('\nACKLEY:\n')
puntoIni = [0; 1.5]; %[-0.1; 0.1];
pOptimo = [0; 0];
[x, iterBH] = metodoblhibrido('ackley', puntoIni, false);
[~, iterBIC] = metodoblinterpolacion('ackley', puntoIni, false);
[~, iterBS] = metodoblsimple('ackley', puntoIni, false);
fprintf('\n\nPunto optimo aproximado:\n\n');
disp(x');
fprintf('Numero de iteraciones con backtracking hibrido: %d\n', iterBH);
fprintf('Numero de iteraciones con backtracking interpolacion: %d\n', iterBIC);
fprintf('Numero de iteraciones con backtracking simple: %d\n', iterBS);
fprintf('\nPunto optimo:\n\n');
disp(pOptimo');

%% Funcion Branin

fprintf('\nBRANIN:\n')
puntoIni = [-4; 13];
pOptimo1 = [-pi; 12.275];
pOptimo2 = [pi; 2.275];
pOptimo3 = [9.42478; 2.475];
[x, iterBH] = metodoblhibrido('branin', puntoIni, true);
[~, iterBIC] = metodoblinterpolacion('branin', puntoIni, true);
[~, iterBS] = metodoblsimple('branin', puntoIni, true);
fprintf('\n\nPunto optimo aproximado:\n\n');
disp(x');
fprintf('Numero de iteraciones con backtracking hibrido: %d\n', iterBH);
fprintf('Numero de iteraciones con backtracking interpolacion: %d\n', iterBIC);
fprintf('Numero de iteraciones con backtracking simple: %d\n', iterBS);
fprintf('\nPuntos optimos:\n\n');
disp(pOptimo1');
disp(pOptimo2');
disp(pOptimo3');

%% Funcion Easom

fprintf('\nEASOM:\n')
puntoIni = [5; 5];
pOptimo = [pi; pi];
[x, iter] = metodoblhibrido('easom', puntoIni, false);
[~, iterBIC] = metodoblinterpolacion('easom', puntoIni, false);
[~, iterBS] = metodoblsimple('easom', puntoIni, false);
fprintf('\n\nPunto optimo aproximado:\n\n');
disp(x');
fprintf('Numero de iteraciones con backtracking hibrido: %d\n', iterBH);
fprintf('Numero de iteraciones con backtracking interpolacion: %d\n', iterBIC);
fprintf('Numero de iteraciones con backtracking simple: %d\n', iterBS);
fprintf('\nPunto optimo:\n\n');
disp(pOptimo');


% Este script prueba el Metodo de busqueda de linea hibrido

%% Funcion Rosenbrock

puntoIni = [2; 2];
[x, iter] = metodoblhibrido('rosenbrock', puntoIni);
fprintf('\n\nPunto optimo:\n\n');
disp(x);
fprintf('\n\nNumero de iteraciones: %d\n\n', iter);

%% Funcion Rastrigin

puntoIni = [0.4; 0.3];
[x, iter] = metodoblhibrido('rastrigin', puntoIni);
fprintf('\n\nPunto optimo:\n\n');
disp(x);
fprintf('\n\nNumero de iteraciones: %d\n\n', iter);

%% Funcion Griewank

puntoIni = [2; 0];
[x, iter] = metodoblhibrido('griewank', puntoIni);
fprintf('\n\nPunto optimo:\n\n');
disp(x);
fprintf('\n\nNumero de iteraciones: %d\n\n', iter);

%% Funcion Ackley

puntoIni = [0; 1.5];
[x, iter] = metodoblhibrido('ackley', puntoIni);
fprintf('\n\nPunto optimo:\n\n');
disp(x);
fprintf('\n\nNumero de iteraciones: %d\n\n', iter);

%% Funcion Branin

puntoIni = [-4; 13];
[x, iter] = metodoblhibrido('branin', puntoIni);
fprintf('\n\nPunto optimo:\n\n');
disp(x);
fprintf('\n\nNumero de iteraciones: %d\n\n', iter);

%% Funcion Easom

puntoIni = [5; 5];
[x, iter] = metodoblhibrido('easom', puntoIni);
fprintf('\n\nPunto optimo:\n\n');
disp(x);
fprintf('\n\nNumero de iteraciones: %d\n\n', iter);

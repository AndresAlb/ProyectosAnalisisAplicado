function [x, iter] = metodoblsimple(fname, x, dirNewton)

% M�todo de b�squeda de l�nea con la primer condici�n de Wolfe
% usando backtracking simple.
% 20 de Febrero de 2019.
% ITAM
% An�lisis Aplicado
% Dr. Zeferino Parada
%
% In
%   fname.- cadena de caracteres con el nombre de la funci�n a minimizar.
%   x.- vector n-dimensional.
%   dirNewton.- variable binaria que dice si se utiliza la direccion de Newton
%   o la direccion de Maximo Descenso
% Out
%   x.- vector n-dimensional con la aproximaci�n al m�nimo local.
%   iter.- contador con el n�mero final de iteraciones externas.
%
% Se requiere aproximaciones al gradiente en la funci�n
%  gradiente.m con el llamado:
% g = gradiente (fname,x);

% par�metros
tol     = 1e-08; % tolerancia para la norma del gradiente.
c1      = 1e-04;    % valor para la condici�n de Wolfe
maxiter = 250; % N�mero m�ximo de iteraciones externas permitidas
maxjter = 20;  % N�mero m�ximo de iteraciones internas de BL permitidas

% valores iniciales
iter = 0; % contador para las iteraciones externas
%fx = feval(fname,x);
g = gradiente(fname,x);
normag = norm(g);
p = 1;

% parte iterativa
while ( normag > tol && iter < maxiter &&  norm(p) > 1.e-04)
    
    if(dirNewton == true)
        H = hessiana(fname, x);
        p = -H\g; % Direccion de Newton
    else
        p = -g; % Direccion de maximo descenso
    end
     
    alfa = 1;             % paso completo
    xt = x + alfa*p;      % primer punto de prueba
    f  = feval(fname,x);  % valor de la funci�n
    f1 = feval(fname, xt);% valor de la funci�n en el punto de prueba
    s  = p'*g;            % derivada direccional
    jter = 0;             % iteraciones internas
    
    if( abs(s) < 1.e-06)
        %fprintf('\nNo hay suficiente descenso\n')
        %fprintf('Numero de iteraciones: %2.0f', iter)
        %fprintf('\nDerivada direccional: %2.10f\n', s)
        return;
    end
    
    while((f1 > f + alfa*c1*s) && jter < maxjter) % b�squeda de l�nea
       alfa = alfa/2;
       xt = x + alfa*p;
       f1 = feval(fname, xt); % valor de la funci�n en el punto de prueba
       jter = jter + 1;
    end
    
    x = x + alfa*p;  
    %fx = feval(fname,x); 
    g = gradiente(fname,x);
    iter = iter + 1;
end % Fin del while principal

end
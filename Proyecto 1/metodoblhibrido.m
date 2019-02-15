function [x,iter] = metodoblhibrido(fname,x)
% M�todo de b�squeda de l�nea con la primer condici�n de Wolfe
% usando m�ximo descenso.
% 13 de febrero de 2019.
% ITAM
% An�lisis Aplicado
% Mauricio Trejo y Andr�s Albores
%
%In
% fname.- cadena de caracteres con el nombre de la funci�n a minimizar.
% x.- vector n-dimensional.
% Out
% x.- vector n-dimensional con la aproximaci�n al m�nimo local.
% iter.- contador con el n�mero final de iteraciones externas.
%
% Se requiere aproximaciones al gradiente en la funci�n
%  gradiente.m con el llamado:
% g = gradiente (fname,x);
%------------------------------------------------------------------------

% Par�metros
tol     = 1.e-08; % Tolerancia para la norma del gradiente.
c1      = 1e-04;    % Valor para la condici�n de Wolfe
maxiter = 250;    % N�mero m�ximo de iteraciones externas permitidas
maxjter = 20;     % N�mero m�ximo de iteraciones internas de BL permitidas

% Valores iniciales
iter = 0;        % Contador para las iteraciones externas
fx = feval(fname,x);
g     = gradiente(fname,x);
ng    = norm(g);
p = 1;
% Parte iterativa
while ( ng > tol && iter < maxiter &&  norm(p)> 1.e-04)
     %p = -g;             % M�ximo descenso
     H = hessiana(fname,x);
     p = -H\g;            % Direcci�n de Newton
     
    %-----------------------------------------
    % B�squeda de l�nea
    alfa  = 1;              % Paso completo
    alfa2  = 1;              % Paso completo
    xt = x + alfa*p;        % Primer punto de prueba
    f  = feval(fname,x);  % Valor de la funci�n
    f1 = feval(fname, xt);% Valor de la funci�n en el punto de prueba
    f2 = f1;              % Valor de la funci�n en el punto de prueba
    s  = p'*g;            % Derivada direccional
    jter = 0;             % Iteraciones internas
    
    if ( abs(s) < 1.e-06)
        disp('No existe suficiente descenso  ')
        disp(sprintf('%2.0f  %2.10f',iter, s   ))
        iter = maxiter; 
    end
    % B�squeda de l�nea
    while(f1>f+alfa*c1*s && f2>f+alfa2*c1*s && jter < maxjter)
       %Backtracking
       alfa = alfa/2;
       
       %Interpolaci�n cuadr�tica
       d2 = f2 - f - s;
       alfa2 = -( s)/(2*d2);
       
       %Selecci�n de alfa
       if (f1<=f+alfa*c1*s)
           if(f2<=f+alfa2*c1*s)
               %Backtracking e interpolaci�n cuadr�tica cumplen Wolfe 1
               alfa = max(alfa,alfa2);
           end
       else
       %S�lo interpolaci�n cuadr�tica cumple Wolfe1
           if(f2<=f+alfa2*c1*s)
               alfa = alfa2;
           end
       end
       
       %Actualizaci�n
       xt = x + alfa*p;
       f1 = feval(fname, xt);
       xt = x + alfa2*p;
       f2 = feval(fname, xt);
       jter = jter +1;
       
    end
    
   if (jter >= 20 || norm(alfa*p) < 1e-3)
    alfa = 1e-2;
   end
   
    % Fin de b�squeda de l�nea
    %----------------------------------------------------------------------
    
     %--------------------------------------------------------------
     % Graficaci�n
       t = linspace(0,1,50)';
       ft = zeros(50,1); rt = zeros(50,1);
       for k = 1:50        
          ft(k) = feval(fname, x+t(k)*p);  % funci�n 
          rt(k) = fx + t(k)*(c1*p'*g);
       end
       fx = feval(fname,x+alfa*p);
       plot(t,ft,'--b',t,rt,'--m',alfa,fx,'dr', 'LineWidth',3)
       title('Gr�fica de b�squeda de l�nea','Fontsize',16)
       xlabel('EJE  T','Fontsize',16)
       ylabel(' f(x + tp)','Fontsize',16  )
       legend('f(x)','recta','punto')
        pause
      % Fin de graficaci�n
      %-----------------------------------------------------  
      % Actualizaci�n de valores
     x = x + alfa*p;  
     fx = feval(fname,x); 
     g = gradiente(fname,x);
     iter = iter + 1;
end

end


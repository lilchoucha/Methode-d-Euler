%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%---------------m�thode d'Euler :---------------%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [  ]=methode_d_euler()

%lecture de l'�quation diff�rentielle

 f =input('donnez votre �quation diff�rntielle f(t,y) =  ','s');
   
 t0 =input('donnez la borne inf de l int�gration  t0 = ' );

 tn =input('donnez la borne sup de l int�gration tn = ' );

 h =input( 'donnez le pas de discr�tisation  h = ');
    
 n =floor((tn-t0)/h) ;
    
 y0 =input('donner la valeur de la condition initiale y(t0) = ' ) ;

%initialisation de t et y comme vecteur colonnes 

T(1)= t0 ;

Y(1) = y0 ;
tic ,

%calcul de t et y

  for i=1:n-1
    t=T(i);
    y=Y(i);
   
   
    Y(i+1)=Y(i)+h*eval(f) ;
    T(i+1)=T(i)+h ;
  end
  
% Affichage graphique %

plot(T,Y,'r')

xlabel('T')

ylabel('y')

grid on

title('Repr�sentation de la m�thode d Euler')
time= toc

  
  end 



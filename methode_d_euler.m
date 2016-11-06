%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%---------------méthode d'Euler :---------------%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [  ]=methode_d_euler()

%lecture de l'équation différentielle

 f =input('donnez votre équation différntielle f(t,y) =  ','s');
   
 t0 =input('donnez la borne inf de l intégration  t0 = ' );

 tn =input('donnez la borne sup de l intégration tn = ' );

 h =input( 'donnez le pas de discrétisation  h = ');
    
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

title('Représentation de la méthode d Euler')
time= toc

  
  end 



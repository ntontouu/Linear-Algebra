disp("Running...")


%пимайес циа тис дойилес
A = [
16 18 2 9 17 4 15 16 14 19;
3 16 10 17 10 13 2 13 12 10;
20 9 15 18 10 17 8 14 14 17;
4 16 20 17 14 8 17 10 4 17;
6 15 4 15 19 13 5 12 18 3;
15 13 14 5 15 17 7 20 4 14;
15 13 19 8 14 11 11 16 17 18;
14 12 4 17 1 3 14 6 5 14;
14 8 11 1 2 17 2 13 2 7;
2 7 11 17 19 4 6 14 18 10 ];

A1 = [
-2 1 0 0 0;
1 0 1 -2 0;
0 0 0 1 -2;
1 -2 1 0 0;
0 1 -2 1 0 ];

A3 = [
-2 1 0 0 0;
1 0 1 -2 0;
0 0 0 1 -2;
1 -2 1 0 0;
3 -6 3 0 0 ];


B = [2 3 1; 4 5 2; 4 6 -1]


%%%%%%%%%%%%%%%%%%%богхгтийес сумаятгсеис %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%епистяежеи 1 ам о пимайас в еимаи тетяацымий╪с
function res = isSquared ( x )
  %ам г пяытг йаи г деутеяг диастасг еимаи исес тоте епистяежеи 1
  %дгкадг о пимайас в еимаи тетяацымийос
  if (( size(x,1) == size(x,2) ))
    res = 1;
  else
    res = 0;
  endif
endfunction


%епистяежеи 1 ам о пимайас еимаи тяицымийос йаты
function res = isTriangleUp(x)
  %г диастасг тоу пимайа
  n = size(x,1)
  %циа йахе лиа цяаллг
  for j = 1:size(x,1)
    %ам то стоивеио тгс йуяиас диацымиоу еимаи лгдем
    %(╧ сведом лгдем) тоте о пимайас дем еимаи
    %тяицымийос йаты
    if abs(x(j,j))< 0.000001
      error(' The matrix is not invertible')
      res = 0
    endif
   endfor
   %пяепеи ма лгдемифомтаи та стоивеиа йаты апо тгм йуяиа диацымио
   %ама стгкес
   %циа йахе лиа цяаллг апо тгм деутеяг йаи йаты
   for i = 2:n
     %циа йахе стгкг апо тгм пяытг левяи тгм I-1
     for j = 1:(i-1)
       %ам то стоивеио еимаи лгдем (╧ сведом лгдем)
       %тоте дем еимаи тяицымийос йаты
       if (abs(x(i,j))>=0.00001)
         error(' The matrix is not invertible')
         res = 0
       endif
     endfor
   endfor
   %ам пеяасе ап╪ окоус тоус екецвоус тоте еимаи тяицымийос йаты
   res = 1
endfunction

%пяосхетеи тгм цяаллг R2 TOY пимайа в стг цяаллг R1 TOY идиоу
%пимайа поккапкасиаслемг ле то й
function res = ADDROW(x, R1, R2, k)
  %циа стоивеио тгс цяаллгс R1 KAI R2
  for i = 1:size(x, 2)
    %поккапкасиафеи ле й то стоивеио стгм цяаллг R2 / стгкг и
    %то апотекесла то пяосхетеи сто стоивеио стгм цяаллг R1 / стгкг и
    x(R1,i) = x(R1,i) + k*x(R2,i)
  endfor
  %епистяежеи том пимайа в аккацлемо
  res = x
endfunction

%диаияеи окес тис стгкес тгс цяаллгс я1 тоу пимайа в ле то Y
function res = DIVROW(x, R1, y)
  for i = 1:size(x,2)
    display(i)
    x(R1,i) = x(R1,i)/y
  endfor
  res = x
endfunction
%KANEI AMOIBAIA аккацг тым цяаллым I KAI J
function res = swapRows(x,i,j)
  AA = x
  res = AA
  for c=1:size(AA,2)
    res(i,c) = AA(j,c)
    res(j,c) = AA(i,c)
  endfor
endfunction
%йаталетяа та стоивеиа тгс йуяиас диацымиоу поу еимаи лгдемийа
function res = isDiagonialZero(x)
  res = 0
  for i = 1:size(x,1)
    display(x(i,i))
    if x(i,i) == 0
      res = res + 1
    endif
  endfor
endfunction
%Eкецвеи ам упаявеи лгдемийо стоивеио стгм йуяиа диацымио
%йаи ам емтописеи тетоио стоивеио йамеи алоибаиес аккацес
%цяаллым циа ма то аполайя╬меи апо аутг
function [res1, res2] = removeDiagonialZero(x)
  AA = x;
  %о P аявийа еимаи о и
  P = eye(size(AA,1))
  %ои пимайес тоу апотекеслатос
  res1 = AA
  res2 = P
  changed = true
  %се йахе цяаллг екецвоуле ам то стоивеио тгс диацымиоу е╨маи 0
   for i=1:size(res1,1)-1
     display(isDiagonialZero(res1))
    if isDiagonialZero(res1) == 0
      break
    else
    if res1(i,i) == 0
      for r=i+1:size(res1,1)
        if i != r
          if res1(r,i)!=0 && res1(i,r)!=0
            res1 = swapRows(res1,i,r)
            res2  = swapRows(res2,i,r)
          endif
        endif
       endfor
      endif
      endif
   endfor
   if isDiagonialZero(res1) != 0
     for i=1:size(res1,1)-1
       if res1(size(res1,1),i)!=0 && res1(i,size(res1,1))!=0
        res1 = swapRows(res1,size(res1,1),i)
        res2  = swapRows(res2,size(res1,1),i)
       endif
      endfor
    endif
 endfunction

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%фгтоулемо 1а%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%упокоцифеи том амтистяожо тоу пимайа а
function res = computeInverseMatrix(A)
  %ам о пимайас дем еимаи тетяацымийос дем
  %лпояе╨ ма упокоцистеи о амтистяожос тоу
  if isSquared ( A ) == 0
    error("Parameter is not a squared matrix")
  endif
  [AA II] = removeDiagonialZero(A)
  %дглиоуяцеитаи о епаунглемос пимайас
  AA = cat(2,AA,II)%AI(A)
  %аявийа о P EINAI O ломадиаиос пимайас
  P = eye(size(A,1))
  %стг сумевеиа ха йатацяаьеи емдеволемес летахесеис цяаллым

  %цимомтаи цяаллопяанеис циа ма свглатистеи йаты тяицымийос пимайас
  %ажаияеитаи ап╪ тгм цяаллг 2 йаи йаты г пяогцоулемг тгс цяаллг
  %поккапкасиаслемг ле йатаккгко аяихло циа ма лгдемистеи г
  %амтистоивг стгкг й╒ты ап╪ тгм йуяиа диацымио
  for j = 1:size(AA,1)-1
    if AA(j,j)!=0
      for i = j+1:size(AA,1)
        AA = ADDROW(AA, i, j, -(AA(i,j) / AA(j,j)))
      endfor
    endif
  endfor
  %ам о пимайас поу пяоейуье еимаи йаты тяицымийос
  %сумевифетаи г амаф╧тгсг

  if (isTriangleUp(AA(:,1:size(AA,1))) == 1)
    %лгдемифомтаи йаи та стоивеиа памы апо тгм йуяиа диацымио
    %цимомтаи ажаияесеис йахе цяаллгс апо тгм памы апо аутг
    %поккапкасиаслемг ле йатаккгко аяихло циа ма лгдемистеи
    %г амтистоивг стгкг п╒мы ап╪ тгм йуяиа диацымио
    j = size(AA,1)
    while j >= 2
      i = j-1
      if AA(j,j)!=0
        while i >=1

            AA = ADDROW(AA, i, j, -(AA(i,j) / AA(j,j)))
            i = i - 1
          endwhile
        endif


      j = j -1
    endwhile
    %цимомтаи диаияесеис тым цяаллым ©сте ма цимеи ломада
    %йахе стоивеио стгм йуяиа диацымио

    for i = 1:size(AA,1)

       if (AA(i,i)!=0)
        AA = DIVROW(AA, i, AA(i,i))
       endif
    endfor
    res = AA(1:size(AA,1),size(AA,2)/2+1:size(AA,2))
  else
    %ам о пимайас дем еимаи йаи тяицымийос амы тоте дем еимаи амтистяеьилос
    error(' The matrix is not invertible')
  endif
 endfunction


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%фгтоулемо 1б%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%упокоцифеи то U
function [L P U] = LUfactorizationWithPivoting(x)
  %о аа циметаи амтицяажо тоу в
  [AA, P] = removeDiagonialZero(x)
  %TO S аявипоиеитаи ле том ломадиаио пимайа
  s = eye(size(x,1))
  for j=1:size(AA,1)-1
    b = eye(size(x,1))
    for i=j+1:size(AA,1)
      b(i,j) = -AA(i,j)/AA(j,j)
      s = s * b
    endfor
    s = s * computeInverseMatrix(b)
  endfor
  L = computeInverseMatrix(s)
  U = s * AA
endfunction


[L P U] = LUfactorizationWithPivoting(A1)

%%%%%%%%%%%%%%%%%%%%%%%%%%фгтоулемо 2%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function[y] = SolForwardLU (L, b)
  _L = computeInverseMatrix(L)
  [y] = _L * b
endfunction


function [x] = SolBackwardLU (U, y)
  _U = computeInverseMatrix(U)
  [x] = _U * y
endfunction

A = [2 3 1; 2 1 -1; 1 1 1]
B = [7 ;1 ;4]
S = [1; 1; 2]
[L1 P1 U1] = LUfactorizationWithPivoting(A)
Y = SolForwardLU(L1, B)
X = SolBackwardLU(U1, S)






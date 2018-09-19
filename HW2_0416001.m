% make impulse response 
h1 = [ones(1,4)*1/4 , 0] ;
h2 = [1/4 -1/4 1/4 -1/4, 0] ;
% make step function
step_function = ones(1 , 100) ;
y1 = conv(step_function , h1) ;
y2 = conv(step_function , h2) ;

% for they have to have the same length
y1 = y1(1 : 20) ;
y2 = y2(1 : 20) ;
n = [0 : 19];

% plot two figure s1[n] and s2[n] respectively

%plot the first one
figure ; 
stem(n , y1)
axis([0 , 20 , -inf , inf])
grid on;
ylabel('s1[n]')
xlabel('n')
title('h1[n] case')

%plot the second one
figure
stem(n , y2)
axis([0 , 20 , -inf , inf])
grid on;
ylabel('s2[n]')
xlabel('n');
title('h2[n] case')
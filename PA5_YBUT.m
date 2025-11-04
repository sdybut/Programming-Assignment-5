% Problem 1
% declaring all the values
% matrix a
a = [2, 0, 1, 8, 0, -2; 
    3, 4, 7, 3, 7, 6; 
    -6, 4, -1, 2, 5, 9]

a1 = transpose(a)       % flips rows into a column
a2 = a'                 % same as transpose because ALL are REAL numbers
a3 = a.'                % same function with 'transpose(a)'

% matrix b
b = [(3+j.*2) (-6-j.*7) (1-j);
    (-5+j.*2) (3+j) (1+j.*7);
    (4-j.*3) (7+j.*8) (j.*3)]

b1 = transpose(b)       % flips rows into a column but does NOT AFFECT SIGNS
b2 = b'                 % transpose and CHANGES SIGNS
b3 = b.'                % same function with 'transpose(b)'

% Problem 2
% declaring all the values
% given linear equation
x = [3, 4, -3, pi, 1;           % 3𝑥1 + 4𝑥2 − 3𝑥3 + 𝜋𝑥4 + 𝑥5
    1, -1, 5, -4, 6;            % 𝑥1 − 𝑥2 + 5𝑥3 − 4𝑥4 + 6𝑥5
    3, -sqrt(5), -1, 7, -9;     % 3𝑥1 − √5𝑥2 − 𝑥3 + 7𝑥4 − 9𝑥5 
    7, 4, -7, 8, 2;             % 7𝑥1 + 4𝑥2 − 7𝑥3 + 8𝑥4 + 2𝑥5
    9, csc(3), -11, -6/5, 2]    % 9𝑥1 + csc(3) 𝑥2 − 11𝑥3 − 6/5𝑥4 + 2𝑥5

% right-hand side of the equation
y = [1; 12; -7; 2; 0]

% Inverse method
c1 = inv(x) * y                 % multiplying inverse of x with y

% cramer's rule
detA = det(x)                   % determinant of the main coefficient matrix


% Replace each column with y and get te determinant
da = [y x(:,2:5)]               % replace 1st column with y
d1 = det(da)                    

db = [x(:,1) y x(:,3:5)]        % replace 2nd column with y
d2 = det(db)

dc = [x(:,1:2) y x(:,4:5)]      % replace 3rd column with y
d3 = det(dc)

dd = [x(:,1:3) y x(:,5)]        % replace 4th column with y
d4 = det(dd)

de = [x(:,1:4) y]               % replace 5th column with y
d5 = det(de)

% compute the final Cramer's Rule solution vector
cramer = [d1; d2; d3; d4; d5] / detA
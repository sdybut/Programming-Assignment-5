# Programming-Assignment-5

### Problem 1 
Aside from the transpose command, there are two other operations that appears to do the same. These are the operators ‘ (apostrophe after the variable) and .’ (a dot and apostrophe after the variable). Determine the differences between these three operations.


<img width="570" height="83" alt="image" src="https://github.com/user-attachments/assets/1d253aa5-3ba7-4f89-94f5-973fcb265c2d" /> <br/>


 **Code**

    % declaring all the values
    % matrix a
    a = [2, 0, 1, 8, 0, -2; 
    3, 4, 7, 3, 7, 6; 
    -6, 4, -1, 2, 5, 9]

    a1 = transpose(a)       % flips rows into a column
    a2 = a'                 % same as transpose because ALL are REAL numbers
    a3 = a.'                % same function with 'transpose(a)'
 

**Output** </br>

<img width="418" height="147" alt="image" src="https://github.com/user-attachments/assets/3d5a5288-9b5a-4d23-9aad-a73842d54636" /> </br>

transpose(a) <br/>
<img width="217" height="216" alt="image" src="https://github.com/user-attachments/assets/96121fdf-cdbf-4733-aafa-cb3ef76978dd" />

a' <br/>
<img width="218" height="216" alt="image" src="https://github.com/user-attachments/assets/2780e3f9-dbc3-43dd-a224-fb7042737f42" />

a.' <br/>
<img width="211" height="217" alt="image" src="https://github.com/user-attachments/assets/d785b660-0dbb-4ccc-8827-83dba8294641" />


**Code**

    % matrix b
    b = [(3+j.*2) (-6-j.*7) (1-j);
    (-5+j.*2) (3+j) (1+j.*7);
    (4-j.*3) (7+j.*8) (j.*3)]

    b1 = transpose(b)       % flips rows into a column but does NOT AFFECT SIGNS
    b2 = b'                 % transpose and CHANGES SIGNS
    b3 = b.'                % same function with 'transpose(b)'


**Output** </br>

<img width="645" height="147" alt="image" src="https://github.com/user-attachments/assets/3bd04df8-5aaa-47cb-922a-c2c68a441628" /> </br>

transpose(b) <br/>
<img width="646" height="140" alt="image" src="https://github.com/user-attachments/assets/34683b9b-5285-4998-95c8-f833b392f839" />

b' <br/>
<img width="642" height="145" alt="image" src="https://github.com/user-attachments/assets/94a7b0a8-2da1-49c5-b718-40a286f38967" />

b.' <br/>
<img width="646" height="140" alt="image" src="https://github.com/user-attachments/assets/3d31c598-1c28-49ca-8acd-9732bad3fd59" />

**Conclusion**

To conclude, I focused on understanding how MATLAB handles different transpose operations. I began by testing a real matrix using transpose(A), A', and A.' to see if there was any difference. Since all entries were real, I observed that the results were identical. I then tested a complex matrix to explore deeper, and that’s when I realized A' performs a conjugate transpose, it flips rows and columns but also changes the signs of the imaginary parts, while transpose(A) and A.' only perform a pure transpose. This step-by-step process helped me understand how MATLAB distinguishes between real and complex matrices, and why using the correct operator matters when working with complex numbers in engineering and mathematical computations.


### Problem 2
Solve the given linear equations simultaneously using two methods: (1) inverse method and (2) Cramer’s Rule.
<img width="347" height="148" alt="image" src="https://github.com/user-attachments/assets/0b24eb9f-6184-4f6f-a0d9-3e832a78a22d" />


**Code**

    % declaring all the values
    % given linear equation
    x = [3, 4, -3, pi, 1;           % 3𝑥1 + 4𝑥2 − 3𝑥3 + 𝜋𝑥4 + 𝑥5
    1, -1, 5, -4, 6;                % 𝑥1 − 𝑥2 + 5𝑥3 − 4𝑥4 + 6𝑥5
    3, -sqrt(5), -1, 7, -9;         % 3𝑥1 − √5𝑥2 − 𝑥3 + 7𝑥4 − 9𝑥5 
    7, 4, -7, 8, 2;                 % 7𝑥1 + 4𝑥2 − 7𝑥3 + 8𝑥4 + 2𝑥5
    9, csc(3), -11, -6/5, 2]        % 9𝑥1 + csc(3) 𝑥2 − 11𝑥3 − 6/5𝑥4 + 2𝑥5

    % right-hand side of the equation
    y = [1; 12; -7; 2; 0]

**Output** </br>
<img width="567" height="190" alt="image" src="https://github.com/user-attachments/assets/c178a05a-3e2c-4bef-9e70-521c2d5f734b" />
<img width="89" height="194" alt="image" src="https://github.com/user-attachments/assets/f1f6c96b-4dd4-4804-bfd1-d07a4ff259b1" />


**Code**
    
    % Inverse method
    c1 = inv(x) * y                 % multiplying inverse of x with y

**Output** </br>
<img width="131" height="194" alt="image" src="https://github.com/user-attachments/assets/3ecab453-f4fa-49dd-848e-ba84fb852c55" /> <br/>

<br/>

**Code**

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

<br/>

**Output** <br/>

detA = 1.3856e+04 <br/> 

da <br/>
<img width="562" height="192" alt="image" src="https://github.com/user-attachments/assets/07a92971-7733-41b5-9259-529a22b02a9f" /> <br/>
d1 = 1.3856e+04 <br/>

<br/>

db <br/>
<img width="571" height="209" alt="image" src="https://github.com/user-attachments/assets/8479a8e8-8c4c-43a4-aaf0-26bb4c446fce" /> <br/>
d2 = 6.2985e-14 <br/>


dc <br/>
<img width="574" height="194" alt="image" src="https://github.com/user-attachments/assets/1eb9acdc-f30e-4ad0-adf5-9cf0e769eeb7" /> <br/>
d3 = 1.3856e+04 <br/>

dd <br/>
<img width="570" height="197" alt="image" src="https://github.com/user-attachments/assets/9b30034e-6634-4c1e-b5f7-52aafc4f874d" /> <br/>
d4 = 0 <br/>

de <br/>
<img width="565" height="193" alt="image" src="https://github.com/user-attachments/assets/8705335d-c9c7-4791-8f0b-9e2653eacb8c" /> <br/>
d5 =  1.3856e+04 <br/>

<br/>

**Code**

    % compute the final Cramer's Rule solution vector
    cramer = [d1; d2; d3; d4; d5] / detA

<br/>

**Output** </br>

cramer </br> 
<img width="131" height="195" alt="image" src="https://github.com/user-attachments/assets/1a6ac350-5dd0-4c07-bafc-f50ef43c7fb0" />


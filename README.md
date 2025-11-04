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



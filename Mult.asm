//Perform a multiplication function. 
//Multiply R1 and R0, save the result in R2. 

//Performed by adding the value of R1 to the value of R0, the same number of times as the value in R1. 
//Save the value in R1 in temp, then decrement the temp value each addition. 
//Exit when temp = 0.

//Check if either input = 0
@R2 
    M = 0 
@R0 
    D = M 
@END 
    D;JEQ //End if R0 = 0 
@R1 
    D = M 
@END 
    D;JEQ //End if R1 = 0

//Check if either input = 1
@R0 //Access R0
    D=M //Set D = R0
@R2 //Access R2
    M = D //Set R2 = R0
@R1 //Check if R1 is 0. If it is, jump to end.
    D = M - 1 //If R1 is 0, then D = 0
@END    
    D;JEQ //Jump to end if D = 0
@R1 
    D = M //If D != 0, D = R1. Checking if R0 is 0.
@R2
    M = D
@R0
    D = M - 1 //If R0 = 1, then D will = 0
@END
    D;JEQ //Exit if R0 = 1



@R2
    M = 0 // Zero out the value in R2 ready for calculation.
@R0 //Select register 0
    D = M //Set D equal to register 0 for calculation

@count
    M = D //Save the value in D (R0) into the counter variable

(CALCULATION)
    @R1 
        D = M //Set D to R1
    @R2
        M = M + D
    @count //Select the counter variable
        M = M - 1 //Decrement counter
        D=M //Set the D register to equal the value in temp for evaluation

    @END //Declare jump point
        D;JEQ //Jump to END if temp is 0

    @CALCULATION //Declare calculation as jump point
        0;JMP //Jump to calculation if temp is not equal to 0


(END)
    0;JMP
       IDENTIFICATION DIVISION.
       PROGRAM-ID. "BMI-CALCULATOR".
       AUTHOR. JIRO LAURENZ.
       
       ENVIRONMENT DIVISION.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WEIGHT PIC 999V99.
       01 HEIGHT_INCHES PIC 99V99.
       01 BMI PIC 99V99.
       01 STATUS-MSG PIC X(20).
       
       PROCEDURE DIVISION.
       0100-START-HERE.
           DISPLAY "Enter height in inches: ".
           ACCEPT HEIGHT_INCHES.
           DISPLAY "Enter weight in pounds: ".
           ACCEPT WEIGHT.
       
           COMPUTE BMI = WEIGHT * 703 / (HEIGHT_INCHES * HEIGHT_INCHES).
       
           DISPLAY "Your BMI is: ", BMI, "%".
       
           EVALUATE TRUE
               WHEN BMI < 18.5
                   MOVE "Underweight" TO STATUS-MSG
               WHEN BMI < 24.9
                   MOVE "Normal" TO STATUS-MSG
               WHEN BMI < 29.9
                   MOVE "Overweight" TO STATUS-MSG
               WHEN OTHER
                   MOVE "Obese" TO STATUS-MSG
           END-EVALUATE
       
           DISPLAY "Status: ", STATUS-MSG.
       
           STOP RUN.
       END PROGRAM BMI-CALCULATOR.


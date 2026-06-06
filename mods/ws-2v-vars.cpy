      *> EQUATION PARAMETERS
       01 2V-A1      PIC S9(8)V9(10)  COMP.
       01 2V-B1      PIC S9(8)V9(10)  COMP.
       01 2V-C1      PIC S9(8)V9(10)  COMP.
       01 2V-A2      PIC S9(8)V9(10)  COMP.
       01 2V-B2      PIC S9(8)V9(10)  COMP.
       01 2V-C2      PIC S9(8)V9(10)  COMP.

      *> RESULT VARIABLES
       01 2V-DET     PIC S9(8)V9(10)  COMP.
       01 2V-X       PIC S9(8)V9(10)  COMP.
       01 2V-Y       PIC S9(8)V9(10)  COMP.
       01 2V-NO-SOL  PIC 9 VALUE 0.

      *> MESSAGE VARIABLES
       01 Y-Result-Display PIC -ZZZ99.99.
       01 Y-Result-Display PIC -ZZZ99.99.

       INPUT-2V.
           DISPLAY X"0A" & "  ENTER A1: " WITH NO ADVANCING
           ACCEPT 2V-A1.
           DISPLAY "  ENTER B1: " WITH NO ADVANCING
           ACCEPT 2V-B1.
           DISPLAY "  ENTER C1: " WITH NO ADVANCING
           ACCEPT 2V-C1.
           DISPLAY "  ENTER A2: " WITH NO ADVANCING
           ACCEPT 2V-A2.
           DISPLAY "  ENTER B2: " WITH NO ADVANCING
           ACCEPT 2V-B2.
           DISPLAY "  ENTER C2: " WITH NO ADVANCING
           ACCEPT 2V-C2.

       SOLVE-2V.
           COMPUTE 2V-DET =  ((2V-A1 * 2V-B2) -  2V-A2 * 2V-B1)

           IF 2V-DET = 0
               MOVE 1 TO 2V-NO-SOL
           ELSE
               MOVE 0 TO 2V-NO-SOL
               COMPUTE 2V-X =
                   (2V-C1 * 2V-B2) -  (2V-C2 * 2V-B1) / 2V-DET
               COMPUTE 2V-Y =
                   (2V-A1 * 2V-C2) -  (2V-A2 * 2V-C1) / 2V-DET
           END-IF.

       OUTPUT-2V.
           IF 2V-NO-SOL = 1
               DISPLAY "NO UNIQUE SOLUTION (DET = 0)."
           ELSE
               DISPLAY "X = " 2V-X
               DISPLAY "Y = " 2V-Y
           END-IF.

       DO-SPLDV.
           PERFORM INPUT-2V
           PERFORM SOLVE-2V
           PERFORM OUTPUT-2V.


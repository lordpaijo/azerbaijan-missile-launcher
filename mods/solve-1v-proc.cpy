       INPUT-1V.
           DISPLAY X"0A" & "  A: " WITH NO ADVANCING
           ACCEPT 1V-A.
           DISPLAY "  B: " WITH NO ADVANCING
           ACCEPT 1V-B.

       SOLVE-1V.
           COMPUTE 1V-X = -(1V-B) / 1V-A.

       OUTPUT-1V.
           IF 1V-NO-SOL = 1
               DISPLAY "NO UNIQUE SOLUTION (DET = 0)."
           ELSE
               DISPLAY "X = " 1V-X
           END-IF.

       DO-SPLSV.
           PERFORM INPUT-1V
           PERFORM SOLVE-1V
           PERFORM OUTPUT-1V.


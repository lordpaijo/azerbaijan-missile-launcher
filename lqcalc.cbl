       IDENTIFICATION DIVISION.
       PROGRAM-ID. SOLVE-2V.
       AUTHOR. LordPaijo.
       DATE-WRITTEN. June 5th 2026.
       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION. 

       01 WS-CHOICE PIC 9 VALUE 0.
       01 WS-TAB      PIC X VALUE X"09".
       01 WS-MENU     PIC X(40).

      *> LINEAR EQUATIONS WORKING-STORAGE MODULES
           COPY "mods/ws-1v-vars.cpy".
           COPY "mods/ws-2v-vars.cpy".

       PROCEDURE DIVISION.
           DISPLAY 
           "============================================="
           DISPLAY "                SELECT SOLVER"
           DISPLAY 
           "============================================="
           DISPLAY 
           "  [ 1 ] ONE VARIABLE" & X"09" & "[ 2 ] TWO VARIABLES"
           DISPLAY
           "============================================="
           DISPLAY "  ENTER CHOICE: " WITH NO ADVANCING
           ACCEPT WS-CHOICE.

           EVALUATE WS-CHOICE
               WHEN 1 PERFORM DO-SPLSV
               WHEN 2 PERFORM DO-SPLDV
               WHEN OTHER
                   DISPLAY X"07" "INVALID CHOICE!"
           END-EVALUATE
           
           STOP RUN.

      *> LINEAR EQUATIONS PROCEDURE MODULES
       COPY "mods/solve-1v-proc.cpy".
       COPY "mods/solve-2v-proc.cpy".
       


       IDENTIFICATION DIVISION.
       PROGRAM-ID. PlusOuMoins.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 seed PIC 9(8) VALUE 0.
       01 nbAleatoire PIC 999.
       01 nbEntree PIC 999.

       PROCEDURE DIVISION.

       INITIALIZE nbEntree.
       MOVE FUNCTION CURRENT-DATE(9:8) TO seed.

       DISPLAY 'Jeu du plus ou moins'

       COMPUTE nbAleatoire = FUNCTION RANDOM (seed) * 100 + 1.

       PERFORM UNTIL nbEntree = nbAleatoire
         DISPLAY 'Entrer un nombre : '
         ACCEPT nbEntree
         IF nbEntree > nbAleatoire THEN
             DISPLAY 'C''est moins'
         ELSE
             DISPLAY 'C''est plus'
         END-IF
       END-PERFORM.

       DISPLAY 'Vous avez trouve !'

       STOP RUN.

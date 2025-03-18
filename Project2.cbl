      ******************************************************************
      * Authors: Paul Squires, 040766405
      *          Cole Brito,
      * Course and Section: CST8283 302
      * Date: Mar 18, 2025
      * Purpose: Project 2
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROJECT-2.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT PORTFOLIO-FILE-IN
           ASSIGN TO "../PORTFOLIO.txt"
           ORGANIZATION IS LINE SEQUENTIAL.

           SELECT STOCK-FILE-IN
           ASSIGN TO "../STOCKS.txt"
           ORGANIZATION IS LINE SEQUENTIAL.

           SELECT REPORT-FILE-OUT
           ASSIGN TO "../REPORT.txt"
           ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD PORTFOLIO-FILE-IN.
       01 PORTFOLIO-RECORD.
           05 STOCK-SYMBOL-P PIC X(7).
           05 SHARES         PIC 9(5).
           05 AVERAGE-COST   PIC 9(4)V99.

       FD STOCK-FILE-IN.
       01 STOCK-RECORD.
           05 STOCK-SYMBOL-S  PIC X(7).
           05 STOCK-NAME      PIC X(25).
           05 CLOSING-PRICE   PIC 9(4)V99.

       FD REPORT-FILE-OUT.
       01 REPORT-RECORD.
           05 RECORD-STOCK-NAME        PIC X(25).
           05 FILLER                   PIC X(2) VALUE SPACES.
           05 RECORD-SHARES            PIC ZZZ,ZZ9.
           05 FILLER                   PIC X(3) VALUE SPACES.
           05 RECORD-UNIT-COST         PIC $,$$9.99.
           05 FILLER                   PIC X(3) VALUE SPACES.
           05 RECORD-AT-CLOSING        PIC $,$$9.99.
           05 FILLER                   PIC X(3) VALUE SPACES.
           05 RECORD-COST-BASE         PIC $$,$$9.99.
           05 FILLER                   PIC X(3) VALUE SPACES.
           05 RECORD-MARKET-VALUE      PIC $$,$$9.99.
           05 FILLER                   PIC X(3) VALUE SPACES.
           05 RECORD-GAIN-LOSS         PIC $$,$$9.99.
           05 RECORD-MINUS             PIC X.

       WORKING-STORAGE SECTION.
       01 HEADER-DIVISION.
           05 FILLER PIC X(80) VALUE ALL "=".

       01 OUTPUT-RECORD-HEADER.
           05 HEADER-STOCK-NAME        PIC X(10) VALUE "STOCK NAME".
           05 FILLER                   PIC X(17) VALUE SPACES.
           05 HEADER-SHARES            PIC X(7) VALUE "#SHARES".
           05 FILLER                   PIC X(3) VALUE SPACES.
           05 HEADER-UNIT-COST         PIC X(9) VALUE "UNIT COST".
           05 FILLER                   PIC X(2) VALUE SPACES.
           05 HEADER-AT-CLOSING        PIC X(10) VALUE "AT CLOSING".
           05 FILLER                   PIC X(3) VALUE SPACES.
           05 HEADER-COST-BASE         PIC X(9) VALUE "COST BASE".
           05 FILLER                   PIC X(2) VALUE SPACES.
           05 HEADER-MARKET-VALUE      PIC X(12) VALUE "MARKET VALUE".
           05 FILLER                   PIC X(3) VALUE SPACES.
           05 HEADER-GAIN-LOSS         PIC X(9) VALUE "GAIN/LOSS".


       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Hello world"
            STOP RUN.

       END PROGRAM PROJECT-2.

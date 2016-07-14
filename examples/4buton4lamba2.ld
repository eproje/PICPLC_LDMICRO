LDmicro0.1
MICRO=Microchip PIC16F876 28-PDIP or 28-SOIC
CYCLE=10000
CRYSTAL=20000000
BAUD=2400
COMPILED=E:\Okul\BATEMCD\Programlar\PIC_PLC\ornekler\4buton4lamba2.hex

IO LIST
    X1 at 21
    X2 at 22
    X3 at 23
    X4 at 24
    X5 at 25
    Y1 at 16
    Y2 at 15
    Y3 at 14
    Y4 at 13
END

PROGRAM
RUNG
    CONTACTS X1 0
    OSR
    CTC Csay1 1
END
RUNG
    CONTACTS X2 0
    OSR
    CTC Csay2 1
END
RUNG
    CONTACTS X3 0
    OSR
    CTC Csay3 1
END
RUNG
    CONTACTS X4 0
    OSR
    CTC Csay4 1
END
RUNG
    CONTACTS X5 0
    OSR
    CTC Csay5 1
END
RUNG
    EQU Csay5 1
    OSR
    PARALLEL
        MOVE Csay1 1
        MOVE Csay2 1
        MOVE Csay3 1
        MOVE Csay4 1
    END
END
RUNG
    EQU Csay5 0
    OSR
    PARALLEL
        MOVE Csay1 0
        MOVE Csay2 0
        MOVE Csay3 0
        MOVE Csay4 0
    END
END
RUNG
    EQU Csay1 1
    COIL Y1 0 0 0
END
RUNG
    EQU Csay2 1
    COIL Y2 0 0 0
END
RUNG
    EQU Csay3 1
    COIL Y3 0 0 0
END
RUNG
    EQU Csay4 1
    COIL Y4 0 0 0
END

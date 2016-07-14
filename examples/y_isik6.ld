LDmicro0.1
MICRO=Microchip PIC16F876 28-PDIP or 28-SOIC
CYCLE=10000
CRYSTAL=20000000
BAUD=2400
COMPILED=E:\Okul\BATEMCD\Programlar\PIC_PLC\ornekler\y_isik6.hex

IO LIST
    Y1 at 11
    Y2 at 12
    Y3 at 13
    Y4 at 14
    Y5 at 15
    Y6 at 16
END

PROGRAM
RUNG
    CONTACTS R1 1
    TON T1 500000
    TOF T2 500000
    PARALLEL
        COIL R1 0 0 0
        CTC Csayac 5
    END
END
RUNG
    EQU Csayac 0
    COIL Y1 0 0 0
END
RUNG
    EQU Csayac 1
    COIL Y2 0 0 0
END
RUNG
    EQU Csayac 2
    COIL Y3 0 0 0
END
RUNG
    EQU Csayac 3
    COIL Y4 0 0 0
END
RUNG
    EQU Csayac 4
    COIL Y5 0 0 0
END
RUNG
    EQU Csayac 5
    COIL Y6 0 0 0
END

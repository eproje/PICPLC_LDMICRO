LDmicro0.1
MICRO=Microchip PIC16F628 18-PDIP or 18-SOIC
CYCLE=10000
CRYSTAL=20000000
BAUD=2400
COMPILED=F:\Okul\BATEMCD\Programlar\PIC_PLC\ornekler\dcmot_il_ger.hex

IO LIST
    X1 at 6
    X2 at 7
    Y1 at 10
    Y2 at 11
    Y3 at 12
    Y4 at 13
END

PROGRAM
RUNG
    CONTACTS X1 0
    CONTACTS X2 1
    PARALLEL
        COIL Y1 0 0 0
        COIL Y4 0 0 0
    END
END
RUNG
    CONTACTS X2 0
    CONTACTS X1 1
    PARALLEL
        COIL Y2 0 0 0
        COIL Y3 0 0 0
    END
END

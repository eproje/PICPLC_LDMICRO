LDmicro0.1
MICRO=Microchip PIC16F628 18-PDIP or 18-SOIC
CYCLE=10000
CRYSTAL=4000000
BAUD=2400
COMPILED=F:\Okul\BATEMCD\Programlar\PIC_PLC\ornekler\verici.hex

IO LIST
    X1 at 10
    X2 at 11
    X3 at 12
    X4 at 13
END

PROGRAM
RUNG
    CONTACTS X1 0
    OSR
    PARALLEL
        MOVE char 65
        COIL R1 0 1 0
    END
END
RUNG
    CONTACTS X1 0
    OSF
    PARALLEL
        MOVE char 66
        COIL R1 0 1 0
    END
END
RUNG
    CONTACTS X2 0
    OSR
    PARALLEL
        MOVE char 67
        COIL R1 0 1 0
    END
END
RUNG
    CONTACTS X2 0
    OSF
    PARALLEL
        MOVE char 68
        COIL R1 0 1 0
    END
END
RUNG
    CONTACTS X3 0
    OSR
    PARALLEL
        MOVE char 69
        COIL R1 0 1 0
    END
END
RUNG
    CONTACTS X3 0
    OSF
    PARALLEL
        MOVE char 70
        COIL R1 0 1 0
    END
END
RUNG
    CONTACTS X4 0
    OSR
    PARALLEL
        MOVE char 71
        COIL R1 0 1 0
    END
END
RUNG
    CONTACTS X4 0
    OSF
    PARALLEL
        MOVE char 72
        COIL R1 0 1 0
    END
END
RUNG
    CONTACTS R1 0
    UART_SEND char
END
RUNG
    CONTACTS R1 0
    COIL R1 0 0 1
END

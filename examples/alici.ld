LDmicro0.1
MICRO=Microchip PIC16F628 18-PDIP or 18-SOIC
CYCLE=10000
CRYSTAL=4000000
BAUD=2400
COMPILED=F:\Okul\BATEMCD\Programlar\PIC_PLC\ornekler\alici.hex

IO LIST
    Y1 at 10
    Y2 at 11
    Y3 at 12
    Y4 at 13
END

PROGRAM
RUNG
    UART_RECV RXbyte
    COIL R2 0 0 0
END
RUNG
    EQU RXbyte 65
    COIL Y1 0 1 0
END
RUNG
    EQU RXbyte 66
    COIL Y1 0 0 1
END
RUNG
    EQU RXbyte 67
    COIL Y2 0 1 0
END
RUNG
    EQU RXbyte 68
    COIL Y2 0 0 1
END
RUNG
    EQU RXbyte 69
    COIL Y3 0 1 0
END
RUNG
    EQU RXbyte 70
    COIL Y3 0 0 1
END
RUNG
    EQU RXbyte 71
    COIL Y4 0 1 0
END
RUNG
    EQU RXbyte 72
    COIL Y4 0 0 1
END
RUNG
    CONTACTS R2 0
    OSR
    FORMATTED_STRING RXbyte 13 118 97 108 117 101 58 32 92 51 92 114 92 110
END

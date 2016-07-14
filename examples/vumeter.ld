LDmicro0.1
MICRO=Microchip PIC16F877 40-PDIP
CYCLE=10000
CRYSTAL=4000000
BAUD=2400
COMPILED=F:\Okul\BATEMCD\Programlar\PIC_PLC\ornekler\vumeter.hex

IO LIST
    Y1 at 19
    Y10 at 10
    Y2 at 20
    Y3 at 21
    Y4 at 22
    Y5 at 27
    Y6 at 28
    Y7 at 29
    Y8 at 30
    Y9 at 9
    Adeger at 2
END

PROGRAM
RUNG
    READ_ADC Adeger
END
RUNG
    GRT Adeger 20
    COIL Y1 0 0 0
END
RUNG
    GRT Adeger 40
    COIL Y2 0 0 0
END
RUNG
    GRT Adeger 60
    COIL Y3 0 0 0
END
RUNG
    GRT Adeger 80
    COIL Y4 0 0 0
END
RUNG
    GRT Adeger 100
    COIL Y5 0 0 0
END
RUNG
    GRT Adeger 120
    COIL Y6 0 0 0
END
RUNG
    GRT Adeger 140
    COIL Y7 0 0 0
END
RUNG
    GRT Adeger 160
    COIL Y8 0 0 0
END
RUNG
    GRT Adeger 180
    COIL Y9 0 0 0
END
RUNG
    GRT Adeger 200
    COIL Y10 0 0 0
END

LDmicro0.1
MICRO=Microchip PIC16F628 18-PDIP or 18-SOIC
CYCLE=10000
CRYSTAL=4000000
BAUD=2400
COMPILED=D:\ileri-geri.ld.hex

IO LIST
    Xstart1 at 17
    Xstart2 at 18
    Xstop at 1
    Xtermik at 2
    Y1 at 6
    Y2 at 7
    Ylamba1 at 8
    Ylamba2 at 9
END

PROGRAM
RUNG
    PARALLEL
        CONTACTS Xstart1 0
        CONTACTS Y1 0
    END
    CONTACTS Xtermik 0
    CONTACTS Xstop 1
    CONTACTS Y2 1
    PARALLEL
        COIL Y1 0 0 0
        COIL Ylamba1 0 0 0
    END
END
RUNG
    PARALLEL
        CONTACTS Xstart2 0
        CONTACTS Y2 0
    END
    CONTACTS Xtermik 0
    CONTACTS Xstop 1
    CONTACTS Y1 1
    PARALLEL
        COIL Y2 0 0 0
        COIL Ylamba2 0 0 0
    END
END

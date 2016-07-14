LDmicro0.1
MICRO=Microchip PIC16F819 18-PDIP or 18-SOIC
CYCLE=10000
CRYSTAL=4000000
BAUD=2400
COMPILED=F:\Okul\BATEMCD\Programlar\PIC_PLC\ornekler\BASIT_KAPI_2.hex

IO LIST
    XACIKSW at 7
    XHAREKET at 6
    XKAPALISW at 8
    Y1 at 10
    Y2 at 11
    Y3 at 12
    Y4 at 13
END

PROGRAM
RUNG
    PARALLEL
        SERIES
            PARALLEL
                CONTACTS XHAREKET 0
                CONTACTS RM_AC 0
            END
            CONTACTS XACIKSW 1
            COIL RM_AC 0 0 0
        END
        SERIES
            CONTACTS RM_AC 1
            CONTACTS XKAPALISW 1
            TON Tnew 2000000
            COIL RM_KAPAT 0 0 0
        END
    END
END
RUNG
    CONTACTS RM_AC 0
    CONTACTS RM_KAPAT 1
    PARALLEL
        COIL Y1 0 0 0
        COIL Y4 0 0 0
    END
END
RUNG
    CONTACTS RM_AC 1
    CONTACTS RM_KAPAT 0
    PARALLEL
        COIL Y2 0 0 0
        COIL Y3 0 0 0
    END
END

MOVS            R4, R1
BEQ             loc_102B2E
MOVS            R2, R1
LDR             R0, =unk_711F2C
ADR             R1, aExceptionS; "Exception: %s.\n"
BL              sub_301750
MOVS            R0, R4
BLX             sub_2FF5D4
B               loc_102B44
CMP             R0, #0
BEQ             loc_102B48
CMP             R0, #1
BEQ             loc_102B4C
CMP             R0, #2
BEQ             loc_102B50
ADR             R2, aUnknownExcepti; "unknown exception"
LDR             R0, =unk_711F2C
ADR             R1, aExceptionS; "Exception: %s.\n"
BL              sub_301750
BLX             sub_2FE484
ADR             R2, (aUnknownExcepti+8); "exception"
B               loc_102B3C
ADR             R2, aUnexpectedExce; "unexpected exception"
B               loc_102B3C
ADR             R2, aBadAllocOutOfM; "bad_alloc: out of memory"
B               loc_102B3C

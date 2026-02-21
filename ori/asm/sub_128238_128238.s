MOV             R2, R0
LDREX           R1, [R0]
CMP             R1, #0
BLE             loc_12825C
RSB             R1, R1, #0
STREX           R3, R1, [R0]
CMP             R3, #0
BNE             loc_12823C
BX              LR
CLREX
MOV             R0, R2
NOP
PUSH            {R4-R6,LR}
SUB             SP, SP, #8
MOV             R4, R0
LDREX           R2, [R4]
CMP             R2, #0
BGE             loc_128298
SUB             R1, R2, #1
STREX           R2, R1, [R4]
CMP             R2, #0
BNE             loc_128274
LDR             R5, =dword_6D4B2C
B               loc_1282C8
CLREX
LDREX           R2, [R4]
CMP             R2, #0
BLE             loc_1282C0
RSB             R1, R2, #0
STREX           R2, R1, [R4]
CMP             R2, #0
BNE             loc_12829C
ADD             SP, SP, #8
POP             {R4-R6,PC}
CLREX
B               loc_128274
MOV             R3, #0
LDR             R0, [R5]
MOV             R6, R3
MOV             R12, R3
MOV             R1, R4
MOV             R2, #1
STMEA           SP, {R6,R12}
BL              sub_1201E8
LDREX           R2, [R4]
CMP             R2, #0
BLE             loc_12830C
RSB             R1, R2, #1
STREX           R2, R1, [R4]
CMP             R2, #0
BNE             loc_1282E8
ADD             SP, SP, #8
POP             {R4-R6,PC}
CLREX
B               loc_1282C8

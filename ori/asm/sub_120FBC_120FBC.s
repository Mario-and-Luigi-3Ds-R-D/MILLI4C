PUSH            {R4,LR}
SUB             SP, SP, #8
LDREX           R1, [R0]
RSB             R2, R1, #0
STREX           R1, R2, [R0]
CMP             R1, #0
BNE             loc_120FC4
CMP             R2, #1
BLE             loc_121004
MOV             R1, R0
LDR             R0, =dword_6D4B2C
MOV             R2, #0
MOV             R4, R2
MOV             R12, R2
LDR             R0, [R0]
MOV             R3, #1
STMEA           SP, {R4,R12}
BL              sub_1201E8
ADD             SP, SP, #8
POP             {R4,PC}

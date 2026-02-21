PUSH            {R4,R5,LR}
SUB             SP, SP, #0xC
LDRSH           R2, [R0,#6]
MOV             R3, R1
LDREX           R4, [R0]
SUB             R5, R2, R3
CMP             R5, R4
MOV             R1, R2
ADDGE           R1, R4, R3
STREX           R5, R1, [R0]
CMP             R5, #0
BNE             loc_118A60
CMP             R4, #0
BLE             loc_118A94
LDRSH           R1, [R0,#4]
CMP             R1, #0
BLE             loc_118AB8
LDR             R1, =dword_6D4B2C
MOV             R2, #0
MOV             R5, R2
LDR             R12, [R1]
MOV             R1, R2
STMEA           SP, {R1,R5}
MOV             R1, R0
MOV             R0, R12
BL              sub_1201E8
ADD             SP, SP, #0xC
MOV             R0, R4
POP             {R4,R5,PC}

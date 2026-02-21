PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R6, =off_6CED48
ADD             R5, R0, #0x100
LDRSB           R1, [R5,#0x76]
LDR             R0, [R6]
LDRB            R0, [R0,#0x98]
CMP             R0, R1
BLE             loc_1EB308
LDR             R0, =dword_6E9820
MOV             R1, #0x20000
BL              sub_106C10
LDR             R0, [R6]
LDRSB           R1, [R5,#0x77]
LDRB            R0, [R0,#0x124]
CMP             R0, R1
BLE             loc_1EB328
LDR             R0, =dword_6E9820
MOV             R1, #0x30000
BL              sub_106C10
LDRB            R0, [R4,#0xB8]
TST             R0, #1
BEQ             loc_1EB340
TST             R0, #8
BICEQ           R0, R0, #1
STRBEQ          R0, [R4,#0xB8]
LDR             R0, [R4]
MOV             R3, #0
LDR             R12, [R0,#0x28]
LDR             R0, =off_67E194
LDM             R0, {R1,R2}
MOV             R0, R4
POP             {R4-R6,LR}
BX              R12

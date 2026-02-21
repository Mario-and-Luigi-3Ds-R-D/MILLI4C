PUSH            {R4-R7,LR}
MOV             R5, R0
SUB             SP, SP, #0x1C
LDR             R0, [R0]
MOV             R4, R1
MOV             R6, R2
LDR             R3, [R0,#0x74]
MOV             R0, R5
BLX             R3
CMP             R0, #0
BEQ             loc_17D978
LDR             R7, =off_6D1648
LDR             R1, [R5,#4]
LDR             R0, [R7]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R2, [R0,#0x14]
TST             R2, #0x400000
LDREQ           R0, [R0,#4]
LDRNE           R0, [R0,#8]
LDR             R2, =0x468
LDRH            R2, [R2,R0]
CMP             R2, #5
BHI             loc_17D984
ADD             R2, R1, #0x14000
LDRB            R3, [R2,#0x28F]
CMP             R3, #1
BNE             loc_17D958
LDRB            R3, [R2,#0x290]
LDRB            R0, [R0,#0xDC]
CMP             R3, R0
BNE             loc_17D958
LDR             R0, [R2,#0x35C]
TST             R0, #7
BEQ             loc_17D984
LDRB            R0, [R4,#0x75C]
AND             R0, R0, #7
CMP             R0, #1
LDR             R0, [R4]
BEQ             loc_17D9E4
LDR             R1, [R0,#0x348]
MOV             R0, R4
BLX             R1
ADD             SP, SP, #0x1C
MOV             R0, #1
POP             {R4-R7,PC}
LDR             R0, =0x13D04
LDRH            R0, [R0,R1]
BL              sub_2AF718
LDR             R1, [R0]
ADD             R5, SP, #0x30+var_20
MOV             R0, #0
TST             R1, #1
LDREQ           R2, =0x5000037
LDRNE           R2, =0x5000015
MOV             R3, #1
MOV             R12, #0xFFFFFFFF
STR             R2, [SP,#0x30+var_18]
STM             R5, {R0,R3}
AND             R3, R1, #1
STMEA           SP, {R0,R4,R6,R12}
LDR             R0, [R7]
LDR             R2, [R4,#0x668]
LDR             R1, [R0]
LDR             R12, [R1,#0x38]
MOV             R1, #0
BLX             R12
ADD             SP, SP, #0x1C
MOV             R0, #2
POP             {R4-R7,PC}
LDR             R2, [R0,#0x338]
MOV             R1, #0
MOV             R0, R4
BLX             R2
B               loc_17D978

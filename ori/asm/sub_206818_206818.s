PUSH            {R4-R10,LR}
MOV             R5, R1
LDR             R1, [R1,#4]
LDR             R3, [R2,#8]
AND             R12, R1, #0xFF000000
ORR             R7, R12, R3
LDRH            R3, [R1],#2
LDR             R12, [R0,#4]
LDR             R4, [R1]
LDRB            R8, [R1,#3]
ADD             R6, R12, R3,LSL#4
ADD             R3, R1, #4
LDRB            R12, [R6]
BIC             R4, R4, #0xFF000000
ORR             R4, R4, R8,LSL#24
TST             R12, #0x80
ADDNE           R3, R3, #2
AND             R12, R12, #0x7F
CMP             R12, #0
LDRGT           R8, =unk_65B108
MOVGT           R1, #0
BLE             loc_2068B0
MOV             R9, R4,LSR R1
TST             R9, #1
ADDNE           R3, R3, #2
BNE             loc_2068A4
ADD             R9, R1, R1,LSR#31
MOV             R10, R1,LSL#31
ADD             R9, R6, R9,ASR#1
MOV             R10, R10,LSR#29
LDRB            R9, [R9,#1]
MOV             R9, R9,LSR R10
AND             R9, R9, #0xF
LDRB            R9, [R8,R9]
ADD             R3, R3, R9
SUBS            R12, R12, #1
ADD             R1, R1, #1
BNE             loc_206870
SUB             R3, R7, R3
VMOV            S0, R3
CMP             R5, #0
LDRH            R12, [R2,#2]
ADDNE           R1, R5, #4
MOVEQ           R1, #0
MOV             R2, R1
VCVT.F32.S32    S0, S0
MOV             R1, R0
MOV             R0, R12
BL              sub_145730
MOV             R0, #0
POP             {R4-R10,PC}

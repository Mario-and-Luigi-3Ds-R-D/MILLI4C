LDR             R1, =dword_6CF874
PUSH            {R4}
LDR             R2, [R1]
LDRSH           R1, [R0,#2]
SUBS            R2, R2, R1,LSL#8
BMI             loc_146890
LDRH            R12, [R0]
MOV             R4, #1
MOV             R3, R4
MOV             R1, #0
ADD             R12, R4, R12,LSR#9
ADD             R3, R3, #1
CMP             R3, R12
BLS             loc_14689C
CMP             R1, #0
BEQ             loc_1468BC
CMP             R2, #0x100
BLT             loc_1468BC
POP             {R4}
MOV             R0, #0
BX              LR
ADD             R1, R0, R3,LSL#1
LDRH            R1, [R1]
CMP             R1, #0
BEQ             loc_146874
MOV             R1, R1,LSL#8
CMP             R2, R1
SUBGT           R2, R2, R1
BGT             loc_146874
POP             {R4}
MOV             R0, #1
BX              LR

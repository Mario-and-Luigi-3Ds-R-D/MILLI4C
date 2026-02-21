PUSH            {R4,LR}
MOV             R4, R0
VLDR            S0, =1.0
ADD             R0, R0, #0x354
BL              sub_5A2484
LDM             R0, {R1,R2}
ADD             R3, R4, #0x12C
LDR             R0, [R0,#8]
STR             R0, [R4,#0x134]
ADD             R0, R4, #0x354
STM             R3, {R1,R2}
BL              sub_5F19B8
CMP             R0, #0
BNE             locret_184E48
VLDR            S0, [R4,#0x3AC]
MOV             R1, #0
ADD             R0, R4, #0x2B8
VCVT.F32.S32    S0, S0
BL              sub_5A1924
LDR             R1, =off_6738C0
LDRD            R0, R1, [R1,#(off_6738E0 - 0x6738C0)]
STRD            R0, R1, [R4]
POP             {R4,PC}

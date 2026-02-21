PUSH            {R4-R8,LR}
MOV             R4, R0
LDR             R7, =off_6D1648
LDR             R0, [R7]
BL              sub_1E4614
MOV             R5, R0
LDR             R0, [R4,#0xA0]
CMP             R0, #0
BEQ             loc_1E1740
VLDR            S0, [R0,#0x18]
VLDR            S1, [R5,#0x108]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BGE             loc_1E17E8
B               loc_1E1750
LDR             R0, [R5,#0x464]
AND             R0, R0, #0xF
CMP             R0, #4
BEQ             loc_1E17E8
MOV             R6, #1
MOV             R0, R4
BL              sub_1E1608
ADD             R0, R5, #0x108
ADD             R3, R4, #0x18C
LDM             R0, {R0-R2}
VLDR            S0, =0.0
VLDR            S1, =2.4
STM             R3, {R0-R2}
MOV             R0, #0xF
VSTR            S0, [R4,#0x180]
VSTR            S0, [R4,#0x184]
LDR             R1, =0x19E
VLDR            S0, =6.6667
VSTR            S0, [R4,#0x188]
VSTR            S1, [R4,#0x198]
STRH            R0, [R1,R4]
MOV             R1, #0xC8
MOV             R0, R5
BL              sub_16C920
LDR             R0, [R7]
NOP
LDR             R0, [R0,#0xBC]
LDR             R1, [R5]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
LDR             R2, [R1,#0x348]
LDRB            R1, [R0,#0x1BB]
MOV             R0, R5
BLX             R2
LDR             R0, [R5]
MOV             R1, R6
MOV             R3, #0
MOV             R2, R3
LDR             R12, [R0,#0x34C]
MOV             R0, R5
POP             {R4-R8,LR}
BX              R12
MOV             R6, #0
B               loc_1E1754

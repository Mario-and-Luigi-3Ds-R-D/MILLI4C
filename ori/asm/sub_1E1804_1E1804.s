PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R6, =off_6D1648
VPUSH           {D8}
LDR             R0, [R6]
BL              sub_1E4614
VLDR            S16, =0.0
MOV             R5, R0
MOV             R1, R0
VMOV.F32        S1, S16
VMOV.F32        S0, S16
LDR             R0, =0x2089A
MOV             R2, #0
BL              sub_1459F8
VMOV.F32        S1, S16
VMOV.F32        S0, S16
LDR             R0, =0x200D9
MOV             R2, #0
MOV             R1, R5
BL              sub_1459F8
MOV             R0, R4
BL              sub_1E1608
ADD             R0, R5, #0x108
ADD             R3, R4, #0x18C
LDM             R0, {R0-R2}
VLDR            S0, =6.0
VLDR            S1, =2.4
STM             R3, {R0-R2}
MOV             R0, #0xF
VSTR            S16, [R4,#0x180]
VSTR            S0, [R4,#0x184]
LDR             R1, =0x19E
VLDR            S0, =26.667
VSTR            S0, [R4,#0x188]
VSTR            S1, [R4,#0x198]
STRH            R0, [R1,R4]
MOV             R1, #0xC8
MOV             R0, R5
BL              sub_16C920
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
LDR             R2, [R5]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
LDR             R2, [R2,#0x348]
LDRB            R1, [R0,#0x1BB]
MOV             R0, R5
BLX             R2
LDR             R0, [R5]
MOV             R3, #0
MOV             R2, R3
MOV             R1, #2
LDR             R12, [R0,#0x34C]
MOV             R0, R5
VPOP            {D8}
POP             {R4-R6,LR}
BX              R12

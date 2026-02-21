PUSH            {R4-R6,LR}
MOV             R5, R1
LDR             R12, =off_6CE970
MOV             R4, R0
VPUSH           {D8}
VMOV.F32        S16, S0
LDR             R1, [R0,#4]
LDR             R0, =0xFFE683CC
LDR             R12, [R12]
LDR             R2, =0x30748
MOV             R3, #0
SUB             R0, R12, R0
BL              sub_503720
MOV             R1, R5
ADD             R0, R4, #8
BL              sub_5C646C
LDM             R0, {R1,R2}
ADD             R3, R4, #0x30 ; '0'
LDR             R0, [R0,#8]
VMOV.F32        S0, S16
STR             R0, [R4,#0x38]
STM             R3, {R1,R2}
MOV             R0, #0
STRB            R0, [R4,#0x20]
LDR             R0, [R4,#4]
ADD             R1, R4, #0x30 ; '0'
ADD             R0, R0, #0x1DC
BL              sub_5A1FC8
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x41C]
VPOP            {D8}
POP             {R4-R6,LR}
B               sub_19FEE0

PUSH            {R4-R8,LR}
ADD             R6, R0, #0x400
MOV             R4, R0
MOV             R7, R1
VPUSH           {D8}
VMOV.F32        S16, S0
VLDR            S17, =0.0
VSTR            S17, [R6,#0xC4]
LDR             R0, [R0]
LDR             R1, [R0,#0x220]
MOV             R0, R4
BLX             R1
ADD             R5, R4, #0x2000
ADD             R5, R5, #0x710
MOV             R0, R5
BL              sub_5A26D0
ADD             R0, R4, #0x108
ADD             R3, R5, #0x20 ; ' '
LDM             R0, {R0-R2}
VMOV.F32        S0, S16
STR             R0, [R5,#0x1C]
STM             R3, {R1,R2}
ADD             R3, R5, #4
STM             R3, {R0-R2}
MOV             R1, R7
MOV             R0, R5
BL              sub_5A29E4
LDR             R0, [R4]
MOV             R3, #0
MOV             R2, R3
MOV             R1, #1
LDR             R12, [R0,#0x34C]
MOV             R0, R4
BLX             R12
LDR             R1, [R4,#0x7FC]
MOV             R0, #0
LDR             R2, =0x2684
VMOV.F32        S1, S17
STRH            R0, [R1,#0x16]
MOV             R1, #0x10
STRH            R1, [R6,#0x68]
MOV             R0, #0xC8
VMOV.F32        S0, S17
STRH            R0, [R2,R4]
LDR             R0, =0x208D8
MOV             R2, #0
MOV             R1, R4
BL              sub_1459F8
ADD             R4, R4, #0x2400
ADD             R4, R4, #0x2B4
MOV             R0, #1
STRB            R0, [R4]
VPOP            {D8}
POP             {R4-R8,PC}

PUSH            {R4-R7,LR}
MOV             R6, R0
MOV             R12, R1
MOV             R1, R2
VPUSH           {D8-D9}
SUB             SP, SP, #0x1C
MOV             R2, R3
LDRH            R0, [R3]
VLDR            S16, =2.0
VLDR            S18, =0.5
VLDR            S17, =1.0
SUB             R0, R0, #0x10C
CMP             R0, #6; switch 6 cases
MOV             R7, #0
ADD             R5, R3, #8
ADD             R4, R3, #0x68 ; 'h'
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_177C00; jumptable 00177C00 default case
DCD loc_177C20; jump table for switch statement
ADD             R0, R4, #4; jumptable 00177C00 case 0
ADD             R3, SP, #0x40+var_38
LDM             R0, {R0-R2}
VLDR            S3, =4.0
STM             R3, {R0-R2}
LDR             R1, [R5,#0x20]
LDR             R0, [R5]
VLDR            S4, [R4,#0x1C]
CMP             R1, #0
ADD             R4, R4, #0x10
AND             R1, R0, #0xFF
LDR             R0, [R6,#4]
LDR             R2, [R5,#0x24]
MOVNE           R3, #1
VLDM            R4, {S0-S2}
MOVEQ           R3, #0
CMP             R2, #0
ADD             R12, R0, #0x14000
MOVNE           R2, #1
ADD             R12, R12, #0x35C
STMEA           SP, {R2,R12}
LDR             R2, [R0]
VMUL.F32        S1, S1, S3
VMUL.F32        S0, S0, S16
VMUL.F32        S2, S2, S16
VMUL.F32        S3, S4, S3
LDR             R12, [R2,#0x220]
ADD             R2, SP, #0x40+var_38
BLX             R12
B               def_177C00; jumptable 00177C00 default case
ADD             R4, R4, #4; jumptable 00177C00 case 1
ADD             R3, SP, #0x40+var_34
LDM             R4, {R0-R2}
STM             R3, {R0-R2}
LDR             R1, [R5,#0x10]
LDR             R0, [R5]
BIC             R2, R1, #1
VMOV            S0, R2
TST             R1, #1
LDR             R1, [R5,#0x14]
AND             R12, R0, #0xFF
LDR             R0, [R6,#4]
VCVT.F32.U32    S0, S0
ADD             R4, R0, #0x14000
ADD             R4, R4, #0x35C
VMUL.F32        S0, S0, S18
VADDNE.F32      S0, S0, S17
CMP             R1, #0
LDR             R1, [R5,#0x18]
MOVNE           R2, #1
MOVEQ           R2, #0
CMP             R1, #0
ADD             R5, SP, #0x40+var_3C
MOVNE           R1, #1
STR             R2, [SP,#0x40+var_40]
STM             R5, {R1,R4}
VCVT.S32.F32    S0, S0
LDR             R1, [R0]
ADD             R2, SP, #0x40+var_34
LDR             R4, [R1,#0x228]
MOV             R1, R12
VMOV            R3, S0
BLX             R4
B               def_177C00; jumptable 00177C00 default case
LDR             R2, [R6]; jumptable 00177C00 case 2
LDR             R0, [R5]
LDR             R12, [R2,#0x9C]
SXTB            R3, R0
LDR             R2, [R6,#4]
MOV             R0, R6
BLX             R12
MOV             R1, R0
ADD             R0, R4, #4
ADD             R12, SP, #0x40+var_38
LDM             R0, {R0,R2,R3}
STM             R12, {R0,R2,R3}
LDR             R0, [R5,#0x14]
LDR             R2, [R5,#0x18]
VLDR            S0, [R4,#0x10]
CMP             R0, #0
LDR             R0, [R6,#4]
MOVNE           R3, #1
MOVEQ           R3, #0
CMP             R2, #0
ADD             R12, R0, #0x14000
MOVNE           R2, #1
ADD             R12, R12, #0x35C
STMEA           SP, {R2,R12}
LDR             R2, [R0]
VMUL.F32        S0, S0, S16
LDR             R12, [R2,#0x224]
ADD             R2, SP, #0x40+var_38
BLX             R12
B               def_177C00; jumptable 00177C00 default case
LDR             R2, [R6]; jumptable 00177C00 case 3
LDR             R0, [R5]
LDR             R12, [R2,#0x9C]
SXTB            R3, R0
LDR             R2, [R6,#4]
MOV             R0, R6
BLX             R12
ADD             R4, R4, #4
ADD             R12, SP, #0x40+var_34
LDM             R4, {R1-R3}
STM             R12, {R1-R3}
MOV             R1, R0
LDR             R2, [R5,#0x10]
LDR             R0, [R6,#4]
LDR             R12, [R5,#0x18]
BIC             R3, R2, #1
VMOV            S0, R3
TST             R2, #1
LDR             R2, [R5,#0x14]
ADD             R4, R0, #0x14000
ADD             R4, R4, #0x35C
STR             R4, [SP,#0x40+var_38]
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S18
VADDNE.F32      S0, S0, S17
CMP             R2, #0
MOVNE           R2, #1
MOVEQ           R2, #0
CMP             R12, #0
MOVNE           R12, #1
STMEA           SP, {R2,R12}
LDR             R2, [R0]
VCVT.S32.F32    S0, S0
LDR             R12, [R2,#0x22C]
ADD             R2, SP, #0x40+var_34
VMOV            R3, S0
BLX             R12
B               def_177C00; jumptable 00177C00 default case
LDR             R0, [R6,#4]; jumptable 00177C00 case 4
ADD             R0, R0, #0x14000
LDR             R0, [R0,#0x35C]
TST             R0, #7
BEQ             def_177C00; jumptable 00177C00 default case
MOV             R0, R12
BL              sub_29D1B0
MOV             R7, #3
NOP
B               def_177C00; jumptable 00177C00 default case
LDR             R0, [R6,#4]; jumptable 00177C00 case 5
ADD             R2, R0, #0x14000
LDR             R1, [R0]
ADD             R2, R2, #0x35C
LDR             R3, [R1,#0x230]
MOV             R1, #0
BLX             R3
ADD             SP, SP, #0x1C; jumptable 00177C00 default case
MOV             R0, R7
VPOP            {D8-D9}
POP             {R4-R7,PC}

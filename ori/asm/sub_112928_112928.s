PUSH            {R4-R6,LR}
MOV             R5, R2
LDR             R3, =0xE009
AND             R2, R1, #0xF000
VPUSH           {D8}
CMP             R2, #0x1000
VLDR            S16, =0.0
AND             R6, R1, #0xFF
BEQ             loc_11298C
CMP             R2, #0x2000
BEQ             loc_1129E4
CMP             R2, #0x3000
MOVNE           R0, #0
BNE             loc_1129DC
ADD             R4, R0, #0x800
MOV             R2, #0
ADD             R4, R4, #0x148
MOV             R1, R2
MOV             R0, R3
BL              sub_116B34
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
BEQ             loc_1129AC
MOV             R0, #0xA
B               loc_1129B0
ADD             R4, R0, #0x920
MOV             R2, #0
MOV             R1, R2
MOV             R0, R3
BL              sub_116B34
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
BNE             loc_112984
MOV             R0, #0x63 ; 'c'
LDRB            R2, [R4,R6]
MOV             R3, #0
ADD             R1, R2, R5
CMP             R0, R1
BLE             loc_1129D0
CMP             R1, #0
MOVLE           R0, R3
MOVGT           R0, R1
SUB             R1, R0, R2
STRB            R0, [R4,R6]
SXTB            R0, R1
VPOP            {D8}
POP             {R4-R6,PC}
ADD             R2, R0, #0xA00
AND             R3, R1, #0xFF
LDRH            R1, [R2,#6]
MOV             R0, #1
MOV             R3, R0,LSL R3
ANDS            R0, R1, R3
MOVNE           R0, #1
CMP             R5, #1
ORRGE           R3, R3, R1
MOVGE           R1, #1
BGE             loc_112A24
CMP             R5, #0
BICLT           R3, R1, R3
MOVLT           R1, #0
MOVGE           R1, R0
BGE             loc_112A28
STRH            R3, [R2,#6]
SUB             R0, R1, R0
VPOP            {D8}
SXTB            R0, R0
POP             {R4-R6,PC}

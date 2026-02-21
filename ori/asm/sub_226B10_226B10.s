PUSH            {R3-R9,LR}
MOV             R4, R0
MOV             R3, #0
MOV             R2, R3
LDR             R6, =off_6CE970
LDR             R0, [R6]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x128
BL              sub_10A358
MOVS            R5, R0
BEQ             loc_226B68
MOV             R2, #0
LDR             R0, =0xE047
MOV             R1, R2
BL              sub_116B34
VLDR            S1, =0.0
MOV             R0, R5
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
MOVNE           R1, #1
MOVEQ           R1, #0
BL              sub_228868
ADD             R8, R4, #0x12400
ADD             R8, R8, #0x2E8
LDR             R5, =0x4C4
STR             R0, [R8]
LDR             R0, [R6]
MOV             R3, #0
MOV             R2, R3
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, R5
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_226BAC
MOV             R1, #1
BL              sub_225A04
LDR             R1, =off_6BB9D4
STR             R1, [R0]
LDR             R1, =0x126EC
MOV             R3, #0
MOV             R2, R3
STR             R0, [R1,R4]
LDR             R0, [R6]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, R5
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_226BE8
MOV             R1, #0
BL              sub_225A04
LDR             R1, =off_6BB9C4
STR             R1, [R0]
LDR             R1, =0x126F0
MOV             R3, #0
MOV             R2, R3
STR             R0, [R1,R4]
LDR             R0, [R6]
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x18C4
BL              sub_10A358
CMP             R0, #0
NOP
BLNE            sub_22C740
ADD             R7, R4, #0x12400
ADD             R7, R7, #0x2FC
MOV             R3, #0
STR             R0, [R7]
LDR             R0, [R6]
MOV             R2, R3
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x6C ; 'l'
BL              sub_10A358
CMP             R0, #0
NOP
BLNE            sub_2231C4
LDR             R1, =0x12704
ADD             R6, R4, #0x13000
ADD             R6, R6, #0x11C
ADD             R5, R4, #0x13400
STR             R0, [R1,R4]
MOV             R0, #1
STRB            R0, [R6,#0xF2]
MOV             R0, #0xFFFFFF00
ADD             R5, R5, #0x48 ; 'H'
REV             R0, R0
STR             R0, [SP,#0x20+var_20]
MOV             R0, R5
BL              sub_4E63E0
LDR             R0, [SP,#0x20+var_20]
MOV             R1, SP
VLDR            S0, =4.0
STR             R0, [R5,#4]
STR             R0, [R5]
MOV             R0, #0xFFFFFFFF
REV             R0, R0
STR             R0, [SP,#0x20+var_20]
ADD             R0, R6, #0x32C
BL              sub_4E665C
LDR             R0, [R7]
NOP
BL              sub_22C188
LDR             R0, =0x126F8
LDR             R0, [R0,R4]
NOP
LDR             R0, =0x12700
LDR             R0, [R0,R4]
NOP
LDR             R0, [R8]
NOP
BL              sub_228278
LDR             R0, [R4,#0x20]
LDR             R5, [R4,#0x18]
MOV             R6, #0
CMP             R0, #0
BEQ             loc_226CF0
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
STR             R5, [R4,#0x20]
LDR             R0, [R5]
MOV             R1, R6
LDR             R2, [R0,#8]
MOV             R0, R5
BLX             R2
LDR             R0, [R4,#0x14]
CMP             R0, #0
BEQ             locret_226D28
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
MOV             R0, #0
STR             R0, [R4,#0x14]
POP             {R3-R9,PC}

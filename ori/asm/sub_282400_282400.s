PUSH            {R4-R7,LR}
MOV             R4, R0
ADD             R5, R4, #0x400
VPUSH           {D8}
SUB             SP, SP, #0xC
LDRB            R0, [R0,#4]
CMP             R0, #0xC; switch 12 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_28241C; jumptable 0028241C default case, cases 0,7
DCD def_28241C; jump table for switch statement
ADD             R0, R4, #8; jumptable 0028241C case 11
BL              sub_5C4A1C
CMP             R0, #0
NOP
BNE             def_28241C; jumptable 0028241C default case, cases 0,7
ADD             R0, R4, #0x1E4
BL              sub_5A26D0
LDR             R0, [R4,#0x428]
MOV             R2, #1
MOV             R1, #7
STRB            R2, [R4,#0x420]
CMP             R0, #0
STRB            R1, [R4,#4]
BEQ             def_28241C; jumptable 0028241C default case, cases 0,7
MOV             R1, #0
BL              sub_1586A8
LDR             R0, [R4,#0x428]
CMP             R0, #0
BEQ             def_28241C; jumptable 0028241C default case, cases 0,7
B               loc_282740
VLDR            S1, [R5,#0x14]; jumptable 0028241C case 1
VLDR            S0, [R4,#0x30]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
MOVGT           R0, #2
STRBGT          R0, [R4,#4]
VSTR            S0, [R5,#0x14]
B               def_28241C; jumptable 0028241C default case, cases 0,7
ADD             R0, R4, #0x1E4; jumptable 0028241C case 2
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_28241C; jumptable 0028241C default case, cases 0,7
LDRB            R0, [R5,#0x19]
CMP             R0, #0
BNE             loc_2824F0
LDR             R0, [R4,#0x41C]
CMP             R0, #0
BLE             loc_2825B0
MOV             R0, #3
STRB            R0, [R4,#4]
B               def_28241C; jumptable 0028241C default case, cases 0,7
ADD             R0, R4, #8; jumptable 0028241C case 3
BL              sub_5C4A1C
CMP             R0, #0
NOP
BNE             def_28241C; jumptable 0028241C default case, cases 0,7
MOV             R0, #0
MOV             R2, R0
MOV             R1, R0
STRB            R0, [R4,#4]
MOV             R3, #0x100
ADD             R0, R4, #8
BL              sub_14C548
NOP
NOP
B               def_28241C; jumptable 0028241C default case, cases 0,7
ADD             R0, R4, #8; jumptable 0028241C case 4
BL              sub_5C4A1C
CMP             R0, #0
NOP
BNE             def_28241C; jumptable 0028241C default case, cases 0,7
LDRB            R0, [R5,#0x19]
CMP             R0, #0
BEQ             loc_2825B0
LDRB            R0, [R5,#0x21]
CMP             R0, #0
BNE             loc_2825B0
MOV             R2, #0
MOV             R3, #0x100
MOV             R1, R2
ADD             R0, R4, #8
BL              sub_14C430
NOP
NOP
B               def_28241C; jumptable 0028241C default case, cases 0,7
ADD             R0, R4, #8; jumptable 0028241C case 6
BL              sub_5C4A1C
CMP             R0, #0
NOP
BNE             def_28241C; jumptable 0028241C default case, cases 0,7
LDRB            R0, [R5,#0x19]
CMP             R0, #0
BEQ             loc_2825B0
LDRB            R0, [R5,#0x21]
CMP             R0, #0
BEQ             def_28241C; jumptable 0028241C default case, cases 0,7
MOV             R0, R4
BL              sub_282054
NOP
NOP
B               def_28241C; jumptable 0028241C default case, cases 0,7
ADD             R0, R4, #8; jumptable 0028241C case 5
BL              sub_5C4A1C
CMP             R0, #0
NOP
BNE             def_28241C; jumptable 0028241C default case, cases 0,7
MOV             R0, #1
STRB            R0, [R4,#0x420]
LDR             R0, [R4,#0x428]
MOV             R1, #7
STRB            R1, [R4,#4]
CMP             R0, #0
BEQ             def_28241C; jumptable 0028241C default case, cases 0,7
MOV             R1, #0
BL              sub_1586A8
LDR             R1, [R4,#0x428]
CMP             R1, #0
BEQ             def_28241C; jumptable 0028241C default case, cases 0,7
MOV             R0, #0
STR             R0, [R1,#0x64]
STR             R0, [R4,#0x428]
B               def_28241C; jumptable 0028241C default case, cases 0,7
ADD             R0, R4, #8; jumptable 0028241C case 9
BL              sub_5C4A1C
CMP             R0, #0
NOP
BNE             loc_282640
MOV             R2, #0
MOV             R3, #0x100
MOV             R1, R2
ADD             R0, R4, #8
BL              sub_14C430
ADD             R0, R4, #0x3A4
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             def_28241C; jumptable 0028241C default case, cases 0,7
MOV             R0, #8
STRB            R0, [R4,#4]
LDR             R0, [R4]
LDRSB           R1, [R5,#0x38]
MOV             R3, #0x100
ADD             R6, R0, #8
CMP             R1, #0
VLDREQ          S0, [R6,#0x48]
VLDRNE          S16, [R6,#0x48]
MOVNE           R1, #2
VNEGEQ.F32      S16, S0
MOVEQ           R1, #3
MOV             R2, #0
ADD             R0, R4, #8
BL              sub_14C548
VLDR            S0, =0.0
VSTR            S16, [SP,#0x28+var_28]
VSTR            S0, [SP,#0x28+var_24]
VSTR            S0, [SP,#0x28+var_20]
MOV             R1, SP
VLDR            S0, [R6,#0x44]
ADD             R0, R4, #0x1E4
BL              sub_5A3780
LDR             R0, =off_6CE970
LDR             R12, =0xFFE683CC
LDR             R2, =0x300BF
MOV             R3, #0
LDR             R0, [R0]
ADD             R1, R4, #8
SUB             R0, R0, R12
BL              sub_503720
MOV             R7, R0
LDR             R0, [R4,#0x424]
ADD             R6, R4, #0x400
ADD             R6, R6, #0x24 ; '$'
LDR             R1, [R0,#8]
MOV             R0, R6
BLX             R1
CMP             R7, #0
STR             R7, [R6,#4]
STRNE           R6, [R7,#0x64]
B               def_28241C; jumptable 0028241C default case, cases 0,7
ADD             R0, R4, #0x1E4; jumptable 0028241C case 8
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_28241C; jumptable 0028241C default case, cases 0,7
MOV             R0, #1
STRB            R0, [R4,#0x420]
LDR             R0, [R4,#0x428]
MOV             R1, #7
STRB            R1, [R4,#4]
CMP             R0, #0
BEQ             def_28241C; jumptable 0028241C default case, cases 0,7
MOV             R1, #0
BL              sub_1586A8
LDR             R0, [R4,#0x428]
CMP             R0, #0
BEQ             def_28241C; jumptable 0028241C default case, cases 0,7
MOV             R1, #0
STR             R1, [R0,#0x64]
STR             R1, [R4,#0x428]
B               def_28241C; jumptable 0028241C default case, cases 0,7
ADD             R0, R4, #0x1E4; jumptable 0028241C case 10
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_28241C; jumptable 0028241C default case, cases 0,7
MOV             R2, #0
MOV             R3, #0x100
MOV             R1, R2
ADD             R0, R4, #8
BL              sub_14C548
LDR             R0, [R4,#0x428]
MOV             R6, #0
STRB            R6, [R4,#4]
CMP             R0, #0
BEQ             def_28241C; jumptable 0028241C default case, cases 0,7
MOV             R1, #0
BL              sub_1586A8
LDR             R0, [R4,#0x428]
CMP             R0, #0
STRNE           R6, [R0,#0x64]
STRNE           R6, [R4,#0x428]
LDR             R0, [R4]; jumptable 0028241C default case, cases 0,7
VLDR            S5, [R4,#0x2C]
VLDR            S4, [R4,#0x30]
VLDR            S3, [R4,#0x34]
VLDR            S2, [R0,#0x8C]
VLDR            S1, [R0,#0x90]
VLDR            S0, [R0,#0x94]
VADD.F32        S2, S2, S5
VADD.F32        S1, S1, S4
VADD.F32        S0, S0, S3
ADD             R0, R4, #0x3FC
ADD             R5, R5, #8
VSTR            S2, [R4,#0x3FC]
VSTR            S1, [R0,#4]
VSTR            S0, [R0,#8]
LDR             R0, [R4]
VLDR            S2, [R4,#0x30]
VLDR            S4, [R4,#0x34]
VLDR            S5, [R4,#0x2C]
VLDR            S1, [R0,#0x9C]
VLDR            S3, [R0,#0xA0]
VLDR            S0, [R0,#0x98]
VADD.F32        S1, S1, S2
VADD.F32        S2, S3, S4
VADD.F32        S0, S0, S5
VSTM            R5, {S0-S2}
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4-R7,PC}

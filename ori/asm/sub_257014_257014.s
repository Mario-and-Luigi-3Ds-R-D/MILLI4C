PUSH            {R4,R5,LR}
MOV             R4, R0
VPUSH           {D8-D9}
SUB             SP, SP, #0x1C
LDRB            R0, [R0,#0xC]
CMP             R0, #0xA; switch 10 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_25702C; jumptable 0025702C default case, cases 0,5,8
DCD def_25702C; jump table for switch statement
ADD             R1, SP, #0x38+var_2C; jumptable 0025702C case 1
MOV             R0, R4
BL              sub_5CBB0C
ADD             R1, SP, #0x38+var_2C
ADD             R0, R4, #0x14
BL              sub_14E984
LDR             R0, =off_6CE098
ADD             R1, SP, #0x38+var_34
LDR             R0, [R0]
LDR             R2, [R0,#0x68]!
ADD             R0, R0, #4
STR             R0, [SP,#0x38+var_34]
STR             R2, [SP,#0x38+var_38]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x38+var_30]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x38+var_38]
LDR             R1, [SP,#0x38+var_30]
LDRB            R0, [R0]
CMP             R0, #0xC
MOVEQ           R5, #1
MOVNE           R5, #0
ADD             R0, SP, #0x38+var_34
CMP             R1, R0
BNE             loc_2570E0
LDR             R0, [SP,#0x38+var_38]
CMP             R0, #0
BEQ             loc_2570E0
BL              sub_25AEE4
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x38+var_34]
CMP             R5, #0
STR             R1, [R0,#4]
STR             R0, [R1]
MOVNE           R0, #0xA
STRBNE          R0, [R4,#0xC]
ADD             SP, SP, #0x1C; jumptable 0025702C default case, cases 0,5,8
VPOP            {D8-D9}
POP             {R4,R5,PC}
ADD             SP, SP, #0x1C; jumptable 0025702C case 2
MOV             R0, R4
VPOP            {D8-D9}
POP             {R4,R5,LR}
B               sub_256830
LDR             R0, =off_6CE098; jumptable 0025702C case 3
ADD             R1, SP, #0x38+var_34
VLDR            S17, =0.0
LDR             R0, [R0]
LDR             R2, [R0,#0x68]!
ADD             R0, R0, #4
STR             R0, [SP,#0x38+var_34]
STR             R2, [SP,#0x38+var_38]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x38+var_30]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x38+var_38]
LDR             R1, [SP,#0x38+var_30]
LDR             R0, [R0,#0xA74]
VLDR            S16, [R0,#0x24]
VLDR            S18, [R0,#0x2C]
ADD             R0, SP, #0x38+var_34
CMP             R1, R0
BNE             loc_257184
LDR             R0, [SP,#0x38+var_38]
CMP             R0, #0
BEQ             loc_257184
BL              sub_25AEE4
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x38+var_34]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             R0, R4, #0x400
ADD             R0, R0, #0xC
ADD             R1, SP, #0x38+var_2C
VLDR            S0, [R0]
VLDR            S2, [R0,#4]
VLDR            S1, [R0,#8]
VADD.F32        S0, S16, S0
VADD.F32        S2, S17, S2
VADD.F32        S1, S18, S1
ADD             R0, R4, #0x14
VSTR            S0, [SP,#0x38+var_2C]
VSTR            S2, [SP,#0x38+var_28]
VSTR            S1, [SP,#0x38+var_24]
BL              sub_14E984
ADD             SP, SP, #0x1C
VPOP            {D8-D9}
POP             {R4,R5,PC}
ADD             SP, SP, #0x1C; jumptable 0025702C case 4
MOV             R0, R4
VPOP            {D8-D9}
POP             {R4,R5,LR}
B               sub_256C68
ADD             R0, R4, #0x14; jumptable 0025702C case 6
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             def_25702C; jumptable 0025702C default case, cases 0,5,8
LDR             R0, =off_6CE970
MOV             R1, #0
MOV             R3, #1
ADD             R2, R4, #0x38 ; '8'
LDR             R0, [R0]
STR             R1, [SP,#0x38+var_38]
BL              sub_52AEA8
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0x12
ADD             R0, R4, #0x14
BL              sub_14C548
MOV             R0, #0xA
STRB            R0, [R4,#0xC]
ADD             SP, SP, #0x1C
VPOP            {D8-D9}
POP             {R4,R5,PC}
LDR             R0, [R4,#0x10]; jumptable 0025702C case 7
CMP             R0, #0
BEQ             loc_25726C
CMP             R0, #1
BNE             def_25702C; jumptable 0025702C default case, cases 0,5,8
ADD             R0, R4, #0x14
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             def_25702C; jumptable 0025702C default case, cases 0,5,8
B               loc_2571FC
ADD             R0, R4, #0x3B0
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             def_25702C; jumptable 0025702C default case, cases 0,5,8
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #0x11
ADD             R0, R4, #0x14
BL              sub_14C548
LDR             R0, [R4,#0x10]
ADD             R0, R0, #1
STR             R0, [R4,#0x10]
ADD             SP, SP, #0x1C
VPOP            {D8-D9}
POP             {R4,R5,PC}
ADD             SP, SP, #0x1C; jumptable 0025702C case 9
MOV             R0, R4
VPOP            {D8-D9}
POP             {R4,R5,LR}
B               sub_256F18

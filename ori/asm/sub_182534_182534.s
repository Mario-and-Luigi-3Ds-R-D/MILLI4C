PUSH            {R4-R11,LR}
MOV             R12, R1
MOV             R7, R0
SUB             SP, SP, #0x3C
MOV             R11, R2
LDR             R1, [R0,#0x458]
LDR             R2, [R3,#8]
LDRH            R0, [R3]
MOV             R8, R3
ADD             R6, R3, #8
LDR             R5, [R1,R2,LSL#2]
CMP             R0, #0xEE
ADD             R4, R3, #0x68 ; 'h'
BEQ             loc_182580
CMP             R5, #0
LDRNE           R1, [R5,#4]
CMPNE           R1, #0
MOVEQ           R0, #0
BEQ             loc_1829BC
SUB             R0, R0, #0xE8
CMP             R0, #0x14; switch 20 cases
MOV             R10, #0
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_18258C; jumptable 0018258C default case, cases 1,3,5,7
DCD loc_1825E4; jump table for switch statement
LDR             R0, [R5,#4]; jumptable 0018258C case 0
BL              sub_533330
LDR             R2, [R7,#0x458]
LDR             R1, [R6]
MOV             R0, #0
STR             R0, [R2,R1,LSL#2]
LDR             R0, [R5,#4]
CMP             R0, #0
BEQ             def_18258C; jumptable 0018258C default case, cases 1,3,5,7
MOV             R1, #0
STR             R1, [R0,#0x180]
MOV             R0, #0
STR             R0, [R5,#4]
B               def_18258C; jumptable 0018258C default case, cases 1,3,5,7
LDR             R0, [R5,#4]; jumptable 0018258C case 2
LDRH            R1, [R0,#0xE]
ORR             R1, R1, #2
B               loc_182638
LDR             R0, [R5,#4]; jumptable 0018258C case 4
LDRH            R1, [R0,#0xE]
BIC             R1, R1, #2
STRH            R1, [R0,#0xE]
B               def_18258C; jumptable 0018258C default case, cases 1,3,5,7
CMP             R5, #0; jumptable 0018258C case 6
LDRNE           R0, [R5,#4]
CMPNE           R0, #0
BEQ             def_18258C; jumptable 0018258C default case, cases 1,3,5,7
MOV             R2, R8
MOV             R1, R11
MOV             R0, R12
BL              sub_29D1B0
MOV             R10, #3
NOP
B               def_18258C; jumptable 0018258C default case, cases 1,3,5,7
LDR             R1, [R7]; jumptable 0018258C case 8
LDR             R0, [R6,#4]
LDR             R2, [R7,#4]
LDR             R12, [R1,#0x9C]
SXTB            R3, R0
MOV             R1, R11
MOV             R0, R7
BLX             R12
ADD             R4, R4, #0xC
MOV             R1, R0
LDM             R4, {R0,R2,R3}
STMEA           SP, {R0,R2,R3}
LDR             R2, [R6,#8]
LDR             R0, [R5,#4]
UXTH            R3, R2
MOV             R2, SP
BL              sub_231870
NOP
NOP
B               def_18258C; jumptable 0018258C default case, cases 1,3,5,7
ADD             R6, R6, #4; jumptable 0018258C case 9
LDM             R6, {R0-R2}
ANDS            R6, R0, #0xFF
AND             R9, R2, #0xFF
LDR             R2, [R7,#4]
SXTB            R8, R1
MOV             R1, R11
MOV             R0, R7
AND             R3, R8, #0xFF
BEQ             loc_18273C
ADD             R0, R2, #0x13C00
ADD             R0, R0, #0x108
LDR             R1, [R0,#0x14]
LDRB            R1, [R1,R3]
CMP             R1, #0xFF
BEQ             loc_18277C
MOV             R2, #0x67 ; 'g'
LDR             R0, [R0]
SMULBB          R1, R1, R2
ADD             R0, R0, R1,LSL#2
MOVS            R1, R0
BEQ             loc_182730
ADD             R4, R4, #0x10
LDM             R4, {R0,R2,R3}
STMEA           SP, {R0,R2,R3}
MOV             R3, R9
LDR             R0, [R5,#4]
MOV             R2, SP
BL              sub_231920
CMP             R6, #0
BNE             loc_18277C
B               loc_18275C
LDR             R12, [R0]
SXTB            R3, R3
LDR             R12, [R12,#0x9C]
BLX             R12
LDR             R1, [R0]
LDR             R1, [R1,#0x3C]
BLX             R1
B               loc_18270C
LDR             R0, [R7]
LDR             R2, [R7,#4]
MOV             R3, R8
MOV             R1, R11
LDR             R12, [R0,#0x9C]
MOV             R0, R7
BLX             R12
LDRSB           R8, [R0,#0xDC]
STRB            R6, [R5,#8]
STRB            R8, [R5,#9]
STRB            R9, [R5,#0xA]
B               def_18258C; jumptable 0018258C default case, cases 1,3,5,7
ADD             R4, R4, #4; jumptable 0018258C case 10
LDM             R4, {R0-R2}
STMEA           SP, {R0-R2}
MOV             R2, SP
LDR             R1, [R7,#4]
LDR             R0, [R5,#4]
ADD             R1, R1, #8
BL              sub_231814
NOP
NOP
B               def_18258C; jumptable 0018258C default case, cases 1,3,5,7
LDR             R1, [R7]; jumptable 0018258C cases 11-13
LDR             R0, [R6,#8]
LDR             R2, [R7,#4]
LDR             R12, [R1,#0x9C]
SXTB            R3, R0
MOV             R1, R11
MOV             R0, R7
BLX             R12
MOV             R2, R0
LDRH            R0, [R8]
CMP             R0, #0xF3
BEQ             loc_1827FC
CMP             R0, #0xF4
BEQ             loc_182818
CMP             R0, #0xF5
BNE             def_18258C; jumptable 0018258C default case, cases 1,3,5,7
B               loc_182834
LDR             R1, [R6,#4]
LDR             R0, [R5,#4]
AND             R1, R1, #0xFF
BL              sub_231B94
NOP
NOP
B               def_18258C; jumptable 0018258C default case, cases 1,3,5,7
LDR             R1, [R6,#4]
LDR             R0, [R5,#4]
AND             R1, R1, #0xFF
BL              sub_230F0C
NOP
NOP
B               def_18258C; jumptable 0018258C default case, cases 1,3,5,7
LDR             R1, [R6,#4]
LDR             R0, [R5,#4]
ADD             R2, R2, #0x108
AND             R1, R1, #0xFF
ADD             R0, R0, #0x10
ADD             R0, R0, R1,LSL#2
STR             R2, [R0,#0x20]
B               def_18258C; jumptable 0018258C default case, cases 1,3,5,7
LDR             R12, [R6,#4]; jumptable 0018258C case 14
LDR             R3, [R5,#4]
ADD             R4, R4, #8
AND             R12, R12, #0xFF
LDM             R4, {R0-R2}
ADD             R12, R12, R12,LSL#1
ADD             R3, R3, R12,LSL#2
ADD             R3, R3, #0x134
STM             R3, {R0-R2}
B               def_18258C; jumptable 0018258C default case, cases 1,3,5,7
ADD             R4, R4, #4; jumptable 0018258C case 15
LDM             R4, {R0-R2}
STMEA           SP, {R0-R2}
MOV             R1, SP
LDR             R0, [R5,#4]
BL              sub_2317D8
NOP
NOP
B               def_18258C; jumptable 0018258C default case, cases 1,3,5,7
ADD             R4, R4, #4; jumptable 0018258C case 16
VLDR            S0, =0.017453
MOV             R1, SP
VLDM            R4, {S1-S3}
VMUL.F32        S1, S1, S0
VMUL.F32        S2, S2, S0
VMUL.F32        S0, S3, S0
VSTR            S0, [SP,#0x60+var_58]
VSTMEA          SP, {S1-S2}
LDR             R0, [R5,#4]
BL              sub_231988
NOP
NOP
B               def_18258C; jumptable 0018258C default case, cases 1,3,5,7
MOV             R0, SP; jumptable 0018258C case 17
BL              sub_234BEC
MOV             R0, SP
NOP
BL              sub_234B48
LDR             R0, [R4,#4]
VLDR            S0, =0.017453
MOV             R1, SP
STR             R0, [SP,#0x60+var_5C]
LDR             R0, [R4,#8]
STR             R0, [SP,#0x60+var_58]
LDR             R0, [R4,#0xC]
STR             R0, [SP,#0x60+var_54]
VLDR            S1, [R4,#0x10]
VMUL.F32        S1, S1, S0
VSTR            S1, [SP,#0x60+var_50]
VLDR            S1, [R4,#0x14]
VMUL.F32        S1, S1, S0
VSTR            S1, [SP,#0x60+var_4C]
VLDR            S1, [R4,#0x18]
VMUL.F32        S0, S1, S0
VSTR            S0, [SP,#0x60+var_48]
LDR             R0, [R4,#0x1C]
STR             R0, [SP,#0x60+var_38]
LDR             R0, [R4,#0x20]
STR             R0, [SP,#0x60+var_34]
LDR             R0, [R4,#0x24]
STR             R0, [SP,#0x60+var_30]
LDR             R0, [R5,#4]
BL              sub_231790
MOV             R0, SP
NOP
NOP
NOP
NOP
B               def_18258C; jumptable 0018258C default case, cases 1,3,5,7
ADD             R4, R4, #4; jumptable 0018258C case 18
LDM             R4, {R0-R2}
STMEA           SP, {R0-R2}
MOV             R1, SP
LDR             R0, [R5,#4]
BL              sub_231208
NOP
NOP
B               def_18258C; jumptable 0018258C default case, cases 1,3,5,7
ADD             R4, R4, #4; jumptable 0018258C case 19
VLDR            S0, =0.017453
MOV             R1, SP
VLDM            R4, {S1-S3}
VMUL.F32        S1, S1, S0
VMUL.F32        S2, S2, S0
VMUL.F32        S0, S3, S0
VSTR            S0, [SP,#0x60+var_58]
VSTMEA          SP, {S1-S2}
LDR             R0, [R5,#4]
BL              sub_231220
MOV             R0, R10; jumptable 0018258C default case, cases 1,3,5,7
ADD             SP, SP, #0x3C ; '<'
POP             {R4-R11,PC}

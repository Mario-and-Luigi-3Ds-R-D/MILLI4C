PUSH            {R0-R2,R4-R11,LR}
SUB             SP, SP, #8
MOV             R4, R0
ADD             R11, R4, #0x400
LDR             R0, [R0,#0x800]
LDR             R1, =unk_6731D8
ADD             R11, R11, #0x3FC
LDR             R0, [R0,#0x38]
LDRB            R0, [R0,#0x1C]
AND             R0, R0, #7
LDRB            R6, [R1,R0]
MOV             R0, #0xFFFFFFFF
STR             R0, [SP,#0x38+var_34]
LDR             R0, [R4,#0x7FC]
CMP             R6, #0
LDRB            R8, [R0,#0x6C]
MOVEQ           R2, R8
BEQ             loc_1940E0
LDR             R1, [R4,#0x464]
CMP             R6, #0x10
AND             R2, R1, #0xF
BEQ             loc_1940E0
CMP             R6, #8
LDREQ           R1, =unk_67DE00
BEQ             loc_19415C
CMP             R6, #4
LDREQ           R1, =unk_67DDF0
BEQ             loc_19415C
CMP             R6, #2
LDREQ           R1, =unk_67DDE0
LDRBEQ          R2, [R1,R2]
MOVNE           R2, #0
LDRH            R1, [R0,#0x1A]
LDRSH           R9, [R0,#0x16]
STR             R6, [SP,#0x38+var_38]
AND             R1, R1, #2
LDR             R0, [R4,#0x4EC]
MOV             R7, R1,LSR#1
LDR             R1, [R4]
MOV             R0, R0,LSL#7
LDR             R12, [R1,#0x334]
MOV             R3, R0,ASR#27
MOV             R1, #0
MOV             R0, R4
BLX             R12
ADD             R10, R4, #0x400
MOV             R5, R0
LDRH            R0, [R10,#0x68]
SUB             R0, R0, #5
CMP             R0, #0xB; switch 11 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_194128; jumptable 00194128 default case, cases 1,2
DCD loc_194164; jump table for switch statement
LDRB            R2, [R1,R2]
B               loc_1940E0
VLDR            S0, [R4,#0x10C]; jumptable 00194128 case 0
VLDR            S1, [R4,#0x11C]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BGT             loc_194198
LDR             R0, [R4,#0x4EC]
TST             R0, #8
BNE             loc_194198
LDRSH           R0, [R10,#0xD0]
LDRSH           R1, [R10,#0xD2]
CMP             R0, R1
MOVLT           R1, #4
BLT             loc_19419C
MOV             R1, #5
LDR             R2, [SP,#0x38+var_28]
ADD             SP, SP, #0x14
MOV             R0, R4
POP             {R4-R11,LR}
MOV             R3, #0
B               sub_1757A4
LDRH            R0, [R10,#0x6A]; jumptable 00194128 case 3
MOV             R9, #1
CMP             R0, #8
BNE             loc_19431C
B               loc_194314
MOV             R9, #1; jumptable 00194128 case 4
ADD             R5, R5, R6
B               loc_194314
ADD             R5, R5, R6,LSL#1; jumptable 00194128 case 6
CMP             R8, R5
MOV             R7, #0
BNE             loc_194204
LDR             R0, [R4,#0x7FC]
LDR             R2, [R0,#0x1C]
LDRB            R1, [R0,#0x6C]
LDR             R0, [R0,#4]
BL              sub_136824
CMP             R0, #4
NOP
BCS             loc_194274
LDR             R0, [R4]
LDR             R1, [R0,#0x3DC]
MOV             R0, R4
BLX             R1
B               loc_194314
ADD             R5, R5, R6,LSL#1; jumptable 00194128 case 7
CMP             R8, R5
MOV             R7, #0
BNE             loc_194204
LDR             R0, [R4]
MOV             R1, #0
LDR             R2, [R0,#0x3D8]
MOV             R0, R4
BLX             R2
B               loc_194204
ADD             R0, R6, R6,LSL#1; jumptable 00194128 case 8
ADD             R5, R5, R0
CMP             R8, R5
MOV             R7, #0
BNE             loc_194204
LDR             R0, [R4,#0x7FC]
LDR             R2, [R0,#0x1C]
LDRB            R1, [R0,#0x6C]
LDR             R0, [R0,#4]
BL              sub_136824
CMP             R0, #4
NOP
BCC             loc_194204
LDR             R0, [R4,#0x7FC]
MOV             R1, #2
BL              sub_593084
NOP
NOP
B               loc_194204
ADD             R0, R6, R6,LSL#1; jumptable 00194128 case 9
ADD             R5, R5, R0
CMP             R8, R5
MOV             R7, #0
BNE             loc_194204
LDR             R0, [R4,#0x7FC]
LDR             R2, [R0,#0x1C]
LDRB            R1, [R0,#0x6C]
LDR             R0, [R0,#4]
BL              sub_136824
MOV             R6, R0
LDR             R0, [R11]
LDRB            R1, [R0,#0x6C]
BL              sub_5F1670
CMP             R6, #3
NOP
BCC             loc_194204
SUB             R0, R0, #1
CMP             R6, R0
BGE             loc_194204
LDR             R2, [R4,#0x7FC]
UXTH            R1, R0
MOV             R0, R2
BL              sub_593084
LDR             R0, [R11]
MOV             R1, #1
STRH            R1, [R0,#0x16]
B               loc_194204
MOV             R9, #1; jumptable 00194128 case 5
ADD             R5, R5, R6,LSL#1
B               loc_194314
MOV             R7, #1; jumptable 00194128 case 10
MOV             R9, R7
ADD             R5, R5, R6,LSL#1
CMP             R8, R5
BEQ             loc_194350
LDR             R0, [SP,#0x38+var_28]
SXTH            R3, R9
LDR             R2, [SP,#0x38+var_34]
STR             R0, [SP,#0x38+var_38]
LDR             R0, [R4]
VLDR            S0, [R10,#0x70]
MOV             R1, R5
LDR             R12, [R0,#0x350]
MOV             R0, R4
BLX             R12
LDR             R0, [R4,#0x7FC]
ADD             R0, R0, #0x10
BL              sub_4857C8
LDR             R1, [R4,#0x7FC]
CMP             R7, #0
MOVNE           R0, #1
MOVEQ           R0, #0
LDRH            R2, [R1,#0x1A]
BIC             R2, R2, #2
ORR             R0, R2, R0,LSL#1
STRH            R0, [R1,#0x1A]
ADD             SP, SP, #0x14
POP             {R4-R11,PC}
LDR             R0, [R4]; jumptable 00194128 default case, cases 1,2
ADD             R5, SP, #0x38+var_2C
LDM             R5, {R1,R2}
LDR             R3, [R0,#0x3F4]
ADD             SP, SP, #0x14
MOV             R0, R4
POP             {R4-R11,LR}
BX              R3

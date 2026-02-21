PUSH            {R4-R9,LR}
MOV             R4, R0
SUB             SP, SP, #0x4C
MOV             R6, R1
LDR             R0, =off_6CDCE8
MOV             R8, R2
LDR             R0, [R0]
BL              sub_5CDC34
CMP             R0, #0
ADDEQ           R0, R4, #0x118
LDMEQ           R0, {R0,R1}
BNE             loc_285C40
CMP             R0, R1
BEQ             loc_2857CC
LDR             R2, [R0]
LDRB            R2, [R2,#1]
CMP             R2, #4
ADDEQ           R0, R0, #0xC
BEQ             loc_2857B0
CMP             R1, R0
BNE             loc_285C40
MOV             R0, #1
BIC             R1, R1, #0xFF
MOV             R3, R0,LSL#8
ORR             R1, R1, R0
AND             R12, R3, #0xFF00
BIC             R1, R1, #0xFF00
ORR             R1, R1, R12
ADD             R3, R4, #0x88
BIC             R12, R1, #0xFF0000
MOV             R2, R0,LSL#16
LDM             R3, {R1,R3}
AND             R2, R2, #0xFF0000
ORR             R2, R2, R12
BIC             R2, R2, #0xFF000000
CMP             R3, R1
MOV             R7, #0
ORR             R0, R2, R0,LSL#24
BEQ             loc_2858C8
LDR             R2, [R1]
LDRB            R2, [R2,#4]
CMP             R2, #0
BEQ             loc_285848
CMP             R2, #1
BEQ             loc_28586C
CMP             R2, #2
BEQ             loc_28587C
CMP             R2, #3
BNE             loc_2858BC
B               loc_2858A0
BIC             R0, R0, #0xFF
MOV             R12, R7,LSL#16
ORR             R0, R0, R7
AND             R12, R12, #0xFF0000
BIC             R0, R0, #0xFF0000
ORR             R0, R0, R12
BIC             R0, R0, #0xFF000000
ORR             R0, R0, R7,LSL#24
B               loc_2858BC
MOV             R2, R7,LSL#8
BIC             R0, R0, #0xFF00
AND             R2, R2, #0xFF00
B               loc_2858B8
MOV             R12, R7,LSL#16
BIC             R0, R0, #0xFF0000
AND             R9, R12, #0xFF0000
ORR             R0, R0, R9
BIC             R0, R0, #0xFF000000
ORR             R0, R0, R7,LSL#24
BIC             R0, R0, #0xFF
ORR             R0, R0, R7
B               loc_2858BC
MOV             R2, R7,LSL#16
AND             R12, R2, #0xFF0000
BIC             R0, R0, #0xFF0000
ORR             R0, R0, R12
MOV             R2, R7,LSL#24
BIC             R0, R0, #0xFF000000
ORR             R0, R0, R2
ADD             R1, R1, #0xC
CMP             R3, R1
BNE             loc_28581C
LDR             R9, =dword_63ED74
MOV             R1, #0
ADD             R2, R9, #4
VLDM            R2, {S0-S4}
ADD             R2, SP, #0x68+var_48
VSTM            R2, {S0-S4}
LDR             R3, [R2,R1,LSL#2]
CMP             R3, R6
ADDCC           R1, R1, #1
CMPCC           R1, #5
BCC             loc_2858E0
LDR             R2, [R4,#0x120]
LDR             R2, [R2,#0x3C]
ADD             R1, R2, R1,LSL#2
LDR             R2, [R1,#0x128]
CMP             R2, #1
BNE             loc_28591C
MOV             R2, R0,LSL#16
MOVS            R2, R2,ASR#24
MOVNE           R2, #1
BNE             loc_285920
MOV             R2, #0
LDR             R3, [R1,#0x114]
MOV             R2, R2,LSL#8
BIC             R12, R5, #0xFF00
AND             R2, R2, #0xFF00
CMP             R3, #1
ORR             R2, R2, R12
BNE             loc_285948
MOVS            R3, R0,ASR#24
MOVNE           R12, #1
BNE             loc_28594C
MOV             R12, #0
LDR             R3, [R1,#0x100]
BIC             R2, R2, #0xFF000000
ORR             R2, R2, R12,LSL#24
CMP             R3, #1
BNE             loc_285970
MOV             R3, R0,LSL#8
MOVS            R3, R3,ASR#24
MOVNE           R12, #1
BNE             loc_285974
MOV             R12, #0
LDR             R3, [R1,#0xEC]
MOV             R1, R12,LSL#16
BIC             R2, R2, #0xFF0000
AND             R1, R1, #0xFF0000
CMP             R3, #1
ORR             R1, R1, R2
BNE             loc_2859A0
SXTB            R0, R0
CMP             R0, #0
MOVNE           R0, #1
BNE             loc_2859A4
MOV             R0, #0
AND             R0, R0, #0xFF
BIC             R1, R1, #0xFF
ORR             R5, R1, R0
MOV             R1, #0
MOV             R0, R1
STR             R5, [SP,#0x68+var_58]
CMP             R0, #4
ADD             R2, SP, #0x68+var_58
BCS             loc_285A18
LDRB            R2, [R2,R0]
MOV             R3, R0
ADD             R0, R3, #1
CMP             R2, #0
ADDNE           R1, R1, #1
CMP             R0, #4
BCC             loc_2859BC
LDR             R0, =dword_6D1F40
UXTH            R6, R1
BL              sub_546DB0
MUL             R0, R0, R6
STR             R5, [SP,#0x68+var_44]
MOV             R2, #0
MOV             R1, R0,LSR#16
LDR             R0, [R9]
STR             R0, [SP,#0x68+var_48]
MOV             R0, R2
CMP             R0, #4
ADD             R3, SP, #0x68+var_44
BCC             loc_285A20
NOP
BL              sub_2FE484
LDRB            R3, [R3,R0]
MOV             R12, R0
CMP             R3, #0
BEQ             loc_285C34
CMP             R2, R1
ADDNE           R2, R2, #1
BNE             loc_285C34
ADD             R1, SP, #0x68+var_48
LDRB            R5, [R1,R12]
CMP             R5, #5
BEQ             loc_285C40
LDM             R8, {R0-R2}
ADD             R3, SP, #0x68+var_34
VLDR            S0, =0.0
ADD             R6, SP, #0x68+var_54
STM             R3, {R0-R2}
MOV             R3, #0
LDR             R0, =off_6CE970
VSTR            S0, [SP,#0x68+var_30]
MOV             R2, R3
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x504
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_285AA0
STR             R5, [SP,#0x68+var_68]
LDR             R3, [R4,#0x120]
ADD             R2, SP, #0x68+var_34
MOV             R1, R4
BL              sub_285568
STR             R0, [SP,#0x68+var_54]
LDR             R2, [SP,#0x68+var_54]
ADD             R0, R6, #4
STR             R0, [SP,#0x68+var_4C]
STR             R2, [SP,#0x68+var_64]
ADD             R2, SP, #0x68+var_50
STR             R2, [SP,#0x68+var_60]
LDR             R2, [SP,#0x68+var_4C]
ADD             R0, SP, #0x68+var_60
STR             R0, [SP,#0x68+var_50]
STR             R2, [SP,#0x68+var_5C]
STR             R0, [SP,#0x68+var_4C]
LDR             R0, [R4,#0x11C]
LDR             R3, [R4,#0x118]
LDR             R2, =0x2AAAAAAB
ADD             R1, SP, #0x68+var_64
SUB             R3, R0, R3
SMULL           R3, R2, R2, R3
MOV             R3, R2,ASR#1
SUB             R2, R3, R2,ASR#31
CMP             R2, #0xA
BEQ             loc_285B38
ADD             R2, R2, #1
CMP             R2, #0xA
BHI             loc_285B38
CMP             R0, #0
BEQ             loc_285B2C
LDR             R2, [SP,#0x68+var_64]
ADD             R1, R1, #4
STR             R2, [R0],#4
STR             R1, [R0]
LDR             R1, [SP,#0x68+var_5C]
STR             R1, [R0,#4]
STR             R0, [R1]
STR             R0, [SP,#0x68+var_5C]
LDR             R0, [R4,#0x11C]
ADD             R0, R0, #0xC
STR             R0, [R4,#0x11C]
LDR             R1, [SP,#0x68+var_5C]
LDR             R6, =off_6B7BEC
ADD             R0, SP, #0x68+var_60
CMP             R1, R0
BNE             loc_285BA4
LDR             R0, [SP,#0x68+var_64]
CMP             R0, #0
BEQ             loc_285BA4
ADD             R5, R0, #0x4C0
STR             R6, [R0,#0x4C0]!
LDR             R1, =nullsub_300
MOV             R3, #1
MOV             R2, #0x1C
ADD             R0, R0, #0x18
BLX             sub_1009D8
MOV             R0, R5
NOP
NOP
SUB             R0, R0, #0x400
SUB             R0, R0, #0x28 ; '('
BL              sub_14F3EC
SUB             R0, R0, #0x90
NOP
NOP
SUB             R0, R0, #8
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x68+var_60]
STR             R1, [R0,#4]
STR             R0, [R1]
STRB            R7, [R4,#0x90]
LDR             R1, [SP,#0x68+var_4C]
ADD             R0, SP, #0x68+var_50
CMP             R1, R0
BNE             loc_285C1C
LDR             R0, [SP,#0x68+var_54]
CMP             R0, #0
BEQ             loc_285C1C
ADD             R4, R0, #0x4C0
STR             R6, [R0,#0x4C0]!
LDR             R1, =nullsub_300
MOV             R3, #1
MOV             R2, #0x1C
ADD             R0, R0, #0x18
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
SUB             R0, R0, #0x400
SUB             R0, R0, #0x28 ; '('
BL              sub_14F3EC
SUB             R0, R0, #0x90
NOP
NOP
SUB             R0, R0, #8
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x68+var_50]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0x4C ; 'L'
MOV             R0, #1
POP             {R4-R9,PC}
ADD             R0, R12, #1
CMP             R0, #4
BCC             loc_285A0C
ADD             SP, SP, #0x4C ; 'L'
MOV             R0, #0
POP             {R4-R9,PC}

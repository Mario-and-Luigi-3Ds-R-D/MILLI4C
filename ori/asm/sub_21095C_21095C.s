PUSH            {R4-R7,LR}
ADD             R3, R2, #8
SUB             SP, SP, #0xC
LDM             R3, {R12,LR}
MOV             R5, #1
LDRH            R6, [R2]
LDR             R7, =sub_106498
MOV             R3, R12,LSL#16
LDR             R12, =off_6CE970
MOVS            R3, R3,LSR#16
MOVEQ           R3, #0x1A4
AND             LR, LR, #0xFF
LDRHEQ          R3, [R3,R1]
LDR             R4, [R12]
CMP             LR, #0
LDRBEQ          LR, [R1,#0x1A6]
CMP             R6, #0x43 ; 'C'
MOV             R12, #0
ADD             R4, R4, R7
BEQ             loc_2109C4
CMP             R6, #0x45 ; 'E'
BEQ             loc_210AF0
CMP             R6, #0x47 ; 'G'
CMPNE           R6, #0x49 ; 'I'
BEQ             loc_210C98
B               loc_210DB0
CMP             LR, #5
STRH            R3, [SP,#0x20+var_20]
BEQ             loc_210A00
STRB            LR, [SP,#0x20+var_1E]
LDR             R3, [R4,#4]
MOV             R5, SP
CMP             R3, #0
SUBSNE          R3, R3, #0x74 ; 't'
MOVEQ           R3, #0
ADDNE           R3, R3, #0x74 ; 't'
CMP             R3, #0
LDRNE           LR, [R3,#8]
MOVEQ           LR, #0
BNE             loc_210A74
B               loc_210DB0
LDR             R3, [R4,#4]
MOV             R5, SP
CMP             R3, #0
BEQ             loc_210A1C
SUBS            R3, R3, #0x74 ; 't'
ADDNE           R3, R3, #0x74 ; 't'
BNE             loc_210A20
MOV             R3, #0
CMP             R3, #0
LDRNE           R4, [R3,#8]
MOVEQ           R4, #0
BEQ             loc_210DB0
CMP             R3, #0
MOVEQ           LR, #0
SUBNE           LR, R3, #0x74 ; 't'
LDR             R3, [LR,#4]
CMP             R3, #0
BEQ             loc_210A5C
ADD             LR, LR, #0x100
LDRH            R3, [R5]
LDRH            LR, [LR,#0xB2]
CMP             LR, R3
BEQ             loc_210AD8
MOVS            R3, R4
MOVEQ           R4, #0
LDRNE           R4, [R3,#8]
CMP             R3, R12
BNE             loc_210A30
B               loc_210DB0
CMP             R3, #0
SUBNE           R3, R3, #0x74 ; 't'
LDR             R4, [R3,#4]
CMP             R4, #0
BEQ             loc_210AB4
LDRB            R4, [R5,#2]
CMP             R4, #1
BEQ             loc_210ACC
LDRB            R6, [R3,#0x1AC]
CMP             R4, R6
BNE             loc_210AB4
ADD             R4, R3, #0x100
LDRH            R3, [R5]
LDRH            R4, [R4,#0xAE]
CMP             R3, R4
BEQ             loc_210AD8
MOVS            R3, LR
MOVEQ           LR, #0
LDRNE           LR, [R3,#8]
CMP             R3, R12
BNE             loc_210A74
B               loc_210DB0
LDRB            R3, [R3,#0x1AC]
CMP             R3, #1
BNE             loc_210AB4
CMP             R1, #0
ADDNE           R1, R1, #4
BL              sub_29D1B0
ADD             SP, SP, #0xC
MOV             R0, #3
POP             {R4-R7,PC}
CMP             LR, #5
STRH            R3, [SP,#0x20+var_20]
BEQ             loc_210B44
STRB            LR, [SP,#0x20+var_1E]
STR             R12, [SP,#0x20+var_18]
LDRB            R0, [R1,#0x1A6]
MOV             LR, SP
MOV             R2, R12
CMP             R0, #5
MOVNE           R1, #0
STR             R1, [SP,#0x20+var_1C]
LDR             R0, [R4,#4]
CMP             R0, #0
SUBSNE          R0, R0, #0x74 ; 't'
MOVEQ           R0, #0
ADDNE           R0, R0, #0x74 ; 't'
CMP             R0, #0
LDRNE           R3, [R0,#8]
MOVEQ           R3, #0
BNE             loc_210BFC
B               loc_210BF0
STR             R12, [SP,#0x20+var_18]
LDRB            R0, [R1,#0x1A6]
MOV             LR, SP
MOV             R2, R12
CMP             R0, #5
MOVNE           R1, #0
STR             R1, [SP,#0x20+var_1C]
LDR             R0, [R4,#4]
CMP             R0, #0
SUBSNE          R0, R0, #0x74 ; 't'
MOVEQ           R0, #0
ADDNE           R0, R0, #0x74 ; 't'
CMP             R0, #0
LDRNE           R3, [R0,#8]
MOVEQ           R3, #0
BEQ             loc_210BF0
CMP             R0, #0
MOVEQ           R1, #0
SUBNE           R1, R0, #0x74 ; 't'
LDR             R0, [R1,#4]
CMP             R0, #0
BEQ             loc_210BDC
ADD             R0, R1, #0x100
LDRH            R4, [LR]
LDRH            R6, [R0,#0xB2]
CMP             R6, R4
BNE             loc_210BDC
STRB            R12, [R1,#0x1AC]
STRH            R12, [R0,#0xAE]
STRH            R12, [R0,#0xB2]
STR             R12, [R1,#4]
STRB            R12, [R1,#0x1AD]
STRH            R12, [R0,#0xB0]
STRH            R12, [R0,#0xB4]
STR             R12, [R1,#0x1B8]
LDR             R0, [SP,#0x20+var_1C]
CMP             R0, R1
STREQ           R5, [SP,#0x20+var_18]
MOVS            R0, R3
MOVEQ           R3, #0
LDRNE           R3, [R0,#8]
CMP             R0, R2
BNE             loc_210B84
LDR             R0, [SP,#0x20+var_18]
ADD             SP, SP, #0xC
POP             {R4-R7,PC}
CMP             R0, #0
MOVEQ           R1, #0
SUBNE           R1, R0, #0x74 ; 't'
LDR             R0, [R1,#4]
CMP             R0, #0
BEQ             loc_210C70
LDRB            R0, [LR,#2]
CMP             R0, #1
BEQ             loc_210C88
LDRB            R4, [R1,#0x1AC]
CMP             R0, R4
BNE             loc_210C70
LDR             R4, =0x1AE
LDRH            R0, [LR]
LDRH            R4, [R4,R1]
CMP             R0, R4
BNE             loc_210C70
ADD             R0, R1, #0x100
STRB            R12, [R1,#0x1AC]
STRH            R12, [R0,#0xAE]
STRH            R12, [R0,#0xB2]
STR             R12, [R1,#4]
STRB            R12, [R1,#0x1AD]
STRH            R12, [R0,#0xB0]
STRH            R12, [R0,#0xB4]
STR             R12, [R1,#0x1B8]
LDR             R0, [SP,#0x20+var_1C]
CMP             R0, R1
STREQ           R5, [SP,#0x20+var_18]
MOVS            R0, R3
MOVEQ           R3, #0
LDRNE           R3, [R0,#8]
CMP             R0, R2
BNE             loc_210BFC
B               loc_210BF0
LDRB            R0, [R1,#0x1AC]
CMP             R0, #1
BNE             loc_210C70
B               loc_210C40
CMP             R6, #0x47 ; 'G'
MOVEQ           R0, #1
MOVNE           R0, #0
CMP             LR, #5
STRH            R3, [SP,#0x20+var_20]
BEQ             loc_210CE4
STRB            LR, [SP,#0x20+var_1E]
STRB            R0, [SP,#0x20+var_1D]
LDR             R0, [R4,#4]
MOV             R2, SP
CMP             R0, #0
SUBSNE          R0, R0, #0x74 ; 't'
MOVEQ           R0, #0
ADDNE           R0, R0, #0x74 ; 't'
CMP             R0, #0
LDRNE           R1, [R0,#8]
MOVEQ           R1, #0
BNE             loc_210D54
B               loc_210DB0
STRB            R0, [SP,#0x20+var_1E]
LDR             R0, [R4,#4]
MOV             R2, SP
CMP             R0, #0
SUBSNE          R0, R0, #0x74 ; 't'
MOVEQ           R0, #0
ADDNE           R0, R0, #0x74 ; 't'
CMP             R0, #0
LDRNE           R1, [R0,#8]
MOVEQ           R1, #0
BEQ             loc_210DB0
CMP             R0, #0
SUBNE           R0, R0, #0x74 ; 't'
LDR             R3, [R0,#4]
CMP             R3, #0
BEQ             loc_210D3C
LDR             LR, =0x1B2
LDRH            R3, [R2]
LDRH            LR, [LR,R0]
CMP             LR, R3
LDRBEQ          R3, [R2,#2]
STRBEQ          R3, [R0,#0x1A7]
MOVS            R0, R1
MOVEQ           R1, #0
LDRNE           R1, [R0,#8]
CMP             R0, R12
BNE             loc_210D10
B               loc_210DB0
CMP             R0, #0
SUBNE           R0, R0, #0x74 ; 't'
LDR             R3, [R0,#4]
CMP             R3, #0
BEQ             loc_210D9C
LDRB            R3, [R2,#2]
CMP             R3, #1
BEQ             loc_210DBC
LDRB            LR, [R0,#0x1AC]
CMP             R3, LR
BNE             loc_210D9C
LDR             LR, =0x1AE
LDRH            R3, [R2]
LDRH            LR, [LR,R0]
CMP             R3, LR
BNE             loc_210D9C
LDRB            R3, [R2,#3]
STRB            R3, [R0,#0x1A7]
MOVS            R0, R1
MOVEQ           R1, #0
LDRNE           R1, [R0,#8]
CMP             R0, R12
BNE             loc_210D54
ADD             SP, SP, #0xC
MOV             R0, #0
POP             {R4-R7,PC}
LDRB            R3, [R0,#0x1AC]
CMP             R3, #1
BNE             loc_210D9C
B               loc_210D94

PUSH            {R4-R11,LR}
SUB             SP, SP, #0x2C
MOV             R8, #0
ADD             R9, SP, #0x50+var_48
LDR             R11, =dword_6D23F4
LDR             R10, =dword_6EF0D0
SUB             R7, R11, #0x3C ; '<'
LDR             R0, [R7,#(dword_6D23DC - 0x6D23B8)]
LDR             R1, [R7,#(dword_6D23D0 - 0x6D23B8)]
ADD             R4, R0, #0x4900
CMP             R1, #0
LDREQ           R0, [R7,#(dword_6D23C0 - 0x6D23B8)]
CMPEQ           R0, #0
LDREQ           R0, [R10,#(dword_6EF0DC - 0x6EF0D0)]
CMPEQ           R0, #0
BNE             loc_11BE60
LDR             R0, [R11,#(dword_6D23F8 - 0x6D23F4)]
ADD             R5, R11, #4
ADD             R6, R4, #0x4900
LDR             R1, [R0]
CMP             R1, #0
BEQ             loc_11BE60
LDR             R1, [R7,#(dword_6D23D4 - 0x6D23B8)]
ORR             R1, R1, #2
STR             R1, [R7,#(dword_6D23D4 - 0x6D23B8)]
LDR             R1, [R7,#(dword_6D23D4 - 0x6D23B8)]
TST             R1, #1
BNE             loc_11BE54
ADD             R0, R0, #0x48 ; 'H'
MOV             R2, #8
ADR             R1, aRom_1; "rom:"
BL              sub_1004F0
CMP             R0, #0
LDREQ           R0, =off_6BFDFC
ADDEQ           R1, SP, #0x50+var_48
BNE             loc_11BE1C
STR             R8, [SP,#0x50+var_44]
STR             R8, [SP,#0x50+var_40]
STR             R8, [SP,#0x50+var_3C]
STR             R8, [SP,#0x50+var_38]
STR             R8, [SP,#0x50+var_34]
LDR             R2, [R0]
STR             R2, [SP,#0x50+var_48]
LDR             R2, [R2,#-0x30]
LDR             R0, [R0,#0xC]
STR             R0, [R1,R2]
LDR             R0, [R5]
MOV             R2, #1
STR             R8, [SP,#0x50+var_38]
ADD             R1, R0, #0x48 ; 'H'
ADD             R0, R9, #4
STR             R8, [SP,#0x50+var_34]
STR             R8, [SP,#0x50+var_40]
STR             R8, [SP,#0x50+var_3C]
BL              sub_10D7A8
MOVS            R0, R0,LSR#31
NOP
BNE             loc_11BDCC
MOV             R0, #0
MOV             R1, R0
STRD            R0, R1, [SP,#0x50+var_30]
ADD             R1, SP, #0x50+var_30
ADD             R0, R9, #4
BL              sub_113BF0
MOVS            R0, R0,LSR#31
NOP
BNE             loc_11BDCC
LDR             R0, [R5]
LDR             R1, [R0,#4]
CMP             R1, #1
STR             R1, [SP,#0x50+var_4C]
LDRLT           R1, [SP,#0x50+var_30]
STRLT           R1, [SP,#0x50+var_4C]
CMP             R1, #0
BLE             loc_11BDCC
LDR             R1, [R0,#0x18]
LDR             R0, [SP,#0x50+var_44]
BIC             R0, R0, #1
BL              sub_120988
MOV             LR, R0
MOVS            R0, R0,LSR#31
BNE             loc_11BDCC
LDR             R0, [R5]
ADD             R2, SP, #0x50+var_30
LDM             R2, {R1,R12}
LDRD            R2, R3, [R0,#8]
SUBS            R0, R2, R1
SBCS            R0, R3, R12
BGE             loc_11BD74
ADD             R0, R9, #4
STR             R8, [SP,#0x50+var_50]
BL              sub_120CD8
MOV             LR, R0
MOVS            R0, LR,LSR#31
BNE             loc_11BDCC
LDR             R0, [R5]
LDR             R1, [R0,#0x40]
CMP             R1, #0
BNE             loc_11BDB0
LDRD            R0, R1, [R0,#0x10]
AND             R2, R1, #0xFF
AND             R1, R0, #0xFF
LDR             R0, [SP,#0x50+var_4C]
BL              sub_12477C
LDR             R1, [R5]
CMP             R0, #0
STR             R0, [R1,#0x40]
BEQ             loc_11BDCC
STR             R8, [SP,#0x50+var_50]
LDR             R0, [R5]
LDR             R3, [SP,#0x50+var_4C]
MOV             R1, SP
LDR             R2, [R0,#0x40]
ADD             R0, R9, #4
BL              sub_10D8F4
LDR             R0, [SP,#0x50+var_44]
BICS            R0, R0, #1
BEQ             loc_11BDF4
LDR             R0, [SP,#0x50+var_44]
TST             R0, #1
BLNE            sub_128434
LDR             R0, [SP,#0x50+var_44]
BIC             R0, R0, #1
BL              sub_10D89C
STR             R8, [SP,#0x50+var_44]
LDR             R0, [SP,#0x50+var_44]
BICS            R0, R0, #1
BEQ             loc_11BE1C
LDR             R0, [SP,#0x50+var_44]
TST             R0, #1
BLNE            sub_128434
LDR             R0, [SP,#0x50+var_44]
BIC             R0, R0, #1
BL              sub_10D89C
STR             R8, [SP,#0x50+var_44]
LDR             R0, [R5]
LDR             R1, [R0,#0x44]
CMP             R1, #0
LDRNE           R2, [R0,#0x40]
CMPNE           R2, #0
BLXNE           R1
LDR             R0, [R5]
CMP             R0, #0
BLNE            sub_124A64
LDR             R0, [R5]
ADD             R0, R0, #0x248
CMP             R0, R6
STR             R0, [R5]
STREQ           R4, [R5]
LDR             R0, [R7,#(dword_6D23D4 - 0x6D23B8)]
BIC             R0, R0, #2
STR             R0, [R7,#(dword_6D23D4 - 0x6D23B8)]
LDR             R0, [R7,#(dword_6D23C0 - 0x6D23B8)]
CMP             R0, #0
LDRNE           R0, [R10,#(dword_6EF0DC - 0x6EF0D0)]
CMPNE           R0, #0
BLE             loc_11BE80
LDR             R0, [R10,#(dword_6EF0DC - 0x6EF0D0)]
SUB             R0, R0, #1
STR             R0, [R10,#(dword_6EF0DC - 0x6EF0D0)]
LDR             R0, =0xF42400
MOV             R1, #0
BL              sub_121140
LDR             R0, [R7,#(dword_6D23CC - 0x6D23B8)]
CMP             R0, #0
BNE             loc_11BC1C
ADD             SP, SP, #0x2C ; ','
POP             {R4-R11,PC}

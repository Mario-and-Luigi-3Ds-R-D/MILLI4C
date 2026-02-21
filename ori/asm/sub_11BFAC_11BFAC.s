PUSH            {R4-R11,LR}
SUB             SP, SP, #0x2C
MOV             R8, #0
ADD             R9, SP, #0x50+var_48
LDR             R5, =dword_6D23F4
LDR             R10, =dword_6EF0D0
SUB             R7, R5, #0x3C ; '<'
LDR             R0, [R7,#(dword_6D23D0 - 0x6D23B8)]
LDR             R4, [R7,#(dword_6D23DC - 0x6D23B8)]
CMP             R0, #0
LDREQ           R0, [R7,#(dword_6D23C0 - 0x6D23B8)]
CMPEQ           R0, #0
LDREQ           R0, [R10,#(dword_6EF0D8 - 0x6EF0D0)]
CMPEQ           R0, #0
BNE             loc_11C1F8
LDR             R0, [R5]
ADD             R6, R4, #0x4900
LDR             R1, [R0]
CMP             R1, #0
BEQ             loc_11C1F8
LDR             R1, [R7,#(dword_6D23D4 - 0x6D23B8)]
ORR             R1, R1, #1
STR             R1, [R7,#(dword_6D23D4 - 0x6D23B8)]
LDR             R1, [R7,#(dword_6D23D4 - 0x6D23B8)]
TST             R1, #2
BNE             loc_11C1EC
ADD             R0, R0, #0x48 ; 'H'
MOV             R2, #8
ADR             R1, aRom_2; "rom:"
BL              sub_1004F0
CMP             R0, #0
LDREQ           R0, =off_6BFDFC
ADDEQ           R1, SP, #0x50+var_48
BNE             loc_11C1B4
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
BNE             loc_11C164
MOV             R0, #0
MOV             R1, R0
STRD            R0, R1, [SP,#0x50+var_30]
ADD             R1, SP, #0x50+var_30
ADD             R0, R9, #4
BL              sub_113BF0
MOVS            R0, R0,LSR#31
NOP
BNE             loc_11C164
LDR             R0, [R5]
LDR             R11, [R0,#4]
CMP             R11, #1
LDRLT           R11, [SP,#0x50+var_30]
CMP             R11, #0
BLE             loc_11C164
LDR             R1, [R0,#0x18]
LDR             R0, [SP,#0x50+var_44]
BIC             R0, R0, #1
BL              sub_120988
MOVS            R1, R0,LSR#31
NOP
BNE             loc_11C164
LDR             R3, [R5]
ADD             R2, SP, #0x50+var_30
LDM             R2, {R1,R12}
LDRD            R2, R3, [R3,#8]
SUBS            R1, R2, R1
SBCS            R1, R3, R12
BGE             loc_11C10C
ADD             R0, R9, #4
STR             R8, [SP,#0x50+var_50]
BL              sub_120CD8
MOVS            R0, R0,LSR#31
BNE             loc_11C164
LDR             R0, [R5]
LDR             R1, [R0,#0x40]
CMP             R1, #0
BNE             loc_11C148
LDRD            R0, R1, [R0,#0x10]
AND             R2, R1, #0xFF
AND             R1, R0, #0xFF
MOV             R0, #0x8000
BL              sub_12477C
LDR             R1, [R5]
CMP             R0, #0
STR             R0, [R1,#0x40]
BEQ             loc_11C164
STR             R8, [SP,#0x50+var_50]
LDR             R0, [R5]
MOV             R3, R11
MOV             R1, SP
LDR             R2, [R0,#0x40]
ADD             R0, R9, #4
BL              sub_10D8F4
LDR             R0, [SP,#0x50+var_44]
BICS            R0, R0, #1
BEQ             loc_11C18C
LDR             R0, [SP,#0x50+var_44]
TST             R0, #1
BLNE            sub_128434
LDR             R0, [SP,#0x50+var_44]
BIC             R0, R0, #1
BL              sub_10D89C
STR             R8, [SP,#0x50+var_44]
LDR             R0, [SP,#0x50+var_44]
BICS            R0, R0, #1
BEQ             loc_11C1B4
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
BIC             R0, R0, #1
STR             R0, [R7,#(dword_6D23D4 - 0x6D23B8)]
LDR             R0, [R7,#(dword_6D23C0 - 0x6D23B8)]
CMP             R0, #0
LDRNE           R0, [R10,#(dword_6EF0D8 - 0x6EF0D0)]
CMPNE           R0, #0
BLE             loc_11C218
LDR             R0, [R10,#(dword_6EF0D8 - 0x6EF0D0)]
SUB             R0, R0, #1
STR             R0, [R10,#(dword_6EF0D8 - 0x6EF0D0)]
LDR             R0, =0xF42400
MOV             R1, #0
BL              sub_121140
LDR             R0, [R7,#(dword_6D23CC - 0x6D23B8)]
CMP             R0, #0
BNE             loc_11BFC8
ADD             SP, SP, #0x2C ; ','
POP             {R4-R11,PC}

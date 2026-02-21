PUSH            {R4-R6,LR}
SUB             SP, SP, #0x10
MOV             R5, #1
MOV             R4, R0
STRB            R5, [R0,#0x77]
LDR             R0, [R0,#0x2C]
SVC             0x18
MOVS            R1, R0,LSR#31
BLNE            sub_12107C
LDR             R2, [R4,#0x6C]
MOV             R0, #0xFFFFFFFF
MOV             R1, R0
STMEA           SP, {R0-R2}
MOV             R3, #0
MOV             R2, #1
ADD             R1, SP, #0x20+var_18
ADD             R0, SP, #0x20+var_14
BL              sub_120250
MOVS            R1, R0,LSR#31
BLNE            sub_12107C
ADD             R0, R4, #0x6C ; 'l'
STRB            R5, [R4,#0x70]
BL              sub_1210EC
LDR             R0, [R4,#0x6C]
MOV             R5, #0
ADD             R6, R4, #0x6C ; 'l'
CMP             R0, #0
BEQ             loc_122E48
SVC             0x23 ; '#'
STR             R5, [R6]
MOV             R0, R4
BL              sub_13273C
NOP
NOP
BL              sub_129DB8
NOP
NOP
BL              sub_129D70
ADD             R0, R4, #0x58 ; 'X'
NOP
BL              sub_129A3C
STR             R5, [R4,#0x30]
STR             R5, [R4,#0x34]
STR             R5, [R4,#0x5C]
ADD             R0, R4, #0x38 ; '8'
STR             R5, [R4,#0x60]
BL              sub_121010
LDR             R0, [R4,#0x2C]
ADD             R6, R4, #0x2C ; ','
CMP             R0, #0
BEQ             loc_122EA4
SVC             0x23 ; '#'
STR             R5, [R6]
STR             R5, [R4,#0x10]
STR             R5, [R4,#0x14]
STR             R5, [R4,#0x18]
STR             R5, [R4,#0x1C]
STR             R5, [R4,#0x20]
STR             R5, [R4,#0x24]
MOV             R0, R4
STR             R5, [R4,#0x28]
BL              sub_1327BC
MOV             R0, #0xFFFFFFFF
STR             R0, [R4,#8]
ADD             SP, SP, #0x10
POP             {R4-R6,PC}

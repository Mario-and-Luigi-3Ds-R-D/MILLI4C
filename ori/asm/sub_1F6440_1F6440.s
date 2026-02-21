LDR             R0, [R0,#0xA8]
NOP
PUSH            {R4-R6,LR}
MOV             R5, R0
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#4]
CMP             R0, R1
BNE             loc_1F647C
LDR             R0, [R5,#0x34]
ORR             R0, R0, #4
STR             R0, [R5,#0x34]
POP             {R4-R6,PC}
LDRSB           R0, [R5,#0x32]
MOV             R4, #0
CMP             R0, #0
BLE             locret_1F6478
LDR             R2, [R5,R4,LSL#2]
CMP             R2, R1
BNE             loc_1F64E0
SUB             R0, R0, R4
SUB             R0, R0, #1
SXTH            R6, R0
CMP             R6, #1
BLT             loc_1F64D0
ADD             R0, R5, R4,LSL#2
MOV             R2, R6,LSL#2
ADD             R1, R0, #4
BL              sub_1103A4
ADD             R0, R5, R4
ADD             R1, R0, #0x29 ; ')'
ADD             R0, R0, #0x28 ; '('
MOV             R2, R6
BL              sub_1103A4
LDRB            R0, [R5,#0x32]
SUB             R0, R0, #1
STRB            R0, [R5,#0x32]
POP             {R4-R6,PC}
ADD             R4, R4, #1
CMP             R0, R4
BGT             loc_1F648C
POP             {R4-R6,PC}

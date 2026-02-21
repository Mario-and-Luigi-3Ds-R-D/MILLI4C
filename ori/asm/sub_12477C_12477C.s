MOV             R3, R2
MOV             R2, R1
MOV             R1, R0
LDR             R0, =dword_7017C4
B               loc_124794
DCD dword_7017C4
PUSH            {R3-R11,LR}
MOV             R8, R0
MOV             R0, #4
MOV             R9, R0,LSL R3
ADD             R0, R1, R9
SUB             R7, R9, #1
SUB             R0, R0, #1
BIC             R5, R0, R7
CMP             R5, #0
MOV             R11, R2
MOV             R10, #0
BLE             loc_124A14
LDR             R0, =dword_7097E0
STR             R0, [SP,#0x28+var_28]
BL              sub_13273C
LDR             R0, =byte_6D4158
MOV             R2, #0
MOV             R1, #0xFFFFFFF4
STRB            R2, [R0]
LDR             R0, [R8,#(dword_7017DC - 0x7017C4)]
LDR             R2, [R8,#(off_7017D8 - 0x7017C4)]
ADD             R0, R1, R0,LSL#4
LDR             R0, [R2,R0]
CMP             R0, #0
BNE             loc_124A00
LDR             R0, [R8,#(off_7017D8 - 0x7017C4)]
CMP             R5, #0x20000
MOV             R4, R0
BLT             loc_124818
CMP             R11, #3
LDRCS           R3, [R8,#(dword_7017DC - 0x7017C4)]
ADDCS           R1, R0, R3,LSL#4
BCS             loc_1248D4
LDR             R1, [R8,#(dword_7017DC - 0x7017C4)]
LDR             R2, [R4,#8]
CMP             R2, R5
BLT             loc_1248C0
LDM             R4, {R3,R12}
ADD             R3, R3, R12
ANDS            R6, R3, R7
SUBNE           R6, R9, R6
SUB             R2, R2, R6
CMP             R2, R5
BLT             loc_1248C0
MOV             R2, #0xFFFFFFF0
ADD             R2, R2, R1,LSL#4
ADD             R3, R4, #0x10
ADD             R2, R2, R0
CMP             R2, R3
BLS             loc_124878
ADD             R0, R0, R1,LSL#4
SUB             R2, R0, R4
SUB             R2, R2, #0x20 ; ' '
ADD             R0, R4, #0x20 ; ' '
MOV             R1, R3
BIC             R2, R2, #0xF
BL              sub_13F268
LDRD            R0, R1, [R4]
STR             R5, [R4,#0x14]
ADD             R2, R0, R1
ADD             R10, R2, R6
STR             R10, [R4,#0x10]
LDR             R12, [R4,#8]
ADD             R3, R10, R5
SUB             R2, R10, R2
ADD             R1, R1, R12
ADD             R0, R0, R1
SUB             R0, R0, R3
STR             R0, [R4,#0x18]
STRB            R11, [R4,#0x1C]
STR             R2, [R4,#8]
LDR             R0, [R8,#(dword_7017D4 - 0x7017C4)]
ADD             R0, R0, R5
STR             R0, [R8,#(dword_7017D4 - 0x7017C4)]
B               loc_1249B0
ADD             R4, R4, #0x10
ADD             R2, R0, R1,LSL#4
CMP             R2, R4
BNE             loc_12481C
B               loc_1249C8
LDR             R2, [R4,#4]
CMP             R2, #0
CMPNE           R1, R4
MOVNE           R2, R3,ASR#3
ADDNE           R4, R4, R2,LSL#4
BNE             loc_1248D4
CMP             R1, R4
BNE             loc_1248F8
SUB             R4, R4, #0x10
CMP             R0, R4
BCS             loc_12490C
LDR             R2, [R4,#4]
CMP             R2, #0
BEQ             loc_1248F4
LDR             R2, [R4,#8]
CMP             R2, R5
BLT             loc_1249BC
LDM             R4, {R6,R12}
ADD             R12, R12, R2
SUB             R12, R12, R5
ADD             R12, R12, R6
AND             R6, R12, R7
SUB             R2, R2, R6
CMP             R2, R5
BLT             loc_1249BC
MOV             R2, #0xFFFFFFF0
ADD             R2, R2, R3,LSL#4
ADD             R12, R4, #0x10
ADD             R0, R0, R2
CMP             R0, R12
BLS             loc_124968
SUB             R0, R1, R4
SUB             R2, R0, #0x20 ; ' '
ADD             R0, R4, #0x20 ; ' '
MOV             R1, R12
BIC             R2, R2, #0xF
BL              sub_13F268
LDM             R4, {R0-R2}
ADD             R2, R2, R1
SUB             R3, R2, R5
SUB             R3, R3, R6
ADD             R10, R3, R0
ADD             R1, R1, R0
ADD             R2, R2, R0
ADD             R3, R10, R5
SUB             R0, R10, R1
SUB             R1, R2, R3
STR             R10, [R4,#0x10]
STR             R1, [R4,#0x18]
STR             R5, [R4,#0x14]
STRB            R11, [R4,#0x1C]
STR             R0, [R4,#8]
LDR             R0, [R8,#(dword_7017D4 - 0x7017C4)]
ADD             R0, R0, R5
STR             R0, [R8,#(dword_7017D4 - 0x7017C4)]
CMP             R10, #0
BEQ             loc_1249E0
B               loc_1249F0
SUB             R4, R4, #0x10
CMP             R0, R4
BNE             loc_12490C
MOV             R0, #0xFFFFFFFF
BL              sub_12C9A4
CMP             R10, #0
NOP
BNE             loc_1249F0
B               loc_1249E8
MOV             R0, #0xFFFFFFFF
BL              sub_12C9A4
CMP             R0, #0
BNE             loc_1247F8
LDRD            R0, R1, [R8,#(dword_7017D0 - 0x7017C4)]
CMP             R0, R1
MOVLE           R0, R1
STR             R0, [R8,#(dword_7017D0 - 0x7017C4)]
LDR             R0, =byte_6D4158
MOV             R1, #1
STRB            R1, [R0]
LDR             R0, [SP,#0x28+var_28]
BL              sub_1327BC
MOV             R0, R10
POP             {R3-R11,PC}

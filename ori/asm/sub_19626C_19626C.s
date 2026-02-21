PUSH            {R4-R8,LR}
MOV             R4, R0
LDRB            R0, [R0,#0x374]
TST             R0, #2
BEQ             locret_1963B8
TST             R0, #0x10
BNE             locret_1963B8
ADD             R5, R4, #0x300
MOV             R8, #0
LDRSB           R0, [R5,#0x75]
CMP             R0, #0
BEQ             locret_1963B8
LDRB            R1, [R5,#0x79]
MOV             R7, #0x3C ; '<'
ADD             R0, R0, R1
SXTB            R0, R0
MOV             R6, R0
STRB            R0, [R4,#0x379]
BLE             loc_19633C
CMP             R0, #0x3C ; '<'
BLT             loc_1963BC
MOV             R1, R7
BL              sub_2FEFCC
SUB             R1, R0, R0,LSL#4
ADD             R1, R6, R1,LSL#2
STRB            R1, [R4,#0x379]
LDRB            R1, [R5,#0x77]
ADD             R0, R0, R1
SXTB            R0, R0
CMP             R0, #0x3C ; '<'
STRB            R0, [R4,#0x377]
BLT             loc_1963BC
ADD             R1, R0, R0,LSL#3
ADD             R1, R1, R0,LSL#7
MOV             R2, R1,ASR#13
SUB             R1, R2, R1,ASR#31
SUB             R2, R1, R1,LSL#4
ADD             R0, R0, R2,LSL#2
STRB            R0, [R4,#0x377]
LDRB            R0, [R5,#0x76]
ADD             R0, R0, R1
SXTB            R0, R0
CMP             R0, #0x64 ; 'd'
STRB            R0, [R4,#0x376]
BLT             loc_1963BC
MOV             R0, #0x63 ; 'c'
MOV             R1, #0x3B ; ';'
STRB            R0, [R4,#0x376]
STRB            R1, [R4,#0x377]
STRB            R0, [R4,#0x378]
STRB            R1, [R4,#0x379]
B               loc_1963B4
CMP             R0, #0
BGE             loc_1963BC
MOV             R1, #0xFFFFFFC4
BL              sub_2FEFCC
ADD             R0, R0, #1
RSB             R1, R0, R0,LSL#4
ADD             R1, R6, R1,LSL#2
STRB            R1, [R4,#0x379]
LDRB            R1, [R5,#0x77]
SUB             R0, R1, R0
SXTB            R0, R0
SUBS            R6, R0, #0
STRB            R0, [R4,#0x377]
BGE             loc_1963BC
MOV             R1, #0xFFFFFFC4
BL              sub_2FEFCC
ADD             R0, R0, #1
RSB             R1, R0, R0,LSL#4
ADD             R1, R6, R1,LSL#2
STRB            R1, [R4,#0x377]
LDRB            R1, [R5,#0x76]
SUB             R0, R1, R0
SXTB            R0, R0
CMP             R0, #0
STRB            R0, [R4,#0x376]
BGE             loc_1963BC
STRB            R8, [R4,#0x376]
STRB            R8, [R4,#0x377]
STRB            R8, [R4,#0x378]
STRB            R8, [R4,#0x379]
STRB            R8, [R4,#0x375]
POP             {R4-R8,PC}
LDRSB           R0, [R5,#0x79]
MOV             R1, #0x64 ; 'd'
SMULBB          R0, R0, R1
MOV             R1, R7
BL              sub_2FEFCC
STRB            R0, [R4,#0x378]
POP             {R4-R8,PC}

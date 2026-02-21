PUSH            {R4-R8,LR}
MOV             R4, R0
SUB             SP, SP, #8
LDR             R0, [R0,#0x5C]
MOV             R5, #0
CMP             R0, #0
LDRHI           R8, =0xFFFFF
MOVHI           R7, #8
BLS             loc_1EAAA4
LDR             R1, [R4,#0x58]
ADD             R2, R5, R5,LSL#1
LDR             R3, [R4,#0x60]
ADD             R0, R7, R2,LSL#2
LDR             R0, [R1,R0]
ADD             R12, R0, R0,LSL#1
SUB             R0, R0, #8
CMP             R0, #2
ADD             R6, R3, R12,LSL#5
BCS             loc_1EAA50
MOV             R1, #0x30000
MOV             R0, R6
BL              sub_21D090
NOP
NOP
B               loc_1EAA8C
ADD             R0, R1, R2,LSL#2
LDR             R1, [R0]
CMP             R1, R8
BEQ             loc_1EAA8C
LDR             R1, [R0,#4]
CMP             R1, #0x10000
BEQ             loc_1EAA78
CMP             R1, #0x20000
CMPNE           R1, #0x30000
BEQ             loc_1EAB18
MOV             R0, R6
BL              sub_1E4CE4
MOV             R0, R6
NOP
BL              sub_1E4D00
MOV             R0, R6
BL              sub_1E4C48
LDR             R0, [R4,#0x5C]
ADD             R5, R5, #1
CMP             R0, R5
BHI             loc_1EAA10
LDRH            R0, [R4,#0x6C]
MOV             R5, #0
CMP             R0, #0
BLE             loc_1EAAE4
LDR             R0, [R4,#0x68]
ADD             R1, R5, R5,LSL#1
ADD             R6, R0, R1,LSL#5
MOV             R0, R6
BL              sub_1E4CE4
MOV             R0, R6
NOP
BL              sub_1E4D00
LDRH            R0, [R4,#0x6C]
ADD             R5, R5, #1
CMP             R0, R5
BGT             loc_1EAAB4
LDR             R1, =dword_6E9820
MOV             R2, #0x30000
MOV             R0, SP
BL              sub_106C88
LDR             R1, =dword_6E9820
MOV             R2, #0x20000
MOV             R0, SP
BL              sub_106C88
LDR             R1, =off_67E344
LDM             R1, {R0,R1}
STRD            R0, R1, [R4,#0x4C]
ADD             SP, SP, #8
POP             {R4-R8,PC}
MOV             R0, R6
BL              sub_21D090
NOP
NOP
B               loc_1EAA8C

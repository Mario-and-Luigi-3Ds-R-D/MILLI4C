PUSH            {R0-R12,LR}
MOV             R6, R3
MOV             R10, R1
MOV             R11, R2
BL              sub_11A10C
CMP             R0, #0
BNE             loc_10F648
BL              sub_11A138
CMP             R0, #0
LDREQ           R0, =0xC8A0CC04
BEQ             loc_10F7DC
NOP
BL              sub_11A138
CMP             R0, #0
MOV             R4, #1
BEQ             loc_10F670
MOV             R0, #0
BL              sub_11AB4C
NOP
NOP
B               loc_10F6C4
NOP
BL              sub_11A10C
CMP             R0, #0
NOP
BEQ             loc_10F6C4
LDR             R5, =unk_6D2448
STRB            R4, [R5,#(byte_6D2449 - 0x6D2448)]
BL              sub_119F64
NOP
NOP
BL              sub_13DF78
CMP             R0, #0
NOP
BEQ             loc_10F6B0
BL              sub_12157C
STRB            R4, [R5,#(byte_6D244C - 0x6D2448)]
MOV             R0, #0
BL              sub_11AB4C
NOP
NOP
BL              sub_123ADC
NOP
BL              sub_11A128
MOVS            R5, R0
MOVNE           R0, #1
BLNE            sub_10F284
LDR             R7, =0xC8A0CFF0
LDR             R8, =0xE0A0CC08
LDR             R9, =0xC8A0CC02
NOP
BL              sub_1233A8
LDR             R0, [SP,#0x38+var_38]
MOV             R3, R6
MOV             R2, R11
MOV             R1, R10
BL              sub_11B558
MOV             R4, R0
NOP
BL              sub_123520
CMP             R4, R7
MOV             R0, R4
CMPNE           R0, R8
CMPNE           R4, R9
BEQ             loc_10F744
CMP             R5, #0
BEQ             loc_10F770
BL              sub_11A128
CMP             R0, #0
MOVEQ           R0, #1
BLEQ            sub_10F264
NOP
NOP
B               loc_10F784
LDR             R12, =0xF4240
MOV             R1, #0xA
MOV             R3, #0
MOV             R2, R1,ASR#31
UMULL           R0, R4, R1, R12
MLA             R2, R2, R12, R4
MLA             R1, R1, R3, R2
BL              sub_121140
NOP
NOP
B               loc_10F6E4
NOP
BL              sub_11A128
CMP             R0, #0
MOVNE           R0, #1
BLNE            sub_10F284
MOV             R0, R4
MOV             R1, PC
MOVS            R2, R4,LSR#31
BLNE            sub_10E1F8
NOP
NOP
BL              sub_11AB38
NOP
NOP
BL              sub_11A10C
CMP             R0, #0
NOP
BEQ             loc_10F7C4
LDR             R0, [SP,#0x38+var_38]
BL              sub_11B2BC
MOV             R4, R0
NOP
BL              sub_11A138
CMP             R0, #0
NOP
SVCNE           3
MOV             R0, R4
ADD             SP, SP, #0x10
POP             {R4-R12,PC}

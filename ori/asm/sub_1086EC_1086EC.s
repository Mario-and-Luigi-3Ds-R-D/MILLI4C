CMP             R0, #0
PUSH            {R4,LR}
SUB             SP, SP, #0x18
MOVNE           R0, #0
BLNE            sub_10F264
BL              sub_1233A8
BL              sub_10F2BC
BL              sub_10FC24
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_1215E4
BL              sub_123520
BL              sub_11A10C
CMP             R0, #0
BEQ             loc_10878C
BL              sub_10F2BC
TST             R0, #0x20
BNE             loc_10878C
MOV             R0, #0x62 ; 'b'
BL              sub_11A168
BL              sub_10F830
LDR             R12, =dword_6D2458
MOV             R3, #0
ADD             R1, SP, #0x20+var_18
LDM             R12, {R2,R12}
STR             R3, [SP,#0x20+var_20]
ADD             R3, SP, #0x20+var_10
STM             R1, {R2,R12}
MOV             R1, R0
MOV             R2, #0x1000
ADD             R0, SP, #0x20+var_1C
BL              sub_11AD40
MOV             R4, R0
LDR             R0, [SP,#0x20+var_1C]
BL              sub_10F9CC
LDR             R0, [SP,#0x20+var_10]
BL              sub_10F7FC
BL              sub_10F81C
MOV             R0, R4
BL              sub_10F83C
ADD             SP, SP, #0x18
POP             {R4,PC}

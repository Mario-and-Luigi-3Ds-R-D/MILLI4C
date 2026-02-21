PUSH            {R4-R7,LR}
MOV             R6, R1
MOV             R7, R0
LDR             R0, =unk_6D2448
SUB             SP, SP, #0xC
MOV             R4, R2
LDRB            R1, [R0,#(byte_6D244A - 0x6D2448)]
CMP             R1, #0
LDRNE           R0, =0xE0A0CFF9
BNE             loc_1085DC
MOV             R1, #1
STRB            R1, [R0,#(byte_6D244A - 0x6D2448)]
BL              sub_10FC5C
MOV             R5, #0
ADD             R3, SP, #0x20+var_1C
ADD             R2, SP, #0x20+var_18
MOV             R1, R6
MOV             R0, SP
STR             R5, [SP,#0x20+var_20]
BL              sub_10FB38
MOV             R6, R0
ANDS            R0, R0, #0x80000000
BPL             loc_1085E4
BL              sub_10F53C
MOV             R0, R6
ADD             SP, SP, #0xC
POP             {R4-R7,PC}
LDR             R0, [SP,#0x20+var_20]
BL              sub_10F588
ADD             R1, SP, #0x20+var_1C
LDM             R1, {R0,R6}
AND             R0, R0, #1
BL              sub_11B1E4
LDR             R0, [SP,#0x20+var_1C]
AND             R0, R0, #2
MOV             R0, R0,LSR#1
BL              sub_11B1F4
NOP
NOP
BL              sub_10F53C
MOV             R0, R7
NOP
BL              sub_10F52C
MOV             R0, R6
NOP
BL              sub_10F2EC
NOP
NOP
BL              sub_10F2CC
CMP             R0, #0
NOP
BNE             loc_1086C8
BL              sub_1233A8
NOP
NOP
BL              sub_11B5F0
STR             R5, [SP,#0x20+var_20]
STR             R5, [SP,#0x20+var_1C]
BL              sub_10F2BC
MOV             R5, R0
NOP
BL              sub_123148
MOV             R3, SP
ADD             R2, SP, #0x20+var_1C
MOV             R1, R5
BL              sub_10FAE8
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_1215E4
NOP
NOP
BL              sub_10F344
LDMFD           SP, {R1,R2}
MOV             R0, R4
BL              sub_10F84C
NOP
NOP
BL              sub_123520
NOP
NOP
BL              sub_11A10C
CMP             R0, #0
NOP
BLEQ            sub_10F210
ADD             SP, SP, #0xC
MOV             R0, #0
POP             {R4-R7,PC}

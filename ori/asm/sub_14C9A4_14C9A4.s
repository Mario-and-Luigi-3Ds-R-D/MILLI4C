PUSH            {R4,R5,LR}
MOV             R4, R0
LDR             R0, [R0,#0x20]
SUB             SP, SP, #0xC
MOV             R5, #0
CMP             R0, #0
STREQ           R5, [R4,#0xEC]
BEQ             loc_14CA0C
CMP             R1, #0
BEQ             loc_14C9FC
LDR             R0, [R4,#0xEC]
TST             R0, #0xFF00
BEQ             loc_14C9FC
MOV             R2, #0
MOV             R1, SP
MOV             R0, R4
BL              sub_5C4198
LDR             R0, [R4]
MOV             R1, SP
LDR             R2, [R0,#0x20]
MOV             R0, R4
BLX             R2
ADD             R0, R4, #0x14
BL              sub_528B1C
STR             R5, [R4,#0xE8]
STR             R5, [R4,#0xEC]
ADD             SP, SP, #0xC
POP             {R4,R5,PC}

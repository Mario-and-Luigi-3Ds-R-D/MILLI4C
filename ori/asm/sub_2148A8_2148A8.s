PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#0xC]
LDR             R1, =off_6B2AA0
MOV             R6, #0
CMP             R0, #0
STR             R1, [R4]
BEQ             loc_2148F0
LDR             R1, =loc_19D698
MOV             R2, #1
STRB            R2, [R0,R1]
LDR             R0, [R4,#0xC]
CMP             R0, #0
BEQ             loc_2148F0
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R6, [R4,#0xC]
LDR             R0, =dword_6E2378
LDRB            R0, [R0,#(byte_6E238B - 0x6E2378)]
CMP             R0, #1
BEQ             loc_214918
LDR             R5, =dword_6EDAE8
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_214918
BL              sub_461D5C
STR             R6, [R5]
ADD             R0, R4, #0x14
BL              sub_2A26E4
SUB             R4, R0, #0x14
LDR             R0, =off_6B3DD8
STR             R0, [R4]
MOV             R0, R4
BL              sub_29F4FC
LDR             R0, =off_6B7B40
STR             R0, [R4]
MOV             R0, R4
BL              sub_4A2244
MOV             R0, R4
POP             {R4-R6,PC}

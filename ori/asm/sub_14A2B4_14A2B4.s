PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, =off_6BB354
STR             R0, [R4]
LDR             R0, =dword_64E930
LDR             R1, [R4,#0x10]
CMP             R1, #0
LDREQ           R1, [R0,#(dword_64E940 - 0x64E930)]
LDREQ           R0, [R0,#(off_64E944 - 0x64E930)]
LDRNE           R1, [R0,#0x18]
LDRNE           R0, [R0,#0x1C]
CMP             R1, #0
BNE             loc_14A2F8
TST             R0, #1
BEQ             loc_14A300
CMP             R0, #0
BEQ             loc_14A300
LDR             R0, [R4,#0x10]
BL              sub_5663D8
ADD             R4, R4, #0x10
ADD             R1, R4, #4
LDR             R0, [R4,#8]
CMP             R0, R1
BNE             loc_14A32C
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_14A32C
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDR             R1, [R4,#4]
LDR             R0, [R4,#8]
SUB             R4, R4, #0xC
STR             R0, [R1,#4]
STR             R1, [R0]
LDR             R0, [R4,#8]
ADD             R1, R4, #4
CMP             R0, R1
BNE             loc_14A36C
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_14A36C
BL              sub_547BD4
NOP
NOP
BL              sub_300FD4
LDR             R1, [R4,#4]
LDR             R0, [R4,#8]
STR             R0, [R1,#4]
STR             R1, [R0]
SUB             R0, R4, #4
POP             {R4,PC}

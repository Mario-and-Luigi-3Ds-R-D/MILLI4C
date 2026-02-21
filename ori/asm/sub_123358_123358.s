PUSH            {R4,LR}
LDR             R4, =unk_6D2448
CMP             R0, #0
BEQ             loc_123380
LDRB            R0, [R4,#(byte_6D244C - 0x6D2448)]
CMP             R0, #0
BEQ             locret_1233A0
BL              sub_1286F8
MOV             R0, #0
B               loc_12339C
NOP
BL              sub_13DF78
CMP             R0, #0
NOP
BEQ             locret_1233A0
BL              sub_12157C
MOV             R0, #1
STRB            R0, [R4,#(byte_6D244C - 0x6D2448)]
POP             {R4,PC}

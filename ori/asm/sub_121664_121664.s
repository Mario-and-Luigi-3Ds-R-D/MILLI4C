PUSH            {R4-R8,LR}
MOV             R5, R0
LDR             R0, [SP,#0x18+arg_0]
STR             R1, [R5]
MOV             R1, #4
AND             R0, R0, #0xFF
STR             R0, [R5,#0x20]
ADD             R0, R5, #0xC
STRD            R2, R3, [R5,#0x18]
BL              sub_1289A0
LDR             R4, =byte_6E1284
LDRB            R0, [R4]
CMP             R0, #0
BNE             loc_1216B0
LDR             R0, =unk_711E04
MOV             R1, #4
BL              sub_1289A0
MOV             R0, #1
STRB            R0, [R4]
LDR             R6, =unk_711E04
MOV             R4, #0
MOV             R7, R6
MOV             R1, R4
MOV             R0, R7
BL              sub_132CFC
MOVS            R4, R0
NOP
BEQ             loc_121708
LDR             R1, [R4,#0x18]
MOV             R0, R5
CMP             R1, R5
BHI             loc_1216BC
LDR             R1, [R4,#0x1C]
CMP             R5, R1
BCS             loc_1216BC
MOV             R1, R0
ADD             R0, R4, #0xC
BL              sub_1288E0
CMP             R0, #0
MOVEQ           R0, R4
ADD             R6, R0, #0xC
MOV             R0, R6
MOV             R1, R5
POP             {R4-R8,LR}
B               sub_128938

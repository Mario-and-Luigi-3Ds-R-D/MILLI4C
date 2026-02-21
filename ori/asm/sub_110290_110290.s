PUSH            {R3-R5,LR}
MOV             R4, R0
LDRB            R0, [R0,#0x195]
MOV             R5, R1
CMP             R0, #1
BLEQ            sub_11DCAC
LDRB            R0, [R4,#0x195]
MOV             R12, #0
MOV             R2, R5
MOV             R3, R12
ADD             R0, R0, R0,LSL#1
ADD             R0, R4, R0,LSL#3
ADD             R0, R0, #0x14C
LDRB            R1, [R0,#4]
ADD             R0, R0, R1,LSL#2
MOV             R1, #0x500
LDR             R0, [R0,#8]
STR             R12, [SP,#0x10+var_10]
BL              sub_11F304
LDRB            R2, [R4,#0x195]
LDRB            R3, [R4,#0x196]
MOV             R0, #1
MOV             R1, #0xFF
ORR             R0, R3, R0,LSL R2
STRB            R0, [R4,#0x196]
STRB            R1, [R4,#0x195]
POP             {R3-R5,PC}

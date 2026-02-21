LDR             R1, =unk_6D2448
CMP             R0, #0
PUSH            {R4,LR}
BEQ             loc_11AB78
MOV             R0, #1
STRB            R0, [R1,#(byte_6D244B - 0x6D2448)]
BL              sub_122AFC
MOV             R1, PC
MOVS            R2, R0,LSR#31
BNE             loc_11ABB0
POP             {R4,PC}
LDRB            R0, [R1,#(byte_6D244B - 0x6D2448)]
CMP             R0, #0
BEQ             locret_11AB74
MOV             R0, #0
STRB            R0, [R1,#(byte_6D244B - 0x6D2448)]
BL              sub_122BA0
LDR             R1, =0xD8A02A05
CMP             R0, R1
LDRNE           R1, =0xD9001BF7
CMPNE           R0, R1
BEQ             locret_11AB74
MOV             R1, PC
MOVS            R2, R0,LSR#31
BEQ             locret_11AB74
POP             {R4,LR}
B               sub_1215E4

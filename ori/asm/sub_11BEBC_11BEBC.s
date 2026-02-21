LDR             R3, =byte_6D23B8
PUSH            {R4-R9}
LDR             R12, [R3,#(dword_6D23DC - 0x6D23B8)]
ADD             R3, R12, #0x4900
ADD             R12, R12, #0x9200
LDR             R4, [R3]
CMP             R4, #0
BEQ             loc_11BEFC
LDR             R4, [R3,#0x20]
CMP             R4, R0
BNE             loc_11BEFC
LDR             R4, [R3,#0x24]
CMP             R4, R1
LDREQ           R4, [R3,#0x28]
CMPEQ           R4, R2
BEQ             loc_11BF60
LDR             R4, =0x46B8
LDR             R6, =0xE070381D
MOV             R5, #0
ADD             R3, R3, #0x248
MOV             R9, #0
SMLAL           R5, R4, R6, R4
MOV             R5, #1
MOV             R7, R4
MOV             R4, R4,ASR#9
SUB             R4, R4, R7,ASR#31
ADD             R4, R4, #1
CMP             R4, #1
SUBGT           R4, R12, R3
BLE             loc_11BF94
LDR             R12, [R3]
CMP             R12, #0
BEQ             loc_11BF6C
LDR             R12, [R3,#0x20]
CMP             R12, R0
BNE             loc_11BF6C
LDR             R12, [R3,#0x24]
CMP             R12, R1
LDREQ           R12, [R3,#0x28]
CMPEQ           R12, R2
BNE             loc_11BF6C
POP             {R4-R9}
MOV             R0, #1
BX              LR
MOV             R12, R9
MOV             R7, R4
SMLAL           R12, R7, R6, R4
ADD             R5, R5, #1
ADD             R3, R3, #0x248
MOV             R12, R7,ASR#9
SUB             R12, R12, R7,ASR#31
ADD             R12, R12, #1
CMP             R12, R5
BGT             loc_11BF34
POP             {R4-R9}
MOV             R0, #0
BX              LR

PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0]
LDR             R1, =0x554E4643
CMP             R0, R1
BEQ             loc_10F190
MOV             R3, #2
MOV             R2, #0x3000000
ADD             R1, R1, #0xFF000000
MOV             R0, R4
BL              sub_119D70
CMP             R0, #0
BEQ             locret_10F1CC
LDRH            R2, [R4,#0x10]
LDRH            R0, [R4,#6]
MOV             R1, #0
CMP             R2, #0
LDRGT           R3, =0x504C4754
ADD             R0, R0, R4
BLE             loc_10F1E4
LDR             R12, [R0]
CMP             R12, R3
BNE             loc_10F1D0
ADDS            R0, R0, #8
BEQ             loc_10F1E4
LDRH            R0, [R0,#8]
ADD             R0, R0, R0,LSL#2
MOV             R0, R0,LSL#2
POP             {R4,PC}
LDR             R12, [R0,#4]
ADD             R1, R1, #1
CMP             R2, R1
ADD             R0, R0, R12
BGT             loc_10F1AC
MOV             R0, #0
POP             {R4,PC}

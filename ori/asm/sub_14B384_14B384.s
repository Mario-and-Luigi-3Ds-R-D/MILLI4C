PUSH            {R4-R8,LR}
MOV             R6, R1
MOV             R5, R0
BL              sub_528B1C
LDR             R0, [R5]
LDR             R1, [R0,#0x50]
MOV             R0, R5
BLX             R1
MOVS            R4, R0
BLNE            sub_4FD1D8
LDR             R7, =off_6CE970
CMP             R6, #0
MOV             R8, #1
BEQ             loc_14B408
CMP             R6, #1
BNE             locret_14B404
LDR             R0, =0x10642C
LDR             R1, [R7]
ADD             R0, R0, R1; loc_10642C
MOV             R1, R5
BL              sub_1CF9FC
CMP             R4, #0
BEQ             locret_14B404
LDR             R0, [R7]
LDR             R2, =0x121134
LDR             R1, [R4,#0x58]
ADD             R0, R0, R2; loc_121134
LDR             R0, [R0,#(loc_121144 - 0x121134)]
BL              sub_4CBA04
LDR             R1, =byte_19D695
LDR             R0, [R7]
STRB            R8, [R0,R1]; byte_19D695
POP             {R4-R8,PC}
LDR             R0, =0x10641C
LDR             R2, [R7]
MOV             R1, R5
ADD             R0, R0, R2; loc_10641C
BL              sub_1CF9FC
CMP             R4, #0
NOP
BEQ             locret_14B404
LDR             R0, [R7]
LDR             R2, =0x1210AC
LDR             R1, [R4,#0x58]
ADD             R0, R0, R2; loc_1210AC
LDR             R0, [R0,#(loc_1210BC - 0x1210AC)]
BL              sub_4CBA04
LDR             R1, =byte_19D694
LDR             R0, [R7]
STRB            R8, [R0,R1]; byte_19D694
POP             {R4-R8,PC}

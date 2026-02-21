PUSH            {R3-R7,LR}
MOV             R4, R0
BL              sub_1D1AC0
LDR             R1, =0xB013
MOV             R0, R4
BL              sub_52FACC
MOV             R5, R0
LDR             R0, [R0]
LDR             R1, [R0,#0x10]
MOV             R0, R5
BLX             R1
CMP             R0, #0
BEQ             locret_1D6EB0
MOV             R0, R4
BL              sub_5EE764
CMP             R0, #0
BNE             locret_1D6EB0
MOV             R0, R5
LDR             R0, [R0,#0x9C]
MOV             R6, R0
MOV             R0, R5
LDR             R0, [R0,#0x74]
LDR             R2, =off_19DFF8
MOV             R1, R0; int
LDR             R3, =0x1210AC
LDR             R0, =0x10C7B8
ADD             R2, R2, R4
STR             R2, [SP,#0x18+var_18]; float
ADD             R3, R3, R4; int
MOV             R2, R6; int
ADD             R0, R0, R4; int
BL              sub_4FC970
LDR             R2, =byte_19D694
MOV             R1, #1
CMP             R0, #0
STRB            R1, [R4,R2]
BEQ             locret_1D6EB0
LDR             R1, =unk_653FC0
ADD             R2, R4, #0x1A0000
LDRD            R0, R1, [R1,#(off_65402C - 0x653FC0)]
STRD            R0, R1, [R2,#0x5C]
POP             {R3-R7,PC}

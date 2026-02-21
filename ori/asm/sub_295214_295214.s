PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R5, [R0,#4]
LDR             R0, [R5,#0x4C]
BL              sub_5CDB04
CMP             R0, #0
BEQ             loc_295248
ADD             R5, R5, #0x12800
ADD             R5, R5, #4
LDR             R0, [R5]
BL              sub_5CDA90
CMP             R0, #0
BEQ             loc_295258
LDR             R0, [R4,#4]
MOV             R1, #0xFFFFFFFF
LDR             R0, [R0,#0x4C]
BL              sub_2877D4
LDR             R5, [R4,#4]
LDR             R0, [R5,#0x4C]
BL              sub_5CDB04
CMP             R0, #0
NOP
BEQ             loc_29528C
ADD             R5, R5, #0x12800
ADD             R5, R5, #4
LDR             R0, [R5]
BL              sub_5CDA90
CMP             R0, #0
NOP
BEQ             loc_2952A4
LDR             R0, [R4,#4]
LDR             R1, =0x12C10
LDRB            R1, [R1,R0]
CMP             R1, #0
LDREQ           R0, [R0,#0x40]
BLEQ            sub_281A90
LDR             R0, [R4,#8]
BL              sub_296888
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x30]
BL              sub_28906C
MOV             R0, #3
STRB            R0, [R4,#0x20]
POP             {R4-R6,PC}

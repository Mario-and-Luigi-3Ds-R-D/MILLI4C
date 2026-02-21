PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R5, =off_6D1648
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
BL              sub_19A0F0
TST             R0, #0x40
BNE             locret_220FE8
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x3D40
LDR             R0, [R0]
TST             R0, #1
BNE             locret_220FE8
LDR             R0, [R4,#0x28]
TST             R0, #1
BEQ             loc_220FB4
LDR             R0, [R4,#4]
MOV             R1, #2
LDR             R2, [R0,#0xB10]
MOV             R2, R2,LSL#2
CMP             R1, R2,LSR#30
MOVEQ           R1, #1
BLEQ            sub_509288
LDR             R1, [R4,#4]
MOV             R0, #3
LDR             R1, [R1,#0xB10]
MOV             R1, R1,LSL#2
CMP             R0, R1,LSR#30
BNE             loc_220FA8
MOV             R2, #1
MOV             R1, #0
MOV             R0, R4
BL              sub_220974
LDR             R0, [R4,#0x28]
BIC             R0, R0, #1
STR             R0, [R4,#0x28]
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x19C]
CMP             R0, R4
MOVEQ           R0, R4
BLEQ            sub_2CF4BC
LDR             R0, [R4,#4]
LDR             R1, [R0,#0xB10]
BIC             R1, R1, #8
STR             R1, [R0,#0xB10]
LDR             R1, [R4,#4]
MOV             R0, #0xF
ADD             R1, R1, #0x700
STRH            R0, [R1,#0x1C]
POP             {R4-R6,PC}

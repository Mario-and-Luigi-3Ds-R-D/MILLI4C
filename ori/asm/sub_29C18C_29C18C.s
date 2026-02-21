RSB             R2, R1, R1,LSL#5
ADD             R2, R2, R1,LSL#6
PUSH            {R3,LR}
ADD             R0, R0, R2,LSL#2
MOV             R1, #4
LDR             R0, [R0,#0xB0]
LDR             R2, [R0,#0x188]
BICS            R1, R1, R2
BNE             locret_29C1E8
LDR             R1, [R0,#0x164]
LDR             R0, [R1]
LDR             R2, [R0,#0x24]
CMP             R2, #0
LDRGT           R0, [R0,#0x10]
LDRGT           R0, [R0]
MOVLE           R0, #0
ADD             R0, R0, #0x24 ; '$'
STR             R0, [SP,#8+var_8]
LDR             R0, [R1]
LDR             R0, [R0,#8]
ADD             R1, R0, #0x74 ; 't'
MOV             R0, SP
BL              sub_4BE9C4
POP             {R3,PC}

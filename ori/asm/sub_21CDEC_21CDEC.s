PUSH            {R4-R6,LR}
SUB             SP, SP, #0x60
ADD             R4, SP, #0x70+var_18
STRD            R0, R1, [SP,#0x70+var_60]
ADD             R0, SP, #0x70+var_60
BL              sub_5E0788
MOV             R6, R0
ADD             R0, SP, #0x70+var_60
BL              sub_5E0838
MOV             R5, R0
ADD             R0, SP, #0x70+var_60
BL              sub_5E07E0
MOV             R1, R0
MOV             R0, #0
STR             R0, [SP,#0x70+var_70]
STR             R0, [SP,#0x70+var_6C]
STR             R0, [SP,#0x70+var_68]
STR             R0, [SP,#0x70+var_64]
MOV             R3, R6
MOV             R2, R5
MOV             R0, R4
BL              sub_119730
MOV             R1, #0x18
LDRD            R2, R3, [SP,#0x70+var_18]
ADD             R0, SP, #0x70+var_58
BL              sub_45F450
LDRH            R1, [SP,#0x70+var_58]
LDRH            R3, [SP,#0x70+var_56]
ADD             R0, SP, #0x70+var_58
MOV             R2, #0
MOV             R12, #0xB
LDRH            R4, [R0,#4]!
ADD             R1, R1, R3
LDRH            R3, [R0,#2]
SUBS            R12, R12, #1
ADD             R2, R2, R4
BNE             loc_21CE68
LDRH            R3, [SP,#0x70+var_2A]
ADD             R0, R1, R2
LDR             R1, =0x1869F
ADD             R0, R0, R3
ADD             SP, SP, #0x60 ; '`'
CMP             R0, R1
MOVHI           R0, R1
POP             {R4-R6,PC}

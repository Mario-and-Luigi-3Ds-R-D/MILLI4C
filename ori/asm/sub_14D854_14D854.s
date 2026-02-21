LDR             R1, [R0,#0x3E0]
CMP             R1, #0
BXEQ            LR
PUSH            {R4,R5,LR}
MOV             R4, R0
VPUSH           {D8-D9}
SUB             SP, SP, #4
BLX             R1
CMN             R0, #1
BEQ             loc_14D950
LDR             R1, [R4,#0x3B4]
ADD             R0, R4, R0,LSL#2
ADD             R5, R0, #0x300
CMP             R1, #0
ADD             R5, R5, #0xBA
BEQ             loc_14D8DC
LDRH            R2, [R5]
ADD             R0, R4, #0x300
CMP             R2, #0
BEQ             loc_14D8C8
LDRH            R1, [R1,#0x10]
CMP             R1, R2
BNE             loc_14D8DC
LDRH            R0, [R0,#0xA4]
LDRB            R1, [R5,#2]
AND             R0, R0, #0xFF
CMP             R0, R1
BNE             loc_14D8DC
B               loc_14D948
LDRH            R0, [R0,#0xA4]
LDRB            R1, [R5,#2]
AND             R0, R0, #0xFF
CMP             R0, R1
BEQ             loc_14D948
LDR             R0, [R4,#0x3AC]
LDRH            R1, [R5]
ADD             R0, R0, #0x10
CMP             R1, #0
VLDM            R0, {S16-S19}
BEQ             loc_14D918
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_52FACC
LDR             R2, [R4]
MOV             R1, R0
MOV             R0, R4
LDR             R3, [R2,#0x58]
MOV             R2, #0
BLX             R3
LDRB            R1, [R5,#2]
MOV             R2, #0
MOV             R0, R4
MOV             R3, #0x100
STR             R2, [SP,#0x20+var_20]
BL              sub_14CA2C
LDR             R0, [R4,#0x3AC]
ADD             R1, R0, #0x14
VSTR            S16, [R0,#0x10]
VSTM            R1, {S17-S18}
LDR             R0, [R4,#0x3AC]
VSTR            S19, [R0,#0x1C]
LDRB            R0, [R5,#3]
STRB            R0, [R4,#0xF3]
ADD             SP, SP, #4
VPOP            {D8-D9}
POP             {R4,R5,PC}

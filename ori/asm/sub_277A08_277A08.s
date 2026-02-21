PUSH            {R4-R9,LR}
MOV             R4, R0
MOV             R7, #0
VPUSH           {D8-D9}
SUB             SP, SP, #0x2C
LDRB            R0, [R0,#0xE]
CMP             R0, #0
BEQ             loc_277A3C
LDR             R0, [R4]
LDR             R1, [R0,#0x10]
MOV             R0, R4
BLX             R1
STRB            R7, [R4,#0xE]
LDRB            R0, [R4,#0x44]
LDR             R9, =0xFFE683CC
LDR             R8, =off_6CE970
VLDR            S17, =1.0
CMP             R0, #1
MOV             R5, #1
BEQ             loc_277A80
CMP             R0, #2
BEQ             loc_277C1C
CMP             R0, #3
BEQ             loc_277D0C
CMP             R0, #4
BNE             loc_277C10
LDRB            R0, [R4,#0xF]
CMP             R0, #0
BNE             loc_277D94
B               loc_277D74
LDRB            R0, [R4,#0xF]
CMP             R0, #0
BNE             loc_277A9C
LDR             R0, [R4,#0x20]
BL              sub_5C5820
CMP             R0, #0
STRBEQ          R5, [R4,#0xF]
LDRB            R0, [R4,#0x10]
CMP             R0, #0
BNE             loc_277AD4
LDR             R0, [R4,#0x1C]
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             loc_277AD4
LDRB            R1, [R4,#0x19]
LDR             R0, [R4,#0x1C]
MOV             R3, #0x100
MOV             R2, #0
BL              sub_14C548
STRB            R5, [R4,#0x10]
LDRB            R0, [R4,#0xF]
CMP             R0, #0
LDRBNE          R0, [R4,#0x10]
CMPNE           R0, #0
BEQ             loc_277C10
MOV             R0, #2
STRB            R0, [R4,#0x44]
LDR             R0, [R4,#0x1C]
VLDR            S16, =0.0
ADD             R2, SP, #0x58+var_54
MOV             R1, #0
VLDR            S0, [R0,#0x24]
VLDR            S2, [R0,#0x28]
VLDR            S1, [R0,#0x2C]
ADD             R0, R4, #0x28 ; '('
VLDM            R0, {S3-S5}
VADD.F32        S0, S0, S3
VADD.F32        S1, S1, S5
VADD.F32        S18, S2, S4
VSTR            S0, [SP,#0x58+var_54]
VSTR            S16, [SP,#0x58+var_50]
VSTR            S1, [SP,#0x58+var_4C]
LDR             R0, [R4,#0x1C]
VLDR            S0, [R4,#0x34]
ADD             R0, R0, #0x1DC
BL              sub_5A2074
LDR             R0, [R4,#0x1C]
ADD             R2, SP, #0x58+var_38
MOV             R1, #1
VLDR            S0, [R0,#0x28]
VSTM            R2, {S16-S17}
VSUB.F32        S0, S18, S0
VSTR            S16, [SP,#0x58+var_30]
LDR             R0, [R4,#0x1C]
VLDR            S1, [R4,#0x34]
ADD             R0, R0, #0x1DC
VMOV.F32        S2, S0
BL              sub_5A28C4
LDRB            R1, [R4,#0x1A]
LDR             R0, [R4,#0x1C]
MOV             R3, #0x100
MOV             R2, #0
BL              sub_14C548
LDRB            R0, [R4,#0x24]
MOV             R3, #0x100
MOV             R2, #1
CMP             R0, #1
LDR             R0, [R4,#0x20]
MOVEQ           R1, #4
MOVNE           R1, #5
BL              sub_14C548
STRB            R7, [R4,#0xF]
STRB            R7, [SP,#0x58+var_48]
STRH            R7, [SP,#0x58+var_44]
STRH            R7, [SP,#0x58+var_40]
STRH            R7, [SP,#0x58+var_3C]
STRH            R7, [SP,#0x58+var_46]
STRH            R7, [SP,#0x58+var_42]
STRH            R7, [SP,#0x58+var_3E]
STRH            R7, [SP,#0x58+var_3A]
LDR             R0, [R4,#0x1C]
LDR             R1, [R0]
LDR             R1, [R1,#0x54]
BLX             R1
LDR             R0, [R0,#0x9C]
MOV             R1, R0
ADD             R0, SP, #0x58+var_48
BL              sub_146444
LDRB            R1, [R0]
LDR             R0, [R4,#0x1C]
STRB            R1, [R0,#0xF6]
LDR             R2, [R4,#0x3C]
CMN             R2, #1
BEQ             loc_277C10
LDR             R0, [R8]
MOV             R3, #0
MOV             R1, #0x1000
SUB             R0, R0, R9
BL              sub_503808
ADD             SP, SP, #0x2C ; ','
VPOP            {D8-D9}
POP             {R4-R9,PC}
LDRB            R0, [R4,#0xF]
CMP             R0, #0
BNE             loc_277C60
LDR             R0, [R4,#0x20]
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             loc_277C60
LDRB            R0, [R4,#0x24]
MOV             R3, #0x100
MOV             R2, #0
CMP             R0, #1
LDR             R0, [R4,#0x20]
MOVNE           R1, #9
MOVEQ           R1, #8
BL              sub_14C548
STRB            R5, [R4,#0xF]
LDR             R0, [R4,#0x1C]
ADD             R0, R0, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
NOP
BEQ             loc_277C9C
LDR             R0, [R4,#0x1C]
LDR             R0, [R0,#0x204]
ADD             R0, R0, #0xC
VLDM            R0, {S0-S1}
VDIV.F32        S2, S0, S1
VSTR            S2, [R4,#0x14]
ADD             SP, SP, #0x2C ; ','
VPOP            {D8-D9}
POP             {R4-R9,PC}
MOV             R0, #3
VSTR            S17, [R4,#0x14]
STRB            R0, [R4,#0x44]
LDR             R6, [R8]
LDR             R5, [R4,#0x1C]
BL              sub_4635D8
MOV             R3, R0
MOV             R2, R5
MOV             R1, #0x130
MOV             R0, R6
STR             R7, [SP,#0x58+var_58]
BL              sub_52AE88
LDR             R0, [R4,#0x1C]
STRB            R7, [R0,#0xF2]
LDR             R0, [R4,#0x38]
LDR             R0, [R0]
BL              sub_533330
LDR             R2, [R4,#0x40]
CMN             R2, #1
BEQ             loc_277C10
LDR             R0, [R8]
ADD             SP, SP, #0x2C ; ','
MOV             R3, #0
VPOP            {D8-D9}
SUB             R0, R0, R9
MOV             R1, #0x1000
POP             {R4-R9,LR}
B               sub_503808
LDRB            R0, [R4,#0xF]
CMP             R0, #0
BNE             loc_277D50
LDR             R0, [R4,#0x20]
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             loc_277D50
LDRB            R0, [R4,#0x24]
MOV             R3, #0x100
MOV             R2, #0
CMP             R0, #1
LDR             R0, [R4,#0x20]
MOVNE           R1, #9
MOVEQ           R1, #8
BL              sub_14C548
STRB            R5, [R4,#0xF]
MOV             R0, #4
STRB            R0, [R4,#0x44]
ADD             SP, SP, #0x2C ; ','
VPOP            {D8-D9}
POP             {R4-R9,PC}
DCFS 1.0
DCD 0xFFE683CC
DCD off_6CE970
DCFS 0.0
LDR             R0, [R4,#0x20]
BL              sub_5C5820
CMP             R0, #0
NOP
BEQ             loc_277DAC
LDRB            R0, [R4,#0xF]
CMP             R0, #0
BEQ             loc_277C10
MOV             R0, #5
STRB            R0, [R4,#0x44]
STRB            R5, [R4,#0xC]
ADD             SP, SP, #0x2C ; ','
VPOP            {D8-D9}
POP             {R4-R9,PC}
LDRB            R0, [R4,#0x24]
MOV             R3, #0x100
MOV             R2, #0
CMP             R0, #1
LDR             R0, [R4,#0x20]
MOVNE           R1, #9
MOVEQ           R1, #8
BL              sub_14C548
STRB            R5, [R4,#0xF]
NOP
B               loc_277D94

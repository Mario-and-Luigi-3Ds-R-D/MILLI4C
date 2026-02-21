PUSH            {R4,R5,LR}
MOV             R5, R0
VPUSH           {D8}
SUB             SP, SP, #0x3C
LDR             R0, [R0,#0x230]
CMP             R0, #0
LDRNE           R0, [R5,#0x22C]
CMPNE           R0, #0
BEQ             loc_199C50
LDR             R0, [R0,#0xA4]
ADR             R1, aEyeL; "eye_l"
BL              sub_2D8FD8
CMP             R0, #0
BEQ             loc_199AB4
STR             R0, [R5,#0x354]
LDR             R1, [R0,#0xC]
STR             R1, [SP,#0x50+var_40]
LDR             R1, [R0,#0x1C]
STR             R1, [SP,#0x50+var_3C]
LDR             R0, [R0,#0x2C]
STR             R0, [SP,#0x50+var_38]
LDR             R0, [R5,#0x22C]
ADR             R1, aEyeLocL; "eye_loc_l"
LDR             R0, [R0,#0xA4]
BL              sub_2D8FD8
CMP             R0, #0
NOP
BEQ             loc_199AF8
VLDR            S0, [R0,#0xC]
VLDR            S1, [SP,#0x50+var_40]
VSUB.F32        S0, S0, S1
VABS.F32        S0, S0
VSTR            S0, [SP,#0x50+var_30]
VLDR            S0, [R0,#0x1C]
VLDR            S1, [SP,#0x50+var_3C]
VSUB.F32        S0, S0, S1
VABS.F32        S0, S0
VSTR            S0, [SP,#0x50+var_2C]
LDR             R0, [R5,#0x22C]
ADR             R1, aEyeR; "eye_r"
LDR             R0, [R0,#0xA4]
BL              sub_2D8FD8
CMP             R0, #0
NOP
BEQ             loc_199B30
STR             R0, [R5,#0x358]
LDR             R1, [R0,#0xC]
STR             R1, [SP,#0x50+var_4C]
LDR             R1, [R0,#0x1C]
STR             R1, [SP,#0x50+var_48]
LDR             R0, [R0,#0x2C]
STR             R0, [SP,#0x50+var_44]
LDR             R0, [R5,#0x22C]
ADR             R1, aEyeLocR; "eye_loc_r"
LDR             R0, [R0,#0xA4]
BL              sub_2D8FD8
CMP             R0, #0
NOP
BEQ             loc_199B74
VLDR            S0, [R0,#0xC]
VLDR            S1, [SP,#0x50+var_4C]
VSUB.F32        S0, S0, S1
VABS.F32        S0, S0
VSTR            S0, [SP,#0x50+var_28]
VLDR            S0, [R0,#0x1C]
VLDR            S1, [SP,#0x50+var_48]
VSUB.F32        S0, S0, S1
VABS.F32        S0, S0
VSTR            S0, [SP,#0x50+var_24]
ADD             R0, R5, #0x18
MOV             R4, #0
LDM             R0, {R0-R2}
ADD             R12, SP, #0x50+var_20
VLDR            S16, =2.0
STR             R4, [SP,#0x50+var_50]
STM             R12, {R0-R2}
VMOV.F32        S0, S16
MOV             R3, R4
ADD             R2, SP, #0x50+var_30
ADD             R1, SP, #0x50+var_40
ADD             R0, R5, #0x25C
BL              sub_546964
ADD             R1, SP, #0x50+var_20
ADD             R0, R5, #0x25C
BL              sub_546AF8
VMOV.F32        S0, S16
MOV             R3, #0
ADD             R2, SP, #0x50+var_28
ADD             R1, SP, #0x50+var_4C
ADD             R0, R5, #0x2D8
STR             R4, [SP,#0x50+var_50]
BL              sub_546964
ADD             R1, SP, #0x50+var_20
ADD             R0, R5, #0x2D8
BL              sub_546AF8
VLDR            S0, =0.0
VLDR            S1, =25.0
ADD             R1, R5, #0x2B0
ADD             R0, R5, #0x25C
VSTM            R1, {S0-S1}
ADD             R1, R5, #0x32C
VSTR            S0, [R5,#0x2B8]
VSTM            R1, {S0-S1}
ADR             R1, aEyeL; "eye_l"
VSTR            S0, [R5,#0x334]
STR             R0, [R5,#0x2D8]
LDR             R0, [R5,#0x230]
LDR             R0, [R0,#0xA4]
BL              sub_2D8FD8
STR             R0, [R5,#0x35C]
LDR             R0, [R5,#0x230]
ADD             R4, R5, #8
ADR             R1, aEyeR; "eye_r"
LDR             R0, [R0,#0xA4]
BL              sub_2D8FD8
STR             R0, [R4,#0x358]
LDR             R1, [R5,#0x230]
MOV             R0, R5
BL              sub_1FFA08
STR             R0, [R5,#0x368]
LDR             R1, [R5,#0x22C]
MOV             R0, R5
BL              sub_1FFA08
STR             R0, [R5,#0x364]
MOV             R4, #0
ADD             R0, R5, R4,LSL#2
ADD             R2, R5, R4,LSL#3
LDR             R1, [R0,#0x224]
ADD             R0, R2, #0x234
BL              sub_5A0700
ADD             R4, R4, #1
CMP             R4, #4
BLT             loc_199C54
MOV             R0, R5
BL              sub_198CC8
LDR             R1, =off_68BBB8
LDRD            R0, R1, [R1,#(off_68BC08 - 0x68BBB8)]
STRD            R0, R1, [R5,#0xC]
ADD             SP, SP, #0x3C ; '<'
VPOP            {D8}
POP             {R4,R5,PC}

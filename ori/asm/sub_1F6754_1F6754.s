PUSH            {R4,R5,LR}
MOV             R4, R0
VPUSH           {D8-D9}
SUB             SP, SP, #0xC
LDRSB           R0, [R0,#9]
CMP             R0, R1
BEQ             loc_1F67B4
MOV             R0, #0
VLDR            S18, =255.0
VLDR            S17, =1.0
VLDR            S16, =0.0
STRB            R0, [R4,#8]
CMP             R1, #0
STRB            R1, [R4,#9]
BEQ             loc_1F67C0
ADD             R4, R4, #0x1E0
MOV             R0, R4
BL              sub_5A26D0
VSTR            S18, [R4,#0x1C]
VSTR            S17, [R4,#0x20]
VSTR            S16, [R4,#0x24]
VSTR            S16, [R4,#0xC]
VSTR            S18, [R4,#4]
VSTR            S17, [R4,#8]
ADD             SP, SP, #0xC
VPOP            {D8-D9}
POP             {R4,R5,PC}
VSTR            S18, [SP,#0x28+var_28]
ADD             R5, R4, #0x1E0
VSTR            S17, [SP,#0x28+var_24]
VSTR            S16, [SP,#0x28+var_20]
MOV             R0, R5
BL              sub_5A26D0
LDMFD           SP, {R0-R2}
ADD             R3, R5, #0x1C
ADD             R5, R5, #4
VMOV.F32        S0, S17
STM             R3, {R0-R2}
STM             R5, {R0-R2}
MOV             R1, SP
VSTR            S16, [SP,#0x28+var_28]
VSTR            S16, [SP,#0x28+var_24]
VSTR            S16, [SP,#0x28+var_20]
ADD             R0, R4, #0x1E0
BL              sub_5A1FC8
ADD             SP, SP, #0xC
VPOP            {D8-D9}
POP             {R4,R5,PC}

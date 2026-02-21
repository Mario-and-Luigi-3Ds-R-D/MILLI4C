PUSH            {R4,R5,LR}
MOV             R5, R0
VLDR            S0, =4.0
ADD             R4, R0, #0x1E0
VPUSH           {D8}
SUB             SP, SP, #0xC
VLDR            S16, =0.0
MOV             R0, R4
VSTR            S16, [SP,#0x20+var_20]
VSTR            S0, [SP,#0x20+var_1C]
VSTR            S16, [SP,#0x20+var_18]
BL              sub_5A26D0
LDMFD           SP, {R0-R2}
ADD             R3, R4, #0x1C
ADD             R4, R4, #4
VLDR            S1, =255.0
STM             R3, {R0-R2}
STM             R4, {R0-R2}
MOV             R1, SP
VLDR            S0, =1.0
VSTR            S1, [SP,#0x20+var_20]
VSTR            S0, [SP,#0x20+var_1C]
VSTR            S16, [SP,#0x20+var_18]
ADD             R0, R5, #0x1E0
BL              sub_5A1FC8
MOV             R0, #1
STRB            R0, [R5,#8]
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4,R5,PC}

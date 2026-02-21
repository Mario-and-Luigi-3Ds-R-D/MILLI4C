PUSH            {R4,R5,LR}
MOV             R5, R0
MOV             R0, #8
VPUSH           {D8-D9}
SUB             SP, SP, #0xC
MOV             R2, #0x100
MOV             R1, #1
STRB            R0, [R5,#0x19]
STMEA           SP, {R1,R2}
VMOV.F32        S16, S0
VMOV.F32        S18, S1
VMOV.F32        S17, S2
MOV             R3, #0
MOV             R2, R1
LDR             R0, [R5,#0x1C]
MOV             R1, R3
BL              sub_14F048
ADD             R4, R5, #0x2C ; ','
MOV             R0, R4
BL              sub_5A18EC
VLDR            S0, =0.0
MOV             R2, #0
VSTR            S0, [R4,#0xC]
VSTR            S0, [R4,#4]
VSTR            S16, [R4,#0x40]
VSTR            S18, [R4,#0x44]
VSTR            S17, [R4,#0x48]
VSTR            S16, [R4,#0x34]
VSTR            S18, [R4,#0x38]
VSTR            S17, [R4,#0x3C]
LDR             R0, [R5,#0x1C]
MOV             R1, R2
BL              sub_5ECC58
MOV             R4, R0
LDR             R0, =off_6CE388
LDR             R0, [R0]
LDR             R0, [R0,#0x98]
VLDR            S0, [R0,#0xD8]
ADD             SP, SP, #0xC
MOV             R0, R4
VPOP            {D8-D9}
POP             {R4,R5,LR}
B               sub_5924AC

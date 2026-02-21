PUSH            {R4,LR}
ADD             R0, R0, #4
VPUSH           {D8}
BL              sub_12BA3C
VLDR            S16, =1.0
ADD             R0, R0, #0x14
VMOV.F32        S0, S16
BL              sub_13631C
VMOV.F32        S0, S16
ADD             R0, R0, #0x18
BL              sub_13631C
ADD             R0, R0, #0x18
BL              sub_12C980
ADD             R0, R0, #0x14
BL              sub_12C980
SUB             R0, R0, #0x5C ; '\'
MOV             R2, #0
STR             R2, [R0,#0x74]
STRH            R2, [R0,#0x78]
STRH            R2, [R0,#0x7A]
VPOP            {D8}
POP             {R4,PC}

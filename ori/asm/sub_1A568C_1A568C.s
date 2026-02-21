PUSH            {R4,LR}
MOV             R4, R0
VPUSH           {D8-D9}
SUB             SP, SP, #8
MOV             R0, #0xA
MOV             R2, #0x100
MOV             R1, #1
STRB            R0, [R4,#0x19]
STMEA           SP, {R1,R2}
VMOV.F64        D8, D0
VMOV.F32        S18, S2
MOV             R3, #0
LDR             R0, [R4,#0x1C]
MOV             R2, #9
MOV             R1, R3
BL              sub_14F048
ADD             R0, R4, #0x78 ; 'x'
MOV             R2, #0
VSTM            R0, {S16-S18}
MOV             R1, R2
LDR             R0, [R4,#0x1C]
BL              sub_5ECC58
MOV             R4, R0
LDR             R0, =off_6CE388
LDR             R0, [R0]
LDR             R0, [R0,#0x98]
VLDR            S0, [R0,#0xC0]
ADD             SP, SP, #8
MOV             R0, R4
VPOP            {D8-D9}
POP             {R4,LR}
B               sub_5924AC

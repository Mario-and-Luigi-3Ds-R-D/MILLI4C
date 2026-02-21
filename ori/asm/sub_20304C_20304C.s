ADD             R1, R0, #0x200
MOV             R12, #0xFFFFFFFF
PUSH            {R4,LR}
MOV             R3, #1
STRH            R12, [R1,#0xE8]
STRH            R3, [R1,#0xEA]
VLDR            S0, =100.0
VLDR            S1, =50.0
ADD             R1, R0, #0x2EC
MOV             R2, #0
VSTM            R1, {S0-S1}
STRB            R2, [R0,#0x2F4]
LDR             R0, [R0,#4]
LDR             R1, [R0,#0x4EC]
BIC             R1, R1, #0x10
STR             R1, [R0,#0x4EC]
MOV             R0, #0xD1
NOP
LDR             R2, =off_6D1648
MOV             R1, R0
LDR             R2, [R2]
LDR             R2, [R2,#0xA0]
POP             {R4,LR}
ADD             R2, R2, #0x14400
ADD             R2, R2, #0x204
MOV             R0, R2
B               sub_50EB80

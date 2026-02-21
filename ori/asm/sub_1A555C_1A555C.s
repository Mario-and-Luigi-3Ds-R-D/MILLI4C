PUSH            {R4,LR}
MOV             R4, R0
SUB             SP, SP, #8
MOV             R0, #0xC
MOV             R2, #0x100
MOV             R1, #1
STRB            R0, [R4,#0x19]
STMEA           SP, {R1,R2}
MOV             R3, #0
LDR             R0, [R4,#0x1C]
MOV             R2, #0xC
MOV             R1, R3
BL              sub_14F048
MOV             R2, #0
LDR             R0, [R4,#0x1C]
MOV             R1, R2
BL              sub_5ECC58
ADD             SP, SP, #8
VLDR            S0, =1.0
POP             {R4,LR}
B               sub_5924AC

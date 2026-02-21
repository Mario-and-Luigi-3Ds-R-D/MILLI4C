ADD             R1, R0, #0x108
PUSH            {R4,R5}
ADD             R5, R0, #0x118
VLDM            R1, {S0-S2}
ADD             R2, R0, #0x148
ADD             R3, R0, #0x400
MOV             R12, #0xF0
VSTM            R5, {S0-S2}
ADD             R5, R0, #0x130
ADD             R3, R3, #0x64 ; 'd'
VLDM            R5, {S1-S2}
ADD             R5, R0, #0x138
ADD             R1, R0, #0x400
MOV             R4, #4
VSTM            R5, {S1-S2}
VLDR            S1, [R0,#0x140]
VLDR            S2, [R0,#0x144]
VLDR            S0, =0.0
VSTM            R2, {S1-S2}
LDR             R2, [R0,#0x464]
BIC             R5, R2, #0xF0
AND             R2, R12, R2,LSL#4
ORR             R2, R2, R5
STR             R2, [R3]
LDRH            R2, [R1,#0x68]
STRH            R2, [R1,#0x6A]
LDRH            R2, [R1,#0x6C]
STRH            R2, [R1,#0x6E]
LDRH            R2, [R1,#0xB6]
BIC             R3, R2, #4
AND             R2, R4, R2,LSL#1
ORR             R2, R2, R3
STRH            R2, [R1,#0xB6]
VSTR            S0, [R0,#0x124]
VSTR            S0, [R0,#0x128]
VSTR            S0, [R0,#0x12C]
POP             {R4,R5}
BX              LR

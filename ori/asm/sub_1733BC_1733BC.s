PUSH            {R3-R5,LR}
ADD             R5, R0, #0xA00
MOV             R4, R0
LDRH            R0, [R5,#0xA8]
MOV             R2, R0,LSL#28
CMP             R1, R2,LSR#31
BEQ             locret_17350C
BIC             R2, R0, #8
LDR             R0, =byte_6EC430
ORR             R1, R2, R1,LSL#3
TST             R1, #8
STRH            R1, [R5,#0xA8]
BEQ             loc_1734C8
TST             R1, #7
BEQ             locret_17350C
AND             R2, R1, #7
CMP             R2, #1
CMPNE           R2, #2
BEQ             loc_173420
LDR             R1, =0x4002
CMP             R2, #3
BEQ             loc_173444
CMP             R2, #4
BEQ             loc_173464
B               loc_173480
STR             R0, [SP,#0x10+var_10]
LDRD            R0, R1, [R4]
MOV             R2, #0
ADD             R3, R1, #0xCC
LDR             R12, [R0,#0x354]
LDR             R1, =0x4001
MOV             R0, R4
BLX             R12
B               loc_173480
STR             R0, [SP,#0x10+var_10]
LDM             R4, {R0,R2}
ADD             R3, R2, #0xCC
LDR             R12, [R0,#0x354]
MOV             R2, #0
MOV             R0, R4
BLX             R12
B               loc_173480
STR             R0, [SP,#0x10+var_10]
LDM             R4, {R0,R2}
ADD             R3, R2, #0xCC
LDR             R12, [R0,#0x354]
MOV             R2, #1
MOV             R0, R4
BLX             R12
LDR             R0, [R4,#4]
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x4300
LDRH            R1, [R0,#8]
ORR             R1, R1, #1
STRH            R1, [R0,#8]
LDRH            R0, [R5,#0xA8]
TST             R0, #7
BEQ             locret_17350C
MOV             R1, #1
BIC             R1, R1, R0,LSR#3
VMOV            S0, R1
LDRH            R0, [R5,#0xB2]
POP             {R3-R5,LR}
MOV             R2, #0
MOV             R1, R2
VCVT.F32.U32    S0, S0
B               sub_145730
MOV             R2, #0
STRH            R2, [R5,#0xAE]
LDRH            R2, [R5,#0xAC]
MOV             R2, #0
STRH            R2, [R5,#0xAC]
LDR             R2, [R4,#0x464]
BIC             R2, R2, #0x700
STR             R2, [R4,#0x464]
STR             R0, [SP,#0x10+var_10]
LDRD            R0, R1, [R4]
MOV             R2, #0
ADD             R3, R1, #0xCC
LDR             R12, [R0,#0x354]
MOV             R1, #0x4000
MOV             R0, R4
BLX             R12
B               loc_173480
POP             {R3-R5,PC}

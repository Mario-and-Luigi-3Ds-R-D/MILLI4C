MOV             R3, R0
MOV             R12, R1
PUSH            {R4,LR}
LDRD            R0, R1, [R2,#8]
ADD             R4, R0, R0,LSL#1
RSB             R0, R4, R0,LSL#5
LDR             R4, =dword_6E7CD0
ADD             R0, R4, R0,LSL#3
ADD             R0, R0, R1,LSL#1
ADD             R1, R0, #0x700
LDRH            R0, [R2,#2]
LDRH            R1, [R1,#0x80]
MOV             R2, R12
VMOV            S0, R1
MOV             R1, R3
VCVT.F32.U32    S0, S0
BL              sub_145730
MOV             R0, #0
POP             {R4,PC}

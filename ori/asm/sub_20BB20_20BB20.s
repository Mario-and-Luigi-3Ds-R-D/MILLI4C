PUSH            {R4-R10,LR}
MOV             R4, R2
LDR             R0, [R2,#8]
UXTH            R1, R0
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_52F538
MOV             R6, R0
ADD             R0, R4, #0xC
ADD             R5, R4, #0x7C ; '|'
LDM             R0, {R0-R2}
ADD             R4, R4, #0x88
SXTH            R9, R0
LDR             R0, [R6]
SXTH            R8, R1
AND             R7, R2, #0xFF
LDR             R1, [R0,#0x54]
MOV             R0, R6
BLX             R1
MOV             R2, R8
MOV             R1, R9
MOV             R0, R6
BL              sub_5ED638
CMP             R0, #0
ADD             R1, R7, R7,LSL#1
ADDNE           R0, R0, #4
ADD             R0, R0, R1,LSL#3
VLDR            S2, [R4]
VLDR            S0, [R4,#4]
VLDR            S4, [R4,#8]
VMOV.F32        S3, S2
VMOV.F32        S1, S0
VMOV.F32        S5, S4
VLDR            S11, [R5]
VLDR            S9, [R5,#4]
VLDR            S7, [R5,#8]
VLDR            S14, [R0]
VLDR            S10, [R0,#4]
VLDR            S12, [R0,#8]
VLDR            S8, [R0,#0xC]
VLDR            S13, [R0,#0x10]
VLDR            S6, [R0,#0x14]
VMLA.F32        S2, S14, S11
VMLA.F32        S0, S12, S9
VMLA.F32        S4, S13, S7
VMLA.F32        S3, S10, S11
VMLA.F32        S1, S8, S9
VMLA.F32        S5, S6, S7
ADD             R8, R6, #0x490
MOV             R2, #1
VMOV            R0, S2
VMOV            R3, S0
VMOV            R5, S4
VMOV            R1, S3
VMOV            R4, S1
VMOV            R12, S5
STM             R8, {R0,R1,R3-R5,R12}
MOV             R0, #0
STRB            R2, [R6,#0x4B1]
POP             {R4-R10,PC}

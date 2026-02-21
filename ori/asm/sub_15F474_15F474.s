PUSH            {R0-R11,LR}
MOV             R5, R0
MOV             R11, R1
VPUSH           {D0-D1}
VPUSH           {D8-D10}
SUB             SP, SP, #0xC
VMOV.F32        S16, S0
VMOV.F32        S18, S1
LDR             R0, [R0]
VMOV.F32        S19, S2
VMOV.F32        S20, S3
VLDR            S17, [SP,#0x68+arg_0]
LDR             R2, [R0,#0x2F0]
MOV             R0, R5
BLX             R2
CMN             R0, #1
STR             R0, [SP,#0x68+var_60]
BEQ             loc_15F5D0
LDR             R1, [R11,#0x658]
MOV             R0, #3
CMP             R0, R1,LSR#30
BNE             loc_15F5E4
LDR             R9, [R5,#4]
LDR             R1, =0x1428D
MOV             R6, #0
LDRB            R10, [R1,R9]
CMP             R10, #0
BLE             loc_15F5A4
ADD             R0, R9, R6,LSL#2
ADD             R0, R0, #0x14000
LDR             R8, [R0,#0x184]
CMP             R8, R11
CMPNE           R8, R5
BEQ             loc_15F598
LDR             R0, [R8]
LDR             R1, [R0,#8]
MOV             R0, R8
BLX             R1
CMP             R0, #3
BEQ             loc_15F598
LDR             R0, [R8]
LDR             R1, [R0,#8]
MOV             R0, R8
BLX             R1
CMP             R0, #4
BEQ             loc_15F598
LDR             R1, [R8,#0x658]
MOV             R0, #3
CMP             R0, R1,LSR#30
BNE             loc_15F598
LDR             R0, [R8]
MOV             R4, #0
LDR             R1, [R0,#0x270]
MOV             R0, R8
BLX             R1
SUBS            R7, R0, #0
BLE             loc_15F598
AND             R1, R4, #0xFF
MOV             R2, SP
MOV             R0, R8
BL              sub_5F0668
LDR             R1, [R5]
LDR             R0, [SP,#0x68+var_68]
LDR             R3, [R1,#0x2F0]
MOV             R1, R8
VLDM            R0, {S0-S3}
MOV             R0, R5
BLX             R3
CMN             R0, #1
BEQ             loc_15F5D0
ADD             R4, R4, #1
CMP             R7, R4
BGT             loc_15F558
ADD             R6, R6, #1
CMP             R6, R10
BLT             loc_15F4E4
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0x338
MOV             R2, R11
MOV             R1, R5
BL              sub_21E200
CMP             R0, #0
NOP
BEQ             loc_15F5E4
MOV             R0, #0
ADD             SP, SP, #0xC
VPOP            {D8-D10}
ADD             SP, SP, #0x20 ; ' '
POP             {R4-R11,PC}
LDR             R0, [SP,#0x68+var_28]
VMOV.F32        S3, S20
VMOV.F32        S2, S19
STR             R0, [SP,#0x68+var_68]
VSTR            S17, [SP,#0x68+var_64]
LDR             R0, [R5]
VMOV.F32        S1, S18
VMOV.F32        S0, S16
LDR             R2, [SP,#0x68+var_2C]
LDR             R12, [R0,#0x3A8]
LDR             R3, [SP,#0x68+var_60]
MOV             R1, R11
MOV             R0, R5
BLX             R12
MOV             R0, #1
B               loc_15F5D4

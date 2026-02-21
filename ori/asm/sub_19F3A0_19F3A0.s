PUSH            {R4,R5,LR}
MOV             R4, R0
LDR             R5, =off_6CE388
SUB             SP, SP, #0xC
LDR             R0, [R5]
LDR             R0, [R0,#0x98]
LDRB            R0, [R4,#0xC]
CMP             R0, #0
BEQ             loc_19F470
CMP             R0, #1
BNE             loc_19F468
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x410]
BL              sub_5C6830
CMP             R0, #0
BNE             loc_19F468
LDR             R0, =off_6CE970
MOV             R3, #0
LDR             R4, [R4,#4]
MOV             R5, SP
LDR             R0, [R0]
MOV             R2, R3
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0xC
BL              sub_10A358
CMP             R0, #0
BEQ             loc_19F414
LDR             R1, =off_6BB418
STM             R0, {R1,R4}
MOV             R1, R5
STR             R0, [SP,#0x18+var_18]
ADD             R0, R5, #4
STR             R0, [SP,#0x18+var_10]
STR             R0, [SP,#0x18+var_14]
MOV             R2, #0
ADD             R0, R4, #0x3F4
BL              sub_61E2FC
LDR             R1, [SP,#0x18+var_10]
ADD             R0, SP, #0x18+var_14
CMP             R1, R0
BNE             loc_19F45C
LDR             R0, [SP,#0x18+var_18]
CMP             R0, #0
BEQ             loc_19F45C
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x18+var_14]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0xC
POP             {R4,R5,PC}
LDR             R0, [R4,#4]
ADD             R0, R0, #0x39C
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             loc_19F468
LDR             R0, [R5]
BL              sub_1A0C98
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x410]
BL              sub_592484
MOV             R0, #1
STRB            R0, [R4,#0xC]
ADD             SP, SP, #0xC
POP             {R4,R5,PC}

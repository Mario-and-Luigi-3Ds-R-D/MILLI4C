PUSH            {R4,R5,LR}
MOV             R4, R0
LDR             R0, =off_6CDCE8
SUB             SP, SP, #0x34
MOV             R5, R1
LDR             R0, [R0]
BL              sub_5CDC34
CMP             R0, #0
BNE             loc_284EC8
LDM             R5, {R0-R2}
ADD             R3, SP, #0x40+var_1C
VLDR            S0, =0.0
VLDR            S1, =1.0
STM             R3, {R0-R2}
MOV             R3, #0
VSTR            S0, [SP,#0x40+var_18]
VMOV            S0, R2
LDR             R0, =off_6CE970
ADD             R5, SP, #0x40+var_28
MOV             R2, R3
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x40+var_14]
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x504
BL              sub_10A358
CMP             R0, #0
BEQ             loc_284D44
MOV             R1, #4
STR             R1, [SP,#0x40+var_40]
LDR             R3, [R4,#0x120]
ADD             R2, SP, #0x40+var_1C
MOV             R1, R4
BL              sub_285568
STR             R0, [SP,#0x40+var_28]
LDR             R2, [SP,#0x40+var_28]
ADD             R0, R5, #4
STR             R0, [SP,#0x40+var_20]
STR             R2, [SP,#0x40+var_3C]
ADD             R2, SP, #0x40+var_24
STR             R2, [SP,#0x40+var_38]
LDR             R2, [SP,#0x40+var_20]
ADD             R0, SP, #0x40+var_38
STR             R0, [SP,#0x40+var_24]
STR             R2, [SP,#0x40+var_34]
STR             R0, [SP,#0x40+var_20]
LDR             R0, [R4,#0x11C]
LDR             R3, [R4,#0x118]
LDR             R2, =0x2AAAAAAB
ADD             R1, SP, #0x40+var_3C
SUB             R3, R0, R3
SMULL           R3, R2, R2, R3
MOV             R3, R2,ASR#1
SUB             R2, R3, R2,ASR#31
CMP             R2, #0xA
BEQ             loc_284DDC
ADD             R2, R2, #1
CMP             R2, #0xA
BHI             loc_284DDC
CMP             R0, #0
BEQ             loc_284DD0
LDR             R2, [SP,#0x40+var_3C]
ADD             R1, R1, #4
STR             R2, [R0],#4
STR             R1, [R0]
LDR             R1, [SP,#0x40+var_34]
STR             R1, [R0,#4]
STR             R0, [R1]
STR             R0, [SP,#0x40+var_34]
LDR             R0, [R4,#0x11C]
ADD             R0, R0, #0xC
STR             R0, [R4,#0x11C]
LDR             R1, [SP,#0x40+var_34]
LDR             R5, =off_6B7BEC
ADD             R0, SP, #0x40+var_38
CMP             R1, R0
BNE             loc_284E48
LDR             R0, [SP,#0x40+var_3C]
CMP             R0, #0
BEQ             loc_284E48
ADD             R4, R0, #0x4C0
STR             R5, [R0,#0x4C0]!
LDR             R1, =nullsub_300
MOV             R3, #1
MOV             R2, #0x1C
ADD             R0, R0, #0x18
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
SUB             R0, R0, #0x400
SUB             R0, R0, #0x28 ; '('
BL              sub_14F3EC
SUB             R0, R0, #0x90
NOP
NOP
SUB             R0, R0, #8
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x40+var_38]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [SP,#0x40+var_20]
ADD             R1, SP, #0x40+var_24
CMP             R0, R1
BNE             loc_284EBC
LDR             R0, [SP,#0x40+var_28]
CMP             R0, #0
BEQ             loc_284EBC
ADD             R4, R0, #0x4C0
STR             R5, [R0,#0x4C0]!
LDR             R1, =nullsub_300
MOV             R3, #1
MOV             R2, #0x1C
ADD             R0, R0, #0x18
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
SUB             R0, R0, #0x400
SUB             R0, R0, #0x28 ; '('
BL              sub_14F3EC
SUB             R0, R0, #0x90
NOP
NOP
SUB             R0, R0, #8
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x40+var_24]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0x34 ; '4'
POP             {R4,R5,PC}

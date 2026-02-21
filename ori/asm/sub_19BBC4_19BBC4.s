PUSH            {R4,R5,LR}
MOV             R4, R0
LDR             R5, =off_6D1648
VPUSH           {D8}
SUB             SP, SP, #0xC
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
BL              sub_5C6058
VLDR            S16, =0.0
CMP             R0, #0
BEQ             loc_19BC10
MOV             R2, #0
LDR             R0, =0xCA02
MOV             R1, R2
BL              sub_116B34
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
LDREQ           R0, [R4,#0x1B4]
BEQ             loc_19BC1C
LDR             R0, [R4,#0x1B4]
BIC             R0, R0, #0x50000
STR             R0, [R4,#0x1B4]
TST             R0, #0x10000
LDRNE           R0, [R5]
CMPNE           R0, #0
BEQ             loc_19BCD0
LDR             R1, [R4,#0xB4]
CMP             R1, #0
BNE             loc_19BC70
LDR             R1, [R0,#0xC4]
LDR             R1, [R1,#4]
LDR             R3, [R1,#8]
ADD             R3, R3, #0x108
LDM             R3, {R1-R3}
STMEA           SP, {R1-R3}
LDR             R0, [R0,#0xBC]
MOV             R3, #0
MOV             R2, SP
MOV             R1, #0x29 ; ')'
BL              sub_168114
ADD             R1, R4, #0xB4
STR             R0, [R4,#0xB4]
STR             R1, [R0,#0x180]
LDR             R0, [R5]
MOV             R1, #0
MOV             R2, #0x3F800000
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#8]
ADD             R0, R0, #0x108
VLDM            R0, {S0-S2}
LDR             R0, [R4,#0xB4]
ADD             R3, R0, #0x8C
STR             R1, [R0,#0x80]
STR             R2, [R0,#0x7C]
STR             R1, [R0,#0x84]
VSTR            S0, [R0,#0x88]
STM             R3, {R1,R2}
ADD             R3, R0, #0xA0
STR             R1, [R0,#0x94]
VSTR            S1, [R0,#0x98]
STR             R1, [R0,#0x9C]
STM             R3, {R1,R2}
VSTR            S2, [R0,#0xA8]
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4,R5,PC}
LDR             R0, [R4,#0xB4]
CMP             R0, #0
BEQ             loc_19BCC4
BL              sub_533330
MOV             R0, #0
STR             R0, [R4,#0xB4]
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4,R5,PC}

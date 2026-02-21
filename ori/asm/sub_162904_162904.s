PUSH            {R4-R8,LR}
ADD             R4, R0, #0x14400
ADD             R4, R4, #8
LDR             R7, =off_6D1648
LDR             R12, [R4]
ADD             R5, R0, #0x17800
CMP             R1, #0
SUB             SP, SP, #0x20
MOV             R6, R0
MOV             R3, #0
ADD             R5, R5, #0x2C8
BEQ             loc_162964
MOV             R0, R7
LDRB            R1, [R5]
LDR             R0, [R0]
CMP             R1, #0
LDR             R0, [R0,#0x60]
BEQ             loc_1629E0
ADD             R2, R0, #0x8A0
MOV             R1, R3
MOV             R0, R12
STR             R3, [SP,#0x38+var_38]
BL              sub_59B140
B               loc_1629F8
ADD             R0, R12, #0x800
ADD             R0, R0, #0x6C ; 'l'
BL              sub_536F74
LDRB            R0, [R5]
CMP             R0, #0
LDR             R0, [R7]
LDR             R0, [R0,#0x60]
BEQ             loc_1629A4
ADD             R1, R0, #0x8A0
LDR             R0, [R4]
ADD             R0, R0, #0x800
ADD             R0, R0, #0x6C ; 'l'
BL              sub_536F10
NOP
NOP
B               loc_1629B8
ADD             R1, R0, #0x780
LDR             R0, [R4]
ADD             R0, R0, #0x800
ADD             R0, R0, #0x6C ; 'l'
BL              sub_536F10
LDR             R0, [R4]
ADD             R1, R6, #0x13800
ADD             R1, R1, #0x36C
ADD             R0, R0, #0x800
ADD             R0, R0, #0x18
BL              sub_59AD30
LDR             R0, [R4]
MOV             R1, #3
STRB            R1, [R0,#0x8DB]
B               loc_1629F8
STR             R3, [SP,#0x38+var_38]
ADD             R2, R0, #0x780
MOV             R3, #0
MOV             R1, R3
MOV             R0, R12
BL              sub_59B140
LDRB            R0, [R5]
VLDR            S0, =490.0
VLDR            S2, =-250.0
CMP             R0, #0
MOV             R8, #1
ADD             R6, R6, #0x15000
BEQ             loc_162B10
MOV             R3, #0xA
VLDR            S3, =-150.0
VLDR            S1, =100.0
VSTR            S3, [SP,#0x38+var_30]
VSTR            S1, [SP,#0x38+var_2C]
VSTR            S0, [SP,#0x38+var_28]
VSTR            S2, [SP,#0x38+var_24]
VSTR            S1, [SP,#0x38+var_20]
VSTR            S0, [SP,#0x38+var_1C]
ADD             R0, SP, #0x38+var_24
STMEA           SP, {R0,R3}
LDR             R0, [R4]
ADD             R2, SP, #0x38+var_30
MOV             R1, #0
BL              sub_2FBD28
LDR             R0, [R4]
ADD             R2, SP, #0x38+var_30
MOV             R1, #0
BL              sub_2FBAC8
MOV             R3, #0
STR             R8, [SP,#0x38+var_38]
LDR             R0, [R4]
MOV             R2, R3
MOV             R1, R3
BL              sub_2FB988
LDRB            R0, [R5]
CMP             R0, #2
BNE             loc_162ABC
LDR             R0, [R6,#0x1CC]
CMP             R0, #0
BEQ             loc_162ABC
LDR             R0, [R4]
LDRB            R1, [R0,#0x23E]
CMP             R1, #0
BNE             loc_162ABC
MOV             R3, #0
MOV             R2, #1
MOV             R1, R3
BL              sub_2FBB34
NOP
NOP
B               loc_162AD0
MOV             R3, #0
LDR             R0, [R4]
MOV             R2, R3
MOV             R1, R3
BL              sub_2FBB34
LDRB            R0, [R5]
CMP             R0, #2
BCS             loc_162B7C
LDR             R0, [R6,#0x1CC]
CMP             R0, #0
BEQ             loc_162BBC
LDR             R0, [R4]
LDRB            R1, [R0,#0x62E]
CMP             R1, #0
BEQ             loc_162BBC
ADD             SP, SP, #0x20 ; ' '
MOV             R3, #1
POP             {R4-R8,LR}
MOV             R2, #0
MOV             R1, R3
B               sub_59AD78
VLDR            S1, =0.0
VLDR            S3, =-118.0
VSTR            S1, [SP,#0x38+var_30]
VSTR            S3, [SP,#0x38+var_2C]
ADD             R0, SP, #0x38+var_28
MOV             R3, #0xF
VSTM            R0, {S0-S2}
ADD             R0, SP, #0x38+var_24
VSTR            S0, [SP,#0x38+var_1C]
STMEA           SP, {R0,R3}
LDR             R0, [R4]
ADD             R2, SP, #0x38+var_30
MOV             R1, #0
BL              sub_2FBD28
LDR             R0, [R4]
ADD             R2, SP, #0x38+var_30
MOV             R1, #0
BL              sub_2FBAC8
MOV             R3, #0
STR             R8, [SP,#0x38+var_38]
LDR             R0, [R4]
MOV             R2, R3
MOV             R1, R3
BL              sub_2FB988
NOP
NOP
B               loc_162ABC
LDR             R0, [R7]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#0x14]
TST             R0, #0x10000
BEQ             loc_162BBC
LDR             R0, [R4]
LDRB            R1, [R0,#0x62E]
CMP             R1, #0
BNE             loc_162BBC
ADD             SP, SP, #0x20 ; ' '
MOV             R3, #1
POP             {R4-R8,LR}
MOV             R2, R3
MOV             R1, R3
B               sub_59AD78
ADD             SP, SP, #0x20 ; ' '
POP             {R4-R8,PC}

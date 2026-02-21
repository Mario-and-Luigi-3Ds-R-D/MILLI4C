PUSH            {R4,R5,LR}
MOV             R4, R0
VLDR            S0, =0.0
VPUSH           {D8}
SUB             SP, SP, #0xC
VSTR            S0, [R0,#0x88]
LDR             R0, [R0,#0x34]
BL              sub_5CBC34
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [R4,#0x94]
ADD             R0, R4, #0x8C
STM             R0, {R1,R2}
LDR             R0, [R4,#4]
VLDR            S1, [R4,#0x8C]
LDR             R1, [R0,#8]
VLDR            S0, [R1,#0x3F4]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x8C]
LDR             R5, [R0,#8]
LDR             R0, [R4,#0x58]
VLDR            S16, [R5,#0x2C]
BL              sub_5CC020
VLDR            S1, [R5,#0x38]
VADD.F32        S1, S1, S16
VSUB.F32        S0, S1, S0
VSTR            S0, [R4,#0x84]
LDR             R0, [R4,#0x34]
VLDR            S17, [R5,#0x34]
BL              sub_5CBEB4
CMP             R0, #0
BEQ             loc_264E34
LDR             R0, [R4,#0x58]
BL              sub_5CBFE0
CMP             R0, #0
MOVEQ           R0, #1
STRBEQ          R0, [R4,#0x70]
BEQ             loc_264E4C
MOV             R0, #2
STRB            R0, [R4,#0x70]
LDR             R0, [R4,#0x58]
VLDR            S0, [R4,#0x84]
ADD             R1, R4, #0x8C
BL              sub_5A2058
LDR             R0, [R4,#4]
VMOV.F32        S1, S16
VLDR            S0, [R4,#0x8C]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x368
LDR             R0, [R0]
BL              sub_25E9C0
VMOV.F32        S0, S17
LDR             R0, [R4,#0x64]
ADD             R1, R4, #0x8C
BL              sub_267478
ADD             R0, R4, #0x8C
MOV             R3, #0
LDM             R0, {R0-R2}
ADD             R5, R4, #0x74 ; 't'
STMEA           SP, {R0-R2}
MOV             R2, R3
LDR             R0, [R4,#4]
VLDR            S0, [SP,#0x20+var_20]
LDR             R0, [R0,#8]
VLDR            S1, [R0,#0x3F8]
LDR             R0, =off_6CE970
VADD.F32        S0, S1, S0
VSTR            S0, [SP,#0x20+var_20]
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x3FC
BL              sub_10A358
CMP             R0, #0
MOVEQ           R4, #0
BEQ             loc_264ED8
ADD             R2, R4, #0x2C ; ','
MOV             R1, SP
BL              sub_267B00
MOV             R4, R0
LDR             R0, [R5,#8]
ADD             R1, R5, #4
CMP             R0, R1
BNE             loc_264F18
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_264F08
ADD             R0, R0, #8
BL              sub_14F3EC
SUB             R0, R0, #8
NOP
BL              sub_300FD4
STR             R4, [R5]
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4,R5,PC}
LDR             R2, [R5,#4]
ADD             R1, R5, #4
STR             R0, [R2,#4]
STR             R2, [R0]
STR             R1, [R5,#4]
STR             R1, [R5,#8]
B               loc_264F08

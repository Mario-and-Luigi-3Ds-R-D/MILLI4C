PUSH            {R4-R8,LR}
MOV             R5, R0
CMP             R1, #1
VPUSH           {D8-D9}
SUB             SP, SP, #0x10
LDR             R0, [R0,#4]
LDR             R1, [R0,#0x100]
BEQ             loc_279AA4
ADD             SP, SP, #0x10
MOV             R0, R1
VPOP            {D8-D9}
POP             {R4-R8,LR}
B               sub_27FF00
LDR             R4, [R0,#0x124]
MOV             R0, R1
BL              sub_5CD78C
CMP             R0, #1
MOV             R6, R0
ADDEQ           R0, R4, #0x1F4
BEQ             loc_279AE4
CMP             R6, #2
ADDEQ           R0, R4, #0x200
BEQ             loc_279AE4
CMP             R6, #3
ADDEQ           R0, R4, #0x20C
BEQ             loc_279AE4
CMP             R6, #4
ADDEQ           R0, R4, #0x218
BNE             loc_279AE8
VLDM            R0, {S16-S18}
ADD             R7, R4, #0x400
LDR             R8, =off_6CE970
VLDR            S0, [R7,#0x15C]
ADD             R1, R4, #0x1B0
MOV             R2, #2
LDR             R0, [R8]
VLDM            R1, {S1-S2}
ADD             R0, R0, #0x100000
ADD             R0, R0, #0xC400
MOV             R1, SP
VLDR            S3, [R0,#(loc_10C4EC - 0x10C400)]
MOV             R0, R1
VMUL.F32        S0, S3, S0
VSTR            S0, [SP,#0x38+var_30]
VSTMEA          SP, {S1-S2}
BL              sub_14C6B0
VLDR            S0, [SP,#0x38+var_38]
MOV             R1, SP
MOV             R2, #1
VADD.F32        S0, S0, S16
MOV             R0, R1
VSTR            S0, [SP,#0x38+var_38]
VLDR            S0, [SP,#0x38+var_34]
VADD.F32        S0, S0, S17
VSTR            S0, [SP,#0x38+var_34]
VLDR            S0, [SP,#0x38+var_30]
VADD.F32        S0, S0, S18
VSTR            S0, [SP,#0x38+var_30]
BL              sub_14C614
LDR             R0, [R8]
MOV             R3, #0
MOV             R2, R3
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x260
BL              sub_10A358
MOVS            R12, R0
NOP
BEQ             loc_279B98
LDR             R0, [R5,#4]
MOV             R3, SP
MOV             R1, R6
LDR             R2, [R0,#0x164]
MOV             R0, R12
BL              sub_276664
LDR             R0, [R8]
VLDR            S0, [R7,#0x15C]
ADD             R4, R4, #0x1B0
ADD             R2, R0, #0x100000
ADD             R2, R2, #0xC400
LDM             R4, {R0,R1}
VLDR            S1, [R2,#(loc_10C4EC - 0x10C400)]
STRD            R0, R1, [SP,#0x38+var_38]
VMUL.F32        S0, S1, S0
MOV             R1, SP
VSTR            S0, [SP,#0x38+var_30]
LDR             R0, [R5,#4]
LDR             R0, [R0,#0x100]
BL              sub_27FE3C
ADD             SP, SP, #0x10
VPOP            {D8-D9}
POP             {R4-R8,PC}

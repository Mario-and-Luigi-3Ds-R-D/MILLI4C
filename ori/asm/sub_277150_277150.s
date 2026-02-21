PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R5, #0
VPUSH           {D8}
LDRB            R0, [R0,#0xE]
CMP             R0, #0
BEQ             loc_277180
LDR             R0, [R4]
LDR             R1, [R0,#0x10]
MOV             R0, R4
BLX             R1
STRB            R5, [R4,#0xE]
LDRB            R0, [R4,#0x38]
STRB            R5, [R4,#0x44]
CMP             R0, #1
BEQ             loc_2771E0
CMP             R0, #2
BEQ             loc_277204
LDR             R6, =off_6CE970
LDR             R7, =0xFFE683CC
CMP             R0, #3
MOV             R8, #5
MOV             R5, #1
BEQ             loc_277240
CMP             R0, #4
BNE             loc_277238
LDR             R0, [R4,#0x2C]
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             loc_277238
LDR             R2, [R4,#0x34]
CMN             R2, #1
LDRNE           R0, [R4,#0x2C]
BNE             loc_277298
B               loc_2772AC
LDR             R0, [R4,#0x2C]
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             loc_277238
VPOP            {D8}
MOV             R0, R4
POP             {R4-R8,LR}
B               sub_277358
LDR             R0, [R4,#0x2C]
VLDR            S0, [R4,#0x40]
VLDR            S16, [R0,#0x28]
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BLE             loc_277234
LDRB            R1, [R4,#0x3B]
MOV             R3, #0x100
MOV             R2, #0
BL              sub_14C548
MOV             R0, #3
STRB            R0, [R4,#0x38]
VSTR            S16, [R4,#0x40]
VPOP            {D8}
POP             {R4-R8,PC}
LDR             R0, [R4,#0x2C]
LDR             R1, [R0,#0x204]
ADD             R1, R1, #0x34 ; '4'
VLDM            R1, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             loc_277238
LDRB            R1, [R4,#0x28]
STRB            R5, [R4,#0x44]
CMP             R1, #3
BCS             loc_27728C
LDRB            R1, [R4,#0x3C]
MOV             R3, #0x100
MOV             R2, #1
BL              sub_14C548
MOV             R0, #4
STRB            R0, [R4,#0x38]
VPOP            {D8}
POP             {R4-R8,PC}
LDR             R2, [R4,#0x34]
CMN             R2, #1
BEQ             loc_2772AC
LDRH            R1, [R0,#0x10]
LDR             R0, [R6]
MOV             R3, #0
SUB             R0, R0, R7
BL              sub_503808
STRB            R8, [R4,#0x38]
STRB            R5, [R4,#0xC]
VPOP            {D8}
POP             {R4-R8,PC}

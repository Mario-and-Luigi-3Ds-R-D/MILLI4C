PUSH            {R4-R12,LR}
MOV             R4, R0
MOV             R5, R1
MOV             R6, R2
LDR             R0, =dword_70C1F4
VPUSH           {D8}
MOV             R10, R0
BL              sub_13273C
LDR             R0, [R4,#0x18]
CMP             R5, #0x64 ; 'd'
MOV             R7, #0
ADD             R0, R0, #1
STR             R0, [R4,#0x18]
BEQ             loc_133D28
SUB             R0, R5, #0x12C
LDR             R5, [R4,#8]
VLDR            S16, =1.0
CMP             R0, #2
MOV             R8, #0
BHI             loc_133E2C
MOV             R0, R5
BL              sub_136048
CMP             R0, #0
NOP
BEQ             loc_133D00
MOV             R0, R5
LDR             R0, [R0,#0x28]
CMP             R6, R0
NOP
BLE             loc_133D00
MOV             R0, R5
BL              sub_13F90C
VCMPE.F32       S16, S0
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S16, S0
MOVGT           R8, R5
BGT             loc_133D00
CMP             R8, #0
MOVEQ           R8, R5
LDRD            R0, R1, [R4,#4]
ADD             R5, R5, #0x360
ADD             R0, R0, R0,LSL#3
ADD             R0, R0, R0,LSL#1
ADD             R0, R1, R0,LSL#5
CMP             R0, R5
BHI             loc_133CB4
CMP             R8, #0
BNE             loc_133EA8
B               loc_133EB8
LDRD            R0, R1, [R4,#4]
LDR             R2, =0xFFFFFCA0
MOV             R8, #0
MOV             R11, R8
ADD             R0, R0, R0,LSL#3
ADD             R0, R0, R0,LSL#1
ADD             R0, R2, R0,LSL#5
ADD             R5, R1, R0
MOV             R0, R5
BL              sub_136048
CMP             R0, #0
NOP
BEQ             loc_133DC8
MOV             R1, #0x64 ; 'd'
MOV             R0, R5
BL              sub_13F8F8
CMP             R0, #0
NOP
BEQ             loc_133DC8
MOV             R0, R5
LDR             R0, [R0,#0x28]
CMP             R0, R6
MOV             R9, R0
BGT             loc_133DC8
MOV             R0, R5
LDR             R0, [R0,#0x2C]
CMP             R6, R9
NOP
BLE             loc_133DB0
CMP             R0, #0
BEQ             loc_133DB0
MOV             R8, #0
MOV             R6, R9
MOV             R11, R8
CMP             R8, R0
BGE             loc_133DC8
MOV             R8, R0
MOV             R0, R5
LDR             R0, [R0,#0x20]
MOV             R11, R0
LDR             R0, [R4,#8]
SUB             R5, R5, #0x360
CMP             R0, R5
BLS             loc_133D48
CMP             R8, #0
MOVGT           R7, #1
MOVGT           R5, R0
BLE             loc_133EB8
MOV             R1, R11
MOV             R0, R5
BL              sub_13FC48
CMP             R0, #0
NOP
BEQ             loc_133E0C
MOV             R1, #1
MOV             R0, R5
BL              sub_13FCDC
LDRD            R0, R1, [R4,#4]
ADD             R5, R5, #0x360
ADD             R0, R0, R0,LSL#3
ADD             R0, R0, R0,LSL#1
ADD             R0, R1, R0,LSL#5
CMP             R0, R5
BHI             loc_133DE8
B               loc_133EB8
MOV             R0, R5
BL              sub_136048
CMP             R0, #0
NOP
BEQ             loc_133E84
MOV             R1, #0x64 ; 'd'
MOV             R0, R5
BL              sub_13F8F8
CMP             R0, #0
NOP
BNE             loc_133E84
MOV             R0, R5
LDR             R0, [R0,#0x28]
CMP             R0, R6
NOP
BGT             loc_133E84
MOV             R0, R5
BL              sub_13F90C
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S16, S0
MOVCC           R8, R5
LDRD            R0, R1, [R4,#4]
ADD             R5, R5, #0x360
ADD             R0, R0, R0,LSL#3
ADD             R0, R0, R0,LSL#1
ADD             R0, R1, R0,LSL#5
CMP             R0, R5
BHI             loc_133E2C
CMP             R8, #0
BEQ             loc_133EB8
MOV             R7, #1
MOV             R1, R7
MOV             R0, R8
BL              sub_13FCDC
LDR             R0, [R4,#0x18]
SUB             R0, R0, #1
STR             R0, [R4,#0x18]
MOV             R0, R10
BL              sub_1327BC
VPOP            {D8}
MOV             R0, R7
POP             {R4-R12,PC}

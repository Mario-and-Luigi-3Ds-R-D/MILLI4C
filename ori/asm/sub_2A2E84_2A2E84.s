PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, =off_6CE970
VPUSH           {D8}
LDR             R0, [R0]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
MOV             R1, R0,ASR#31
ADD             R0, R0, R1,LSR#24
MOV             R0, R0,ASR#8
VMOV            S0, R0
ADD             R0, R4, #0x100
VCVT.F32.S32    S16, S0
VMOV.F32        S0, S16
BL              sub_5A2484
LDM             R0, {R1,R2}
VMOV.F32        S0, S16
LDR             R0, [R0,#8]
ADD             R3, R4, #0x24 ; '$'
STR             R0, [R4,#0x2C]
ADD             R0, R4, #0x158
STM             R3, {R1,R2}
BL              sub_4E625C
LDR             R0, [R0]
STR             R0, [R4,#0x9C]
LDRB            R0, [R4,#0xFD]
CMP             R0, #0
BEQ             loc_2A2F34
CMP             R0, #1
BEQ             loc_2A2F3C
CMP             R0, #2
BNE             loc_2A2F34
ADD             R0, R4, #0x100
BL              sub_5F19B8
CMP             R0, #0
BNE             loc_2A2F34
ADD             R0, R4, #0x180
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
MOVCS           R0, #0
BCC             loc_2A2F34
STRB            R0, [R4,#0xFD]
VPOP            {D8}
POP             {R4,PC}
ADD             R0, R4, #0x100
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             loc_2A2F34
ADD             R0, R4, #0x180
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
MOVCS           R0, #3
BCC             loc_2A2F34
B               loc_2A2F30

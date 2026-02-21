PUSH            {R4-R8,LR}
MOV             R5, R0
LDR             R4, =off_6CE970
VLDR            S1, =0.0039062
LDR             R0, [R4]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S0, R0
ADD             R0, R5, #0x314
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S1
BL              sub_4E625C
LDR             R0, [R4]
MOV             R4, #0
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
MOV             R0, R0,LSL#8
MOV             R1, R0,ASR#31
ADD             R0, R0, R1,LSR#24
MOV             R0, R0,ASR#8
SXTH            R7, R0
ADD             R0, R4, R4,LSL#6
MOV             R1, R7
ADD             R6, R5, R0,LSL#2
ADD             R0, R6, #0x11C
BL              sub_123CE8
ADD             R0, R6, #0x10C
NOP
BL              sub_592F14
ADD             R4, R4, #1
CMP             R4, #2
BLT             loc_2A4BC0
LDRB            R0, [R5,#0x104]
CMP             R0, #0
BEQ             locret_2A4C64
CMP             R0, #1
BEQ             loc_2A4C4C
CMP             R0, #2
BEQ             locret_2A4C64
CMP             R0, #3
BNE             locret_2A4C64
ADD             R0, R5, #0x33C
VLDM            R0, {S0-S1}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             locret_2A4C64
MOV             R0, #0x108
MOV             R1, #0
LDRH            R0, [R0,R5]
CMP             R0, #0xFF
BEQ             loc_2A4C68
STRB            R1, [R5,#0x104]
AND             R1, R0, #0xFF
MOV             R0, R5
POP             {R4-R8,LR}
B               loc_2A464C
ADD             R0, R5, #0x33C
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
MOVGE           R0, #2
STRBGE          R0, [R5,#0x104]
POP             {R4-R8,PC}
LDR             R2, [R5,#0xC]
MOV             R0, R5
STRB            R1, [R5,#0x104]
CMP             R2, #0
BEQ             locret_2A4C64
POP             {R4-R8,LR}
B               sub_528B1C

MOV             R2, #0
LDR             R0, =0xCCAD
MOV             R1, R2
BL              sub_116B34
VLDR            S16, =0.0
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
MOVNE           R4, #0x8E
BNE             loc_160698
MOV             R2, #0
LDR             R0, =0xCCAE
MOV             R1, R2
BL              sub_116B34
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
BNE             loc_160664
MOV             R2, #0
LDR             R0, =0xCCAF
MOV             R1, R2
BL              sub_116B34
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
BNE             loc_160664
MOV             R2, #0
LDR             R0, =0xCCB0
MOV             R1, R2
BL              sub_116B34
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
BEQ             loc_16066C
MOV             R4, #0x8C
B               loc_160698
LDRH            R0, [R5,#4]
SUB             R1, R0, #0x100
SUBS            R1, R1, #0xAA
BNE             loc_160698
MOV             R2, #0
LDR             R0, =0xC9EA
MOV             R1, R2
BL              sub_116B34
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
MOVNE           R4, #0x8A
MOV             R8, #0
ADD             R5, R6, #0x15000
MOV             R0, #0x1D
STRH            R8, [R5,#0x98]
STRH            R7, [R5,#0x9A]
STRH            R4, [R5,#0x9C]
STRH            R0, [R5,#0x9E]
LDR             R0, [R6,#4]
MOV             R2, #6
MOV             R1, R8
BL              sub_53708C
STRB            R8, [R5,#0xA0]
LDR             R0, [R6]
MOV             R3, #1
LDR             R12, [R0,#0x50]
LDR             R0, =off_68AEE0
LDM             R0, {R1,R2}
MOV             R0, R6
VPOP            {D8}
POP             {R4-R8,LR}
BX              R12

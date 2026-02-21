PUSH            {R4-R12,LR}
MOV             R4, R0
BL              sub_573788
ADD             R9, R4, #0x2700
ADD             R9, R9, #0x6F ; 'o'
ADD             R7, R4, #0x2600
LDRB            R1, [R9]
ADD             R0, R4, #0x2400
ADD             R8, R4, #0x2400
CMP             R1, #0
LDR             R1, [R4,#0x4EC]
MOV             R10, #1
ADD             R7, R7, #0x99
ADD             R0, R0, #0x298
ADD             R8, R8, #0x2A4
ADD             R6, R4, #0x400
AND             R1, R1, #1
BEQ             loc_16BE3C
CMP             R1, #0
BEQ             loc_16BFB0
LDRB            R0, [R0]
TST             R0, #1
BEQ             loc_16BF84
LDR             R0, [R4,#0x658]
TST             R0, #2
BEQ             loc_16BF78
LDR             R0, [R4]
LDR             R1, [R0,#0x220]
MOV             R0, R4
BLX             R1
STRB            R10, [R7]
B               loc_16BFB0
CMP             R1, #0
BEQ             locret_16BF64
LDRB            R0, [R0]
TST             R0, #1
BEQ             loc_16BE5C
LDR             R1, [R4,#0x658]
TST             R1, #2
BNE             loc_16BE70
TST             R0, #2
BEQ             locret_16BF64
LDR             R0, [R4,#0x658]
TST             R0, #8
BEQ             locret_16BF64
ADD             R0, R4, #0x650
MOV             R5, #0
LDM             R0, {R0,R1}
MOV             R2, R10,LSL R5
MOV             R3, R2,ASR#31
AND             R2, R2, R0
AND             R3, R3, R1
ORRS            R2, R2, R3
BEQ             loc_16BF68
LDR             R11, =off_6D1648
LDR             R0, [R11]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, R5,LSL#2
ADD             R0, R0, #0x14000
LDR             R5, [R0,#0x184]
CMP             R5, #0
BEQ             locret_16BF64
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #7
BEQ             locret_16BF64
VLDR            S0, [R4,#0x10C]
VLDR            S1, [R5,#0x10C]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             locret_16BF64
ADD             R0, R5, #0x400
VLDR            S2, [R6,#0x234]
VLDR            S3, [R0,#0x234]
VADD.F32        S0, S0, S2
VADD.F32        S1, S1, S3
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
STRBLS          R10, [R9]
STRLS           R5, [R8]
BHI             locret_16BF64
STRB            R10, [R7]
LDR             R0, [R4]
LDR             R1, [R0,#0x220]
MOV             R0, R4
BLX             R1
LDR             R0, [R11]
LDR             R0, [R0,#0xBC]
LDR             R1, =0x2101F
NOP
BL              sub_164868
LDR             R1, [R4]
LDR             R2, [R1,#0x348]
MOV             R1, R0
MOV             R0, R4
BLX             R2
LDR             R1, [R4,#0x464]
MOV             R0, #0x10
BIC             R1, R1, #0x700
STR             R1, [R4,#0x464]
LDR             R1, =0x2684
STRH            R0, [R6,#0x68]
MOV             R0, #0xC8
STRH            R0, [R1,R4]
POP             {R4-R12,PC}
ADD             R5, R5, #1
CMP             R5, #0x40 ; '@'
BLT             loc_16BE7C
POP             {R4-R12,PC}
TST             R0, #8
BEQ             loc_16BFB0
B               loc_16BF98
TST             R0, #2
BEQ             loc_16BFB0
LDR             R0, [R4,#0x658]
TST             R0, #2
BEQ             loc_16BFA8
VLDR            S0, [R6,#0xC4]
VNEG.F32        S0, S0
VSTR            S0, [R6,#0xC4]
B               loc_16BFB0
TST             R0, #8
BNE             loc_16BE24
LDR             R0, [R4,#0x658]
TST             R0, #0x20
BEQ             loc_16BFC8
MOV             R1, #0
MOV             R0, R4
BL              sub_169C80
LDR             R0, [R8]
CMP             R0, #0
BEQ             locret_16BF64
VLDR            S0, [R4,#0x10C]
VLDR            S1, [R0,#0x10C]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BCS             loc_16BFF8
MOV             R0, R4
POP             {R4-R12,LR}
MOV             R1, #0
B               sub_169C80
ADD             R0, R0, #0x400
VLDR            S2, [R6,#0x234]
VLDR            S3, [R0,#0x234]
VADD.F32        S0, S0, S2
VADD.F32        S1, S1, S3
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLE             locret_16BF64
MOV             R1, #0
MOV             R0, R4
BL              sub_169C80
LDR             R0, [R4]
VLDR            S0, =-1.0
LDR             R1, [R0,#0x214]
VMOV.F32        S2, S0
VMOV.F32        S1, S0
MOV             R0, R4
BLX             R1
VLDR            S0, =0.0
MOV             R1, R4
POP             {R4-R12,LR}
VMOV.F32        S1, S0
MOV             R2, #0
LDR             R0, =0x10001
B               sub_1459F8

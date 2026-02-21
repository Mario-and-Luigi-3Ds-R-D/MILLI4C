PUSH            {R4-R10,LR}
MOV             R5, R0
VPUSH           {D8-D9}
LDR             R0, [R0]
TST             R0, #1
BEQ             loc_29B650
TST             R0, #2
BEQ             loc_29B4B4
LDR             R2, [R5,#0x10]
LDR             R1, [R2,#0x120]
TST             R1, #4
BNE             loc_29B650
BIC             R0, R0, #1
STR             R0, [R5]
MOV             R1, #0
VPOP            {D8-D9}
MOV             R0, R2
POP             {R4-R10,LR}
B               sub_1FF828
LDRSH           R0, [R5,#0x6C]
CMP             R0, #0
SUBGT           R0, R0, #1
BGT             loc_29B64C
LDR             R9, =off_6D1648
LDR             R8, =dword_68BC98
LDR             R6, [R5,#0x10]
MOV             R0, #0
VLDR            S16, =0.0
MOV             R10, R0
ADD             R4, R5, R0,LSL#2
LDR             R2, [R4,#0x18]
CMP             R2, #0
BEQ             loc_29B4F8
LDRB            R1, [R2,#0x171]
CMP             R1, #0
BEQ             loc_29B530
ADD             R0, R0, #1
CMP             R0, #3
BLT             loc_29B4DC
MOV             R7, #0
MOV             R4, R7
STR             R6, [R5,#0x10]
ADD             R1, R5, R4,LSL#2
LDR             R0, [R1,#0x18]
CMP             R0, #0
BEQ             loc_29B634
LDRB            R2, [R0,#0x171]
CMP             R2, #0
BEQ             loc_29B620
B               loc_29B634
MOV             R1, #1
MOV             R0, R2
BL              sub_532AA0
LDR             R6, [R4,#4]
LDR             R0, [R9]
MOV             R4, R6
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
MOV             R1, #0
BL              sub_19AD54
LDR             R0, [R4,#0x120]
ORR             R0, R0, #1
STR             R0, [R4,#0x120]
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
MOV             R1, #1
STR             R4, [R0,#0x1CC]
MOV             R0, R4
BL              sub_1FF828
LDR             R0, [R4]
LDR             R1, [R0,#0xBC]
MOV             R0, R4
BLX             R1
LDR             R0, [R4]
LDR             R1, [R0,#0xC4]
MOV             R0, R4
BLX             R1
LDR             R0, [R4,#0x120]
BIC             R0, R0, #8
STR             R0, [R4,#0x120]
LDR             R0, =0x316
VSTR            S16, [R4,#0x2B8]
VSTR            S16, [R4,#0x2BC]
VSTR            S16, [R4,#0x2C0]
VSTR            S16, [R4,#0x2C4]
STRH            R10, [R0,R4]
LDRD            R0, R1, [R8,#(off_68BCB8 - 0x68BC98)]
STRD            R0, R1, [R4,#4]
LDR             R0, [R9]
BL              sub_1E4604
ADD             R0, R0, #0x108
VLDM            R0, {S17-S18}
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
VLDR            S0, [R0,#0x28]
LDR             R0, [R9]
VSUB.F32        S18, S18, S0
LDR             R0, [R0,#0xBC]
VLDR            S0, [R0,#0x24]
VMOV.F32        S1, S18
MOV             R2, #0
VSUB.F32        S0, S17, S0
LDR             R0, =0x20032
MOV             R1, R2
BL              sub_1459F8
NOP
NOP
B               loc_29B504
LDR             R1, [R1,#4]
MOV             R7, #1
CMP             R1, R6
MOVEQ           R1, #1
BLEQ            sub_532AA0
ADD             R4, R4, #1
CMP             R4, #3
BLT             loc_29B510
CMP             R7, #0
MOVNE           R0, #0xA
BEQ             loc_29B658
STRH            R0, [R5,#0x6C]
VPOP            {D8-D9}
POP             {R4-R10,PC}
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
ADD             R7, R0, #0x15000
ADD             R7, R7, #0x14C
MOV             R4, #0
LDR             R6, [R7,R4,LSL#2]
CMP             R6, #0
BEQ             loc_29B71C
LDRB            R0, [R6,#0xB4]
CMP             R0, #1
BNE             loc_29B71C
LDR             R0, [R6,#0x120]
TST             R0, #1
BNE             loc_29B71C
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
MOV             R1, #0
BL              sub_19AD54
LDR             R0, [R6,#0x120]
ORR             R0, R0, #1
STR             R0, [R6,#0x120]
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
MOV             R1, #1
STR             R6, [R0,#0x1CC]
MOV             R0, R6
BL              sub_1FF828
LDR             R0, [R6]
LDR             R1, [R0,#0xBC]
MOV             R0, R6
BLX             R1
LDR             R0, [R6]
LDR             R1, [R0,#0xC4]
MOV             R0, R6
BLX             R1
LDR             R0, [R6,#0x120]
BIC             R0, R0, #8
STR             R0, [R6,#0x120]
LDR             R0, =0x316
VSTR            S16, [R6,#0x2B8]
VSTR            S16, [R6,#0x2BC]
VSTR            S16, [R6,#0x2C0]
VSTR            S16, [R6,#0x2C4]
STRH            R10, [R0,R6]
LDRD            R0, R1, [R8,#(off_68BCB8 - 0x68BC98)]
STRD            R0, R1, [R6,#4]
ADD             R4, R4, #1
CMP             R4, #0x20 ; ' '
BLT             loc_29B66C
LDR             R0, [R5]
ORR             R0, R0, #2
STR             R0, [R5]
VPOP            {D8-D9}
POP             {R4-R10,PC}

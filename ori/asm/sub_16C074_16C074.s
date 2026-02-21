PUSH            {R4-R11,LR}
MOV             R5, R0
LDR             R4, =off_6D1648
VPUSH           {D8}
SUB             SP, SP, #0x14
LDR             R0, [R4]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x3EC
LDR             R0, [R0]
CMP             R0, #0
BEQ             loc_16C200
ADD             R8, R5, #0x2400
ADD             R8, R8, #0x28C
LDR             R1, =0x2690
LDR             R2, [R8]
MOV             R0, #0
ADD             R11, R5, #0x2700
STR             R2, [R1,R5]
ADD             R11, R11, #0x6F ; 'o'
STR             R0, [R8]
LDRB            R1, [R11]
ADD             R0, R5, #0x5E0
STR             R0, [SP,#0x40+var_3C]
ADD             R0, R5, #0x400
ADD             R9, R5, #0x2400
ADD             R10, R5, #0x2600
ADD             R7, R5, #0x2400
ADD             R0, R0, #0x64 ; 'd'
CMP             R1, #0
ADD             R9, R9, #0x298
ADD             R10, R10, #0x99
ADD             R7, R7, #0x29C
ADD             R6, R5, #0x400
STR             R0, [SP,#0x40+var_40]
BEQ             loc_16C138
LDR             R0, [R4]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x3EC
VLDR            S16, =0.0
LDR             R4, [R0]
LDR             R0, [R4]
TST             R0, #1
ADDEQ           R0, R5, #0x2400
ADDEQ           R0, R0, #0x2A4
STREQ           R0, [SP,#0x40+var_38]
BEQ             loc_16C20C
B               loc_16C480
ADD             R0, R5, #0x108
ADD             R3, SP, #0x40+var_3C
LDM             R0, {R0-R2}
STM             R3, {R0-R2}
MOV             R0, R5
BL              sub_573AC4
LDRB            R0, [R9]
TST             R0, #2
BEQ             loc_16C168
LDR             R1, [R5,#0x5E0]
TST             R1, #0x1000
BNE             loc_16C17C
TST             R0, #1
BEQ             loc_16C18C
LDR             R0, [R5,#0x5E0]
TST             R0, #0x400
BEQ             loc_16C18C
ADD             R1, SP, #0x40+var_3C
MOV             R0, R5
BL              sub_16A148
STR             R0, [R7]
LDR             R0, [R7]
CMP             R0, #0
MOVNE           R0, #1
STRBNE          R0, [R11]
BEQ             loc_16C200
STRB            R0, [R10]
LDR             R0, [R5]
LDR             R1, [R0,#0x220]
MOV             R0, R5
BLX             R1
LDR             R0, [R4]
LDR             R0, [R0,#0xBC]
LDR             R1, =0x2101F
NOP
BL              sub_164868
MOV             R1, R0
LDR             R0, [R5]
LDR             R2, [R0,#0x348]
MOV             R0, R5
BLX             R2
LDR             R0, [R5,#0x464]
LDR             R2, =0x2684
BIC             R1, R0, #0x700
LDR             R0, [SP,#0x40+var_40]
STR             R1, [R0]
MOV             R1, #0x10
MOV             R0, #0xC8
STRH            R1, [R6,#0x68]
STRH            R0, [R2,R5]
ADD             SP, SP, #0x14
VPOP            {D8}
POP             {R4-R11,PC}
LDR             R0, [R4]
TST             R0, #2
BNE             loc_16C474
LDR             R1, [R4,#4]
LDR             R1, [R1,#8]
TST             R1, #1
BEQ             loc_16C474
LDR             R2, [R5,#0x4EC]
TST             R2, #1
BEQ             loc_16C32C
TST             R0, #0x14
BNE             loc_16C474
VLDR            S1, [R4,#0x20]
VLDR            S0, [R5,#0x10C]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BGE             loc_16C474
VLDR            S1, [R6,#0x1CC]
VLDR            S2, [R4,#0x24]
VADD.F32        S0, S0, S1
VCMPE.F32       S0, S2
VMRS            APSR_nzcv, FPSCR
BLS             loc_16C474
TST             R0, #0x20
BEQ             loc_16C2C4
VLDR            S2, [R5,#0x108]
VLDR            S0, [R6,#0x1C0]
VLDR            S1, [R4,#0x28]
VADD.F32        S2, S2, S0
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
BLE             loc_16C2C4
VLDR            S2, [R5,#0x118]
VADD.F32        S2, S2, S0
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
BHI             loc_16C2C4
VSUB.F32        S0, S1, S0
VSTR            S0, [R5,#0x108]
LDRB            R0, [R9]
TST             R0, #1
BNE             loc_16C310
VLDR            S0, [R6,#0xC4]
VNEG.F32        S0, S0
VSTR            S0, [R6,#0xC4]
B               loc_16C474
TST             R0, #8
BEQ             loc_16C474
VLDR            S2, [R5,#0x108]
VLDR            S0, [R6,#0x1BC]
VLDR            S1, [R4,#0x2C]
VADD.F32        S2, S2, S0
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
BLE             loc_16C474
VLDR            S2, [R5,#0x118]
VADD.F32        S2, S2, S0
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
BHI             loc_16C474
VSUB.F32        S0, S1, S0
VSTR            S0, [R5,#0x108]
LDRB            R0, [R9]
TST             R0, #2
BEQ             loc_16C2B4
LDR             R0, [R5]
LDR             R1, [R0,#0x220]
MOV             R0, R5
BLX             R1
MOV             R0, #1
STRB            R0, [R10]
B               loc_16C474
TST             R0, #0x28
BNE             loc_16C474
TST             R1, #0x400
BEQ             loc_16C34C
VLDR            S0, [R4,#0x18]
VCMPE.F32       S16, S0
VMRS            APSR_nzcv, FPSCR
BGT             loc_16C474
VLDR            S0, [R6,#0x1D0]
VLDR            S1, [R4,#0x2C]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BGE             loc_16C474
VLDR            S0, [R6,#0x1D8]
VLDR            S1, [R4,#0x28]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLS             loc_16C474
TST             R0, #4
BEQ             loc_16C420
VLDR            S1, [R5,#0x10C]
VLDR            S0, [R4,#0x20]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLE             loc_16C420
VLDR            S1, [R5,#0x11C]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BHI             loc_16C420
VSTR            S0, [R5,#0x10C]
STR             R4, [R8]
LDR             R0, [R5,#0x5E0]
ORR             R1, R0, #0x4000
LDR             R0, [SP,#0x40+var_3C]
STR             R1, [R0]
LDRB            R1, [R11]
MOV             R0, R5
CMP             R1, #0
BEQ             loc_16C474
LDR             R3, [SP,#0x40+var_40]
MOV             R1, #0
STRB            R1, [R11]
STR             R1, [R7]
LDR             R2, [SP,#0x40+var_38]
STR             R1, [R2]
LDR             R1, [R0,#0x464]
BIC             R1, R1, #0x700
ORR             R1, R1, #0x300
STR             R1, [R3]
LDR             R1, [R0]
LDR             R2, [R1,#0x36C]
MOV             R1, #8
BLX             R2
MOV             R0, #0
STRH            R0, [R6,#0x68]
B               loc_16C474
DCD off_6D1648
DCD 0x2690
DCFS 0.0
DCD 0x2101F
DCD 0x2684
TST             R0, #0x10
BEQ             loc_16C474
VLDR            S2, [R5,#0x10C]
VLDR            S0, [R6,#0x1CC]
VLDR            S1, [R4,#0x24]
VADD.F32        S2, S2, S0
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
BLE             loc_16C474
VLDR            S2, [R5,#0x11C]
VADD.F32        S2, S2, S0
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
BHI             loc_16C474
VSUB.F32        S0, S1, S0
VSTR            S0, [R5,#0x10C]
STR             R4, [R8]
LDR             R0, [R5,#0x5E0]
ORR             R1, R0, #0x2000
LDR             R0, [SP,#0x40+var_3C]
STR             R1, [R0]
LDR             R0, [R4,#0x34]!
TST             R0, #1
BEQ             loc_16C20C
LDR             R0, [R7]
CMP             R0, #0
BEQ             loc_16C200
VLDR            S1, [R0,#0x24]
VLDR            S0, [R5,#0x10C]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BCS             loc_16C4B8
ADD             SP, SP, #0x14
MOV             R0, R5
VPOP            {D8}
MOV             R1, #0
POP             {R4-R11,LR}
B               sub_169C80
VLDR            S1, [R6,#0x1CC]
VLDR            S2, [R0,#0x20]
VADD.F32        S0, S0, S1
VCMPE.F32       S0, S2
VMRS            APSR_nzcv, FPSCR
BLE             loc_16C200
MOV             R1, #0
MOV             R0, R5
BL              sub_169C80
LDR             R0, [R5]
VLDR            S0, =-1.0
LDR             R1, [R0,#0x214]
VMOV.F32        S2, S0
VMOV.F32        S1, S0
MOV             R0, R5
BLX             R1
VMOV.F32        S0, S16
ADD             SP, SP, #0x14
MOV             R1, R5
VPOP            {D8}
MOV             R2, #0
POP             {R4-R11,LR}
VMOV.F32        S1, S0
LDR             R0, =0x10001
B               sub_1459F8

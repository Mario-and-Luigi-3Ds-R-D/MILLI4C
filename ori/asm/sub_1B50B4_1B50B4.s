PUSH            {R4-R11,LR}
MOV             R4, R0
MOV             R2, R1
ADD             R10, R4, #0x3900
LDR             R0, =byte_68DBBC
LDR             R1, =0x19C98
LDR             R6, =0x21218
VPUSH           {D8}
SUB             SP, SP, #0x14
LDRB            R5, [R0]
ADD             R0, R4, #4
VLDR            S16, =2.0
LDM             R0, {R0,R3}
MOV             R5, R5,LSL#1
RSB             R7, R5, R5,LSL#4
ADD             R7, R7, R5,LSL#5
RSB             R8, R5, R5,LSL#3
ADD             R7, R1, R7,LSL#2
LDRSH           R12, [R3]
ADD             R1, R6, R8,LSL#3
ADD             R1, R1, R0
STR             R1, [SP,#0x40+var_40]
ADD             R1, R0, #0x20C00
ADD             R9, R0, #0x21000
ADD             R1, R1, #0x3E4
ADD             R11, R0, #0x23000
CMP             R12, #0x1F
MOV             R3, #0
ADD             R9, R9, #0x15C
ADD             R8, R0, R7
ADD             R11, R11, #0x470
STR             R1, [SP,#0x40+var_3C]
BEQ             loc_1B538C
BGE             loc_1B519C
CMP             R12, #0x15
LDREQ           R1, =0x3012
MOVEQ           R6, #1
BEQ             loc_1B5334
BGT             loc_1B5180
LDR             R1, =0x300E
CMP             R12, #0
BEQ             loc_1B51E8
CMP             R12, #1
BEQ             loc_1B51DC
CMP             R12, #0x11
BEQ             loc_1B537C
CMP             R12, #0x13
ADDEQ           R1, R1, #4
MOVEQ           R6, #0
BNE             loc_1B5258
B               loc_1B5334
CMP             R12, #0x16
BEQ             loc_1B533C
CMP             R12, #0x1A
BEQ             loc_1B5348
CMP             R12, #0x1C
BNE             loc_1B5258
B               loc_1B537C
CMP             R12, #0x25 ; '%'
BEQ             loc_1B53A8
BGT             loc_1B51C0
CMP             R12, #0x20 ; ' '
BEQ             loc_1B539C
CMP             R12, #0x21 ; '!'
CMPNE           R12, #0x24 ; '$'
BEQ             loc_1B53A8
B               loc_1B5258
CMP             R12, #0x2A ; '*'
BEQ             loc_1B53D0
CMP             R12, #0x2E ; '.'
BEQ             loc_1B53E0
CMP             R12, #0x30 ; '0'
BNE             loc_1B5258
B               loc_1B5414
LDRH            R3, [R9,#0xB8]
CMP             R3, #0xE
BEQ             loc_1B5258
ADD             R0, R0, #0x2000
ADD             R0, R0, #0x770
MOV             R6, #0
LDR             LR, [R0]
MOV             R12, #3
MOV             R7, R6
MOV             R3, LR,LSL#18
CMP             R12, R3,LSR#29
BHI             loc_1B521C
CMP             R2, #0
BIC             R2, LR, #0xF
ORRNE           R2, R2, #1
STR             R2, [R0]
MOV             R0, R9
BL              sub_543494
LDR             R0, [R4,#4]
LDR             R1, [R9]
VMOV.F32        S0, S16
ADD             R0, R0, #0x2000
ADD             R0, R0, #0x770
LDR             R12, [R1,#0x3C]
LDR             R0, [R0]
SXTH            R3, R7
MOV             R2, #0
AND             R0, R0, #0xF
ADD             R1, R0, R6
MOV             R0, R9
BLX             R12
LDR             R0, [R4,#8]
LDRSH           R0, [R0]
CMP             R0, #0x32; switch 50 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1B5264; jumptable 001B5264 default case, cases 1-16,20,22,23,25,34,35,39-45,47,48
DCD loc_1B5448; jump table for switch statement
MOV             R7, #0
B               loc_1B53FC
LDR             R1, =0x3012
MOV             R6, #2
B               loc_1B5334
LDR             R1, [R9,#0xA4]
LDRH            R2, [R9,#0xB8]
MOV             R6, #2
MOV             R7, #0
LDRB            R1, [R1,#0x6C]
SUB             R1, R1, R2
UXTH            R1, R1
CMP             R1, #2
LDR             R1, =0x3012
MOVNE           R3, #1
CMP             R3, #0
BNE             loc_1B53FC
B               loc_1B5258
LDR             R1, =0x3012
MOV             R6, #0
MOV             R7, #1
B               loc_1B53FC
LDRB            R1, [R10,#0xB8]
CMP             R1, #0
BNE             loc_1B53A8
B               loc_1B533C
LDRB            R1, [R10,#0xB8]
CMP             R1, #0
BEQ             loc_1B533C
LDR             R1, =0x3046
MOV             R6, #0xA
B               loc_1B5334
DCD byte_68DBBC
DCD 0x19C98
DCD 0x21218
DCFS 2.0
DCD 0x3012
DCD 0x300E
DCD 0x3046
MOV             R1, #0x3000
MOV             R6, #0
MOV             R7, #1
B               loc_1B53FC
CMP             R2, #0
MOV             R1, #0x3000
BNE             loc_1B53F4
MOV             R6, #0xA
B               loc_1B53F8
MOV             R6, #0xB
MOV             R7, #1
ADD             R0, R0, #0x2000
ADD             R0, R0, #0x770
LDR             R2, [R0]
BIC             R2, R2, #0xF
STR             R2, [R0]
B               loc_1B521C
LDR             R1, [R9,#0xA4]
LDRH            R3, [R9,#0xB8]
LDRB            R1, [R1,#0x6C]
SUB             R1, R1, R3
UXTH            R1, R1
CMP             R1, #0xA
BEQ             loc_1B5258
CMP             R1, #0xB
BEQ             loc_1B5258
CMP             R2, #0
MOV             R1, #0x3000
BNE             loc_1B53F4
B               loc_1B53EC
LDR             R0, [R4,#8]; jumptable 001B5264 case 0
LDRSH           R0, [R0,#2]
CMP             R0, #0x1E
CMPNE           R0, #0x18
BNE             def_1B5264; jumptable 001B5264 default case, cases 1-16,20,22,23,25,34,35,39-45,47,48
ADD             R7, R4, #0x1100
MOV             R6, #0
LDRH            R0, [R7,#0xB4]
CMP             R0, #0
LDRHI           R9, =0x19D54
BLS             loc_1B54AC
ADD             R1, R5, R6
LDR             R0, [R4,#4]
RSB             R2, R1, R1,LSL#4
ADD             R1, R2, R1,LSL#5
ADD             R1, R9, R1,LSL#2
LDR             R1, [R0,R1]!
LDR             R2, [R1,#0x44]
MOV             R1, #0
BLX             R2
LDRH            R0, [R7,#0xB4]
ADD             R1, R6, #1
UXTH            R6, R1
CMP             R0, R6
BHI             loc_1B5474
LDR             R0, [SP,#0x40+var_3C]
MOV             R1, #0
LDR             R0, [R0]
LDR             R2, [R0,#0x44]
LDR             R0, [SP,#0x40+var_3C]
BLX             R2
MOV             R0, #0
STRH            R0, [R7,#0xB4]
LDR             R0, [R4,#8]
LDRH            R0, [R0,#2]
CMP             R0, #0x1E
BNE             def_1B5264; jumptable 001B5264 default case, cases 1-16,20,22,23,25,34,35,39-45,47,48
LDR             R0, [R8]
MOV             R1, #0
LDR             R2, [R0,#0x44]
ADD             SP, SP, #0x14
MOV             R0, R8
VPOP            {D8}
POP             {R4-R11,LR}
BX              R2
ADD             R4, R4, #0x3800; jumptable 001B5264 case 17
ADD             R4, R4, #0x1BC
BL              sub_4635D8
MOV             R5, R0
MOV             R0, R4
BL              sub_5A26D0
LDM             R5, {R0-R2}
ADD             R3, R4, #0x1C
VLDR            S0, =0.0
VLDR            S1, =1.0
STM             R3, {R0-R2}
ADD             R3, R4, #4
STM             R3, {R0-R2}
ADD             R2, SP, #0x40+var_3C
MOV             R1, #0
VSTM            R2, {S0-S1}
VMOV.F32        S1, S16
VSTR            S0, [SP,#0x40+var_34]
VLDR            S0, =50.0
MOV             R0, R4
VMOV.F32        S2, S0
BL              sub_5A28C4
LDR             R0, [R8]
MOV             R1, #1
LDR             R2, [R0,#0x44]
MOV             R0, R8
BLX             R2
LDR             R0, [R8]
VMOV.F32        S0, S16
MOV             R2, #0
MOV             R3, #1
LDR             R12, [R0,#0x3C]
MOV             R1, R2
MOV             R0, R8
BLX             R12
BL              sub_4635D8
LDM             R0, {R1-R3}
LDR             R0, [SP,#0x40+var_40]
ADD             R0, R0, #0x10
STM             R0, {R1-R3}
ADD             SP, SP, #0x14; jumptable 001B5264 default case, cases 1-16,20,22,23,25,34,35,39-45,47,48
VPOP            {D8}
POP             {R4-R11,PC}
LDR             R0, [R8]; jumptable 001B5264 case 18
VMOV.F32        S0, S16
MOV             R3, #1
MOV             R2, #0
LDR             R12, [R0,#0x3C]
ADD             SP, SP, #0x14
MOV             R0, R8
VPOP            {D8}
MOV             R1, #2
POP             {R4-R11,LR}
BX              R12
LDR             R0, [R8]; jumptable 001B5264 case 19
MOV             R3, #0
VLDR            S0, =3.0
MOV             R2, R3
LDR             R12, [R0,#0x3C]
ADD             SP, SP, #0x14
MOV             R0, R8
VPOP            {D8}
MOV             R1, #5
POP             {R4-R11,LR}
BX              R12
VLDR            S16, =0.0; jumptable 001B5264 case 21
ADD             R4, R4, #0x1000
MOV             R3, #0
VSTR            S16, [R4,#0x1E0]
LDR             R0, [R8]
VLDR            S0, =3.0
MOV             R2, R3
MOV             R1, #0xA
LDR             R12, [R0,#0x3C]
MOV             R0, R8
BLX             R12
ADD             R4, R4, #0x1C0
ADD             R3, R11, #0x28 ; '('
LDM             R4, {R0-R2}
STM             R3, {R0-R2}
VSTR            S16, [R11,#0x10]
VSTR            S16, [R11,#0x14]
VSTR            S16, [R11,#0x18]
ADD             SP, SP, #0x14
VPOP            {D8}
POP             {R4-R11,PC}
LDR             R0, =byte_68DBBC; jumptable 001B5264 case 24
LDRB            R6, [R0]
CMP             R5, R6
LDRHI           R7, =0x19C98
BLS             def_1B5264; jumptable 001B5264 default case, cases 1-16,20,22,23,25,34,35,39-45,47,48
RSB             R0, R6, R6,LSL#4
LDR             R1, [R4,#4]
ADD             R0, R0, R6,LSL#5
ADD             R0, R7, R0,LSL#2
ADD             R0, R0, R1
LDR             R1, [R0]
LDR             R2, [R1,#0x44]
MOV             R1, #0
BLX             R2
ADD             R0, R6, #1
UXTH            R6, R0
CMP             R5, R6
BHI             loc_1B5668
ADD             SP, SP, #0x14
VPOP            {D8}
POP             {R4-R11,PC}
ADD             R7, R4, #0x1100; jumptable 001B5264 case 26
MOV             R6, #0
LDRH            R0, [R7,#0xB4]
CMP             R0, #0
LDRHI           R8, =0x19D54
BLS             loc_1B5770
ADD             R0, R5, R6
LDR             R1, [R4,#4]
RSB             R2, R0, R0,LSL#4
ADD             R0, R2, R0,LSL#5
ADD             R0, R8, R0,LSL#2
ADD             R0, R0, R1
LDR             R1, [R0]
LDR             R2, [R1,#0x44]
MOV             R1, #0
BLX             R2
LDRH            R0, [R7,#0xB4]
ADD             R1, R6, #1
UXTH            R6, R1
CMP             R0, R6
BHI             loc_1B56C0
B               loc_1B5770
LDR             R0, [R4,#4]; jumptable 001B5264 cases 31,32
ADD             R0, R0, #0x21000
ADD             R0, R0, #0xA0
LDR             R1, [R0]
LDR             R2, [R1,#0x44]
MOV             R1, #0
BLX             R2
ADD             R7, R4, #0x1100
MOV             R6, #0
LDRH            R0, [R7,#0xB4]
CMP             R0, #0
LDRHI           R8, =0x19D54
BLS             loc_1B5770
ADD             R2, R5, R6
LDR             R1, [R4,#4]
RSB             R0, R2, R2,LSL#4
ADD             R0, R0, R2,LSL#5
ADD             R0, R8, R0,LSL#2
ADD             R0, R0, R1
LDR             R1, [R0]
LDR             R2, [R1,#0x44]
MOV             R1, #0
BLX             R2
LDRH            R0, [R7,#0xB4]
ADD             R1, R6, #1
UXTH            R6, R1
CMP             R0, R6
BHI             loc_1B5734
LDR             R0, [SP,#0x40+var_3C]
MOV             R1, #0
LDR             R0, [R0]
LDR             R2, [R0,#0x44]
LDR             R0, [SP,#0x40+var_3C]
BLX             R2
MOV             R0, #0
STRH            R0, [R7,#0xB4]
ADD             SP, SP, #0x14
VPOP            {D8}
POP             {R4-R11,PC}
LDR             R0, [R4,#4]; jumptable 001B5264 case 33
LDRB            R1, [R10,#0xB8]
ADD             R4, R0, #0x21000
CMP             R1, #0
ADD             R4, R4, #0xA0
BEQ             loc_1B57E4
LDR             R1, =0x3046
MOV             R0, R4
BL              sub_543494
LDR             R0, [R4]
VMOV.F32        S0, S16
MOV             R3, #0
MOV             R2, R3
LDR             R12, [R0,#0x3C]
MOV             R1, #0xA
MOV             R0, R4
BLX             R12
B               loc_1B5810
LDR             R1, =0x3012
MOV             R0, R4
BL              sub_543494
LDR             R0, [R4]
VMOV.F32        S0, S16
MOV             R3, #0
MOV             R2, R3
LDR             R12, [R0,#0x3C]
MOV             R1, #2
MOV             R0, R4
BLX             R12
LDR             R0, [R4]
MOV             R1, #1
LDR             R2, [R0,#0x44]
ADD             SP, SP, #0x14
MOV             R0, R4
VPOP            {D8}
POP             {R4-R11,LR}
BX              R2
DCD 0x19D54
DCFS 0.0
DCFS 1.0
DCFS 50.0
DCFS 3.0
LDR             R0, [R4,#4]; jumptable 001B5264 case 36
LDRB            R1, [R10,#0xB8]
ADD             R4, R0, #0x21000
CMP             R1, #0
ADD             R4, R4, #0xA0
BEQ             loc_1B5894
LDR             R1, =0x3046
MOV             R0, R4
BL              sub_543494
LDR             R0, [R4]
MOV             R3, #0
VLDR            S0, =0.0
MOV             R2, R3
LDR             R12, [R0,#0x3C]
ADD             SP, SP, #0x14
MOV             R0, R4
VPOP            {D8}
MOV             R1, #0xA
POP             {R4-R11,LR}
BX              R12
LDR             R1, =0x3012
MOV             R0, R4
BL              sub_543494
LDR             R0, [R4]
MOV             R3, #0
VLDR            S0, =0.0
MOV             R2, R3
LDR             R12, [R0,#0x3C]
ADD             SP, SP, #0x14
MOV             R0, R4
VPOP            {D8}
MOV             R1, #1
POP             {R4-R11,LR}
BX              R12
LDR             R0, =byte_68DBBC; jumptable 001B5264 case 37
LDRB            R6, [R0]
CMP             R5, R6
LDRHI           R7, =0x19C98
BLS             def_1B5264; jumptable 001B5264 default case, cases 1-16,20,22,23,25,34,35,39-45,47,48
RSB             R0, R6, R6,LSL#4
LDR             R1, [R4,#4]
ADD             R0, R0, R6,LSL#5
ADD             R0, R7, R0,LSL#2
ADD             R0, R0, R1
LDR             R1, [R0]
LDR             R2, [R1,#0x44]
MOV             R1, #0
BLX             R2
ADD             R0, R6, #1
UXTH            R6, R0
CMP             R5, R6
BHI             loc_1B58E0
ADD             SP, SP, #0x14
VPOP            {D8}
POP             {R4-R11,PC}
LDR             R0, [R4,#4]; jumptable 001B5264 case 38
LDRB            R1, [R10,#0xB8]
ADD             R4, R0, #0x21000
CMP             R1, #0
ADD             R4, R4, #0xA0
BEQ             loc_1B5970
LDR             R1, =0x3046
MOV             R0, R4
BL              sub_543494
LDR             R0, [R4]
VMOV.F32        S0, S16
MOV             R3, #0
MOV             R2, R3
LDR             R12, [R0,#0x3C]
ADD             SP, SP, #0x14
MOV             R0, R4
VPOP            {D8}
MOV             R1, #0xA
POP             {R4-R11,LR}
BX              R12
LDR             R1, =0x3012
MOV             R0, R4
BL              sub_543494
LDR             R0, [R4]
VMOV.F32        S0, S16
MOV             R3, #0
MOV             R2, R3
LDR             R12, [R0,#0x3C]
ADD             SP, SP, #0x14
MOV             R0, R4
VPOP            {D8}
MOV             R1, #2
POP             {R4-R11,LR}
BX              R12
LDR             R0, [R9,#0xA4]; jumptable 001B5264 case 27
LDRH            R1, [R0,#0x1A]
BIC             R1, R1, #1
STRH            R1, [R0,#0x1A]
ADD             SP, SP, #0x14
VPOP            {D8}
POP             {R4-R11,PC}
ADD             R6, R4, #0x1100; jumptable 001B5264 case 28
LDRH            R0, [R6,#0xB4]
CMP             R0, #0
LDRNE           R7, =0x19C98
BEQ             loc_1B5A18
UXTH            R0, R0
ADD             R0, R0, R5
LDR             R2, [R4,#4]
RSB             R1, R0, R0,LSL#4
ADD             R0, R1, R0,LSL#5
ADD             R0, R7, R0,LSL#2
LDR             R1, [R0,R2]!
LDR             R2, [R1,#0x44]
MOV             R1, #0
BLX             R2
LDRH            R0, [R6,#0xB4]
SUB             R0, R0, #1
MOV             R0, R0,LSL#16
MOVS            R0, R0,LSR#16
STRH            R0, [R6,#0xB4]
BNE             loc_1B59D8
ADD             R4, R4, #0x1000
VLDR            S16, =0.0
VLDR            S0, [R4,#0x1B0]
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BCS             loc_1B5A3C
VLDR            S1, =360.0
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x1B0]
VLDR            S1, =0.71111
VMUL.F32        S0, S0, S1
BL              sub_464380
VLDR            S2, [R4,#0x1D8]
VLDR            S1, =60.0
VADD.F32        S1, S2, S1
VMUL.F32        S0, S0, S1
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BLE             loc_1B5AA8
VSUB.F32        S2, S1, S0
VDIV.F32        S0, S2, S1
BL              sub_5F5C58
VLDR            S2, =57.296
VLDR            S1, =180.0
MOV             R3, #0
VMUL.F32        S0, S0, S2
MOV             R2, R3
MOV             R1, #4
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x1B0]
LDR             R0, [R8]
VLDR            S0, =3.0
LDR             R12, [R0,#0x3C]
MOV             R0, R8
BLX             R12
B               loc_1B5AE8
VLDR            S3, =-60.0
VSUB.F32        S2, S3, S2
VSUB.F32        S2, S2, S0
VDIV.F32        S0, S2, S1
BL              sub_5F5C58
VLDR            S1, =-57.296
MOV             R3, #0
MOV             R2, R3
VMUL.F32        S0, S0, S1
MOV             R1, #5
VSTR            S0, [R4,#0x1B0]
LDR             R0, [R8]
VLDR            S0, =3.0
LDR             R12, [R0,#0x3C]
MOV             R0, R8
BLX             R12
VLDR            S1, [R4,#0x1B0]
VLDR            S0, =11.25
VSUB.F32        S0, S1, S0
VSTR            S0, [R4,#0x1B0]
ADD             SP, SP, #0x14
VPOP            {D8}
POP             {R4-R11,PC}
LDR             R0, [R8]; jumptable 001B5264 case 29
VMOV.F32        S0, S16
MOV             R3, #1
MOV             R2, #0
LDR             R12, [R0,#0x3C]
ADD             SP, SP, #0x14
MOV             R0, R8
VPOP            {D8}
MOV             R1, #3
POP             {R4-R11,LR}
BX              R12
ADD             R4, R4, #0x3800; jumptable 001B5264 case 30
ADD             R4, R4, #0x1BC
BL              sub_4635D8
MOV             R5, R0
MOV             R0, R4
BL              sub_5A26D0
LDM             R5, {R0-R2}
ADD             R3, R4, #0x1C
VLDR            S2, =0.0
VLDR            S0, =1.0
STM             R3, {R0-R2}
ADD             R3, R4, #4
VMOV.F32        S1, S16
STM             R3, {R0-R2}
MOV             R2, SP
VSTR            S2, [SP,#0x40+var_40]
VSTR            S0, [SP,#0x40+var_3C]
VSTR            S2, [SP,#0x40+var_38]
VLDR            S0, =-50.0
MOV             R1, #0
MOV             R0, R4
BL              sub_5A28C4
LDR             R0, [R8]
MOV             R3, #1
VLDR            S0, =-2.0
MOV             R2, #0xA
LDR             R12, [R0,#0x3C]
MOV             R1, R3
MOV             R0, R8
BLX             R12
ADD             SP, SP, #0x14
VPOP            {D8}
POP             {R4-R11,PC}
LDR             R0, =0x3A82; jumptable 001B5264 case 46
MOV             R1, #0
VLDR            S0, =0.0
ADD             R2, R4, #0x3800
STRB            R1, [R0,R4]
VSTR            S0, [R2,#0x27C]
ADD             SP, SP, #0x14
VPOP            {D8}
POP             {R4-R11,PC}
ADD             R0, R4, #0x3A00; jumptable 001B5264 case 49
ADD             R0, R0, #0x81
MOV             R1, #0xFF
STRB            R1, [R0]
LDR             R2, [R4,#4]
ADD             R3, R4, #0x3000
ADD             R3, R3, #0xA70
ADD             R2, R2, #0x108
LDM             R2, {R0-R2}
STM             R3, {R0-R2}
ADD             SP, SP, #0x14
VPOP            {D8}
POP             {R4-R11,PC}

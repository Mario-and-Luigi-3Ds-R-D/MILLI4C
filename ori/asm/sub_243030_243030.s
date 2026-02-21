PUSH            {R4-R12,LR}
MOV             R4, R0
VPUSH           {D8-D9}
LDR             R0, [R0,#4]
ADD             R7, R0, #0x21000
ADD             R0, R0, #0x23000
ADD             R7, R7, #0x15C
ADD             R0, R0, #0x4E0
BL              sub_234B48
LDR             R0, [R4,#8]
LDR             R11, =0x19C98
LDR             R10, =0x21218
LDR             R9, =byte_68DBBA
LDRSH           R0, [R0]
LDR             R8, =unk_68C17A
VLDR            S16, =2.0
CMP             R0, #0x13
BEQ             loc_2434A8
BGT             loc_243154
CMP             R0, #0
MOVEQ           R5, #0
BEQ             loc_2431F4
CMP             R0, #2
MOVEQ           R5, #0
BEQ             loc_243308
CMP             R0, #3
BNE             loc_243888
MOV             R11, R10
MOV             R5, #0
MOV             R10, R9
RSB             R1, R5, R5,LSL#4
LDR             R0, =0x19C98
ADD             R2, R1, R5,LSL#5
LDR             R1, [R4,#4]
ADD             R0, R0, R2,LSL#2
ADD             R6, R1, R0
RSB             R0, R5, R5,LSL#3
ADD             R0, R11, R0,LSL#3
ADD             R0, R0, R1
BL              sub_234B48
LDRB            R0, [R10]
CMP             R5, R0
BGE             loc_243440
LDR             R1, =0x2095
MOV             R0, R6
BL              sub_543494
LDR             R0, =unk_68C17A
RSB             R1, R5, R5,LSL#4
ADD             R0, R0, R1,LSL#1
LDRSH           R9, [R0,#8]
LDRH            R0, [R0,#0x1C]
CMP             R0, #0
MOVEQ           R2, #0
BEQ             loc_243128
LDR             R0, [R6,#0xA4]
LDRB            R1, [R0,#0x6C]
BL              sub_5F1670
MOV             R8, R0
LDR             R0, =dword_6D1F40
BL              sub_546DB0
MUL             R0, R0, R8
MOV             R2, R0,LSR#16
LDR             R0, [R6]
MOV             R1, R9
LDR             R3, [R0,#0x38]
MOV             R0, R6
BLX             R3
LDR             R0, [R6]
MOV             R1, #1
LDR             R2, [R0,#0x44]
MOV             R0, R6
BLX             R2
B               loc_243454
CMP             R0, #0x15
MOVEQ           R5, #0
BEQ             loc_243604
CMP             R0, #0x17
MOVEQ           R5, #0
BEQ             loc_2436FC
CMP             R0, #0x1B
MOVEQ           R5, #0
BNE             loc_243888
RSB             R0, R5, R5,LSL#4
ADD             R1, R0, R5,LSL#5
LDR             R0, [R4,#4]
ADD             R1, R11, R1,LSL#2
ADD             R6, R0, R1
RSB             R1, R5, R5,LSL#3
ADD             R1, R10, R1,LSL#3
ADD             R0, R0, R1
BL              sub_234B48
LDRB            R0, [R9]
CMP             R5, R0
BGE             loc_243810
LDR             R1, =0x20E6
MOV             R0, R6
BL              sub_543494
LDR             R0, [R6]
RSB             R1, R5, R5,LSL#4
VMOV.F32        S0, S16
ADD             R1, R8, R1,LSL#1
LDR             R12, [R0,#0x3C]
MOV             R3, #0
LDRSH           R1, [R1,#0x12]
MOV             R2, R3
MOV             R0, R6
BLX             R12
LDR             R0, [R6]
MOV             R1, #1
LDR             R2, [R0,#0x44]
MOV             R0, R6
BLX             R2
B               loc_243824
RSB             R0, R5, R5,LSL#4
ADD             R1, R0, R5,LSL#5
LDR             R0, [R4,#4]
ADD             R1, R11, R1,LSL#2
ADD             R6, R0, R1
RSB             R1, R5, R5,LSL#3
ADD             R1, R10, R1,LSL#3
ADD             R0, R0, R1
BL              sub_234B48
LDR             R0, =byte_68DBBA
LDRB            R0, [R0]
CMP             R5, R0
BGE             loc_2432A8
LDR             R1, =0x2018
MOV             R0, R6
BL              sub_543494
LDR             R0, =unk_68C17A
RSB             R1, R5, R5,LSL#4
ADD             R0, R0, R1,LSL#1
LDRSH           R9, [R0,#8]
LDRH            R0, [R0,#0x1C]
CMP             R0, #0
MOVEQ           R2, #0
BEQ             loc_243274
LDR             R0, [R6,#0xA4]
LDRB            R1, [R0,#0x6C]
BL              sub_5F1670
MOV             R8, R0
LDR             R0, =dword_6D1F40
BL              sub_546DB0
MUL             R0, R0, R8
MOV             R2, R0,LSR#16
LDR             R0, [R6]
VMOV.F32        S0, S16
MOV             R3, #0
MOV             R1, R9
LDR             R12, [R0,#0x3C]
MOV             R0, R6
BLX             R12
LDR             R0, [R6]
MOV             R1, #1
LDR             R2, [R0,#0x44]
MOV             R0, R6
BLX             R2
B               loc_2432BC
LDR             R0, [R6]
MOV             R1, #0
LDR             R2, [R0,#0x44]
MOV             R0, R6
BLX             R2
ADD             R5, R5, #1
CMP             R5, #0x9F
BLT             loc_2431F4
MOV             R1, #0x2000
MOV             R0, R7
BL              sub_543494
LDR             R0, [R7]
MOV             R2, #0
MOV             R1, R2
LDR             R3, [R0,#0x38]
MOV             R0, R7
BLX             R3
LDR             R0, [R7]
MOV             R1, #1
LDR             R2, [R0,#0x44]
MOV             R0, R7
VPOP            {D8-D9}
POP             {R4-R12,LR}
BX              R2
RSB             R0, R5, R5,LSL#4
ADD             R1, R0, R5,LSL#5
LDR             R0, [R4,#4]
ADD             R1, R11, R1,LSL#2
ADD             R6, R0, R1
RSB             R1, R5, R5,LSL#3
ADD             R1, R10, R1,LSL#3
ADD             R0, R0, R1
BL              sub_234B48
LDR             R0, =byte_68DBBA
LDRB            R0, [R0]
CMP             R5, R0
BGE             loc_2433D8
MOV             R1, #0x2080
MOV             R0, R6
BL              sub_543494
LDR             R0, =unk_68C17A
RSB             R1, R5, R5,LSL#4
ADD             R0, R0, R1,LSL#1
LDRSH           R9, [R0,#8]
LDRH            R0, [R0,#0x1C]
CMP             R0, #0
MOVEQ           R2, #0
BEQ             loc_243388
LDR             R0, [R6,#0xA4]
LDRB            R1, [R0,#0x6C]
BL              sub_5F1670
MOV             R8, R0
LDR             R0, =dword_6D1F40
BL              sub_546DB0
MUL             R0, R0, R8
MOV             R2, R0,LSR#16
LDR             R0, [R6]
MOV             R1, R9
LDR             R3, [R0,#0x38]
MOV             R0, R6
BLX             R3
LDR             R0, [R6]
MOV             R1, #1
LDR             R2, [R0,#0x44]
MOV             R0, R6
BLX             R2
B               loc_2433EC
DCD 0x19C98
DCD 0x21218
DCD byte_68DBBA
DCD unk_68C17A
DCFS 2.0
DCD 0x2095
DCD dword_6D1F40
DCD 0x20E6
DCD 0x2018
LDR             R0, [R6]
MOV             R1, #0
LDR             R2, [R0,#0x44]
MOV             R0, R6
BLX             R2
ADD             R5, R5, #1
CMP             R5, #0x9F
BLT             loc_243308
MOV             R1, #0x2000
MOV             R0, R7
BL              sub_543494
LDR             R0, [R7]
VMOV.F32        S0, S16
MOV             R3, #0
MOV             R2, R3
LDR             R12, [R0,#0x3C]
MOV             R1, #4
MOV             R0, R7
BLX             R12
LDR             R0, [R7]
MOV             R1, #1
LDR             R2, [R0,#0x44]
MOV             R0, R7
VPOP            {D8-D9}
POP             {R4-R12,LR}
BX              R2
LDR             R0, [R6]
MOV             R1, #0
LDR             R2, [R0,#0x44]
MOV             R0, R6
BLX             R2
ADD             R5, R5, #1
CMP             R5, #0x9F
BLT             loc_2430A8
MOV             R1, #0x2000
MOV             R0, R7
BL              sub_543494
LDR             R0, [R7]
VMOV.F32        S0, S16
MOV             R3, #0
MOV             R2, R3
LDR             R12, [R0,#0x3C]
MOV             R1, #6
MOV             R0, R7
BLX             R12
LDR             R0, [R7]
MOV             R1, #1
LDR             R2, [R0,#0x44]
MOV             R0, R7
VPOP            {D8-D9}
POP             {R4-R12,LR}
BX              R2
VLDR            S17, =0.5
VLDR            S19, =1.0
VLDR            S18, =256.0
MOV             R5, #0
RSB             R0, R5, R5,LSL#4
ADD             R1, R0, R5,LSL#5
LDR             R0, [R4,#4]
ADD             R1, R11, R1,LSL#2
ADD             R6, R0, R1
RSB             R1, R5, R5,LSL#3
ADD             R1, R10, R1,LSL#3
ADD             R0, R0, R1
BL              sub_234B48
LDRB            R0, [R9]
CMP             R5, R0
BGE             loc_243588
LDR             R1, =0x20B4
MOV             R0, R6
BL              sub_543494
LDR             R2, [R6]
LDR             R0, =unk_68C17A
RSB             R1, R5, R5,LSL#4
VMOV.F32        S0, S16
LDR             R12, [R2,#0x3C]
ADD             R8, R0, R1,LSL#1
MOV             R3, #0
LDRSH           R1, [R8,#0x12]
MOV             R2, R3
MOV             R0, R6
BLX             R12
LDRH            R0, [R8,#0x1C]
CMP             R0, #0
BNE             loc_243570
LDR             R0, =dword_6D1F40
BL              sub_546DB0
RSB             R0, R0, R0,LSL#4
MOV             R0, R0,LSL#1
MOV             R0, R0,LSR#16
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
LDR             R0, [R6,#0xA4]
ADD             R0, R0, #0x10
VCVT.F32.U32    S0, S0
VMUL.F32        S1, S0, S17
VADDNE.F32      S1, S1, S19
VMUL.F32        S0, S1, S18
VCVT.S32.F32    S0, S0
VMOV            R1, S0
BL              sub_485780
LDR             R0, [R6]
MOV             R1, #1
LDR             R2, [R0,#0x44]
MOV             R0, R6
BLX             R2
B               loc_24359C
LDR             R0, [R6]
MOV             R1, #0
LDR             R2, [R0,#0x44]
MOV             R0, R6
BLX             R2
ADD             R5, R5, #1
CMP             R5, #0x9F
BLT             loc_2434B8
LDR             R1, =0x2014
MOV             R0, R7
BL              sub_543494
LDR             R0, [R4,#4]
LDR             R1, [R7]
VMOV.F32        S0, S16
ADD             R0, R0, #0x2000
ADD             R0, R0, #0x770
LDR             R12, [R1,#0x3C]
LDR             R0, [R0]
MOV             R3, #0
MOV             R2, R3
AND             R0, R0, #0xF
ADD             R1, R0, #2
MOV             R0, R7
BLX             R12
LDR             R0, [R7]
MOV             R1, #1
LDR             R2, [R0,#0x44]
MOV             R0, R7
VPOP            {D8-D9}
POP             {R4-R12,LR}
BX              R2
RSB             R0, R5, R5,LSL#4
ADD             R1, R0, R5,LSL#5
LDR             R0, [R4,#4]
ADD             R1, R11, R1,LSL#2
ADD             R6, R0, R1
RSB             R1, R5, R5,LSL#3
ADD             R1, R10, R1,LSL#3
ADD             R0, R0, R1
BL              sub_234B48
LDRB            R0, [R9]
CMP             R5, R0
BGE             loc_243680
LDR             R1, =0x20C8
MOV             R0, R6
BL              sub_543494
LDR             R2, [R6]
RSB             R0, R5, R5,LSL#4
VMOV.F32        S0, S16
ADD             R0, R8, R0,LSL#1
LDR             R12, [R2,#0x3C]
LDRSH           R1, [R0,#0x12]
MOV             R3, #0
MOV             R2, R3
MOV             R0, R6
BLX             R12
LDR             R0, [R6]
MOV             R1, #1
LDR             R2, [R0,#0x44]
MOV             R0, R6
BLX             R2
B               loc_243694
LDR             R0, [R6]
MOV             R1, #0
LDR             R2, [R0,#0x44]
MOV             R0, R6
BLX             R2
ADD             R5, R5, #1
CMP             R5, #0x9F
BLT             loc_243604
MOV             R1, #0x2000
MOV             R0, R7
BL              sub_543494
LDR             R0, [R4,#4]
LDR             R1, [R7]
VMOV.F32        S0, S16
ADD             R0, R0, #0x2000
ADD             R0, R0, #0x770
LDR             R12, [R1,#0x3C]
LDR             R0, [R0]
MOV             R3, #0
MOV             R2, R3
AND             R0, R0, #0xF
ADD             R1, R0, #4
MOV             R0, R7
BLX             R12
LDR             R0, [R7]
MOV             R1, #1
LDR             R2, [R0,#0x44]
MOV             R0, R7
VPOP            {D8-D9}
POP             {R4-R12,LR}
BX              R2
RSB             R0, R5, R5,LSL#4
ADD             R1, R0, R5,LSL#5
LDR             R0, [R4,#4]
ADD             R1, R11, R1,LSL#2
ADD             R6, R0, R1
RSB             R1, R5, R5,LSL#3
ADD             R1, R10, R1,LSL#3
ADD             R0, R0, R1
BL              sub_234B48
LDRB            R0, [R9]
CMP             R5, R0
BGE             loc_243778
LDR             R1, =0x20D2
MOV             R0, R6
BL              sub_543494
LDR             R2, [R6]
RSB             R0, R5, R5,LSL#4
VMOV.F32        S0, S16
ADD             R0, R8, R0,LSL#1
LDR             R12, [R2,#0x3C]
LDRSH           R1, [R0,#0x12]
MOV             R3, #1
MOV             R2, #0
MOV             R0, R6
BLX             R12
LDR             R0, [R6]
MOV             R1, #1
LDR             R2, [R0,#0x44]
MOV             R0, R6
BLX             R2
B               loc_24378C
LDR             R0, [R6]
MOV             R1, #0
LDR             R2, [R0,#0x44]
MOV             R0, R6
BLX             R2
ADD             R5, R5, #1
CMP             R5, #0x9F
BLT             loc_2436FC
MOV             R1, #0x2000
MOV             R0, R7
BL              sub_543494
LDR             R0, [R4,#4]
LDR             R1, [R7]
VMOV.F32        S0, S16
ADD             R0, R0, #0x2000
ADD             R0, R0, #0x770
LDR             R12, [R1,#0x3C]
LDR             R0, [R0]
MOV             R3, #1
MOV             R2, #0
AND             R0, R0, #0xF
ADD             R1, R0, #6
MOV             R0, R7
BLX             R12
LDR             R0, [R7]
MOV             R1, #1
LDR             R2, [R0,#0x44]
MOV             R0, R7
VPOP            {D8-D9}
POP             {R4-R12,LR}
BX              R2
DCFS 0.5
DCFS 1.0
DCFS 256.0
DCD 0x20B4
DCD 0x2014
DCD 0x20C8
DCD 0x20D2
LDR             R0, [R6]
MOV             R1, #0
LDR             R2, [R0,#0x44]
MOV             R0, R6
BLX             R2
ADD             R5, R5, #1
CMP             R5, #0x9F
BLT             loc_243178
LDR             R1, =0x2010
MOV             R0, R7
BL              sub_543494
LDR             R0, [R4,#4]
LDR             R1, [R7]
VMOV.F32        S0, S16
ADD             R0, R0, #0x2000
ADD             R0, R0, #0x770
LDR             R12, [R1,#0x3C]
LDR             R0, [R0]
MOV             R3, #1
MOV             R2, #0
AND             R1, R0, #0xF
MOV             R0, R7
BLX             R12
LDR             R0, [R7]
MOV             R1, #1
LDR             R2, [R0,#0x44]
MOV             R0, R7
VPOP            {D8-D9}
POP             {R4-R12,LR}
BX              R2
VPOP            {D8-D9}
POP             {R4-R12,PC}

B               loc_15E94C
B               loc_15E94C
B               loc_15E94C
B               loc_15E94C
B               loc_15E94C
PUSH            {R4-R8,LR}
MOV             R6, R3
MOV             R7, R1
LDR             R0, =off_6D1648
MOV             R8, R2
ADD             R4, R3, #8
ADD             R5, R3, #0x68 ; 'h'
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
LDR             R1, [R4]
LDRD            R2, R3, [R4,#0x10]
ADD             R5, R5, #4
ADD             R0, R0, #0x16000
VLDM            R5, {S0-S2}
SXTH            R3, R3
SXTH            R2, R2
ADD             R0, R0, #0x338
BL              sub_21E69C
MOV             R3, R0
VMOV            S0, R3
LDRH            R0, [R6,#2]
MOV             R2, R8
MOV             R1, R7
VCVT.F32.U32    S0, S0
BL              sub_145730
MOV             R0, #0
POP             {R4-R8,PC}
DCD off_6D1648
LDR             R0, =off_6D1648
PUSH            {R4,LR}
ADD             R4, R3, #8
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
LDM             R4, {R1,R2}
ADD             R0, R0, #0x338
BL              sub_21F250
MOV             R0, #0
POP             {R4,PC}
DCD off_6D1648
PUSH            {R4,R5}
LDRH            R4, [R3]
LDR             R12, =unk_6CFAF8
ADD             R12, R12, R4,LSL#3
LDR             R4, [R12,#-0xD74]
LDR             R12, [R12,#-0xD78]
TST             R4, #1
ADD             R0, R0, R4,ASR#1
BEQ             loc_15BB5C
LDR             R4, [R0]
LDR             R12, [R4,R12]
POP             {R4,R5}
BX              R12
DCD unk_6CFAF8
PUSH            {R4-R8,LR}
MOV             R4, R3
ADD             R3, R3, #8
LDR             R0, =off_6D1648
LDM             R3, {R7,R8}
MOV             R5, R1
MOV             R6, R2
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
MOV             R2, R8
MOV             R1, R7
BL              sub_19A13C
LDRH            R0, [R4,#2]
MOV             R2, R6
MOV             R1, R5
BL              sub_145730
MOV             R0, #0
POP             {R4-R8,PC}
DCD off_6D1648
PUSH            {R4-R6,LR}
ADD             R0, R3, #8
VPUSH           {D8}
LDRD            R4, R5, [R0]
LDR             R0, =off_6D1648
VLDR            S16, [R3,#0x70]
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
VMOV.F32        S0, S16
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
MOV             R2, R5
MOV             R1, R4
BL              sub_19A2E8
VPOP            {D8}
MOV             R0, #0
POP             {R4-R6,PC}
DCD off_6D1648
PUSH            {R4,LR}
VLDR            S1, =0.5
ADD             R4, R3, #8
VPUSH           {D8}
SUB             SP, SP, #8
LDRD            R0, R1, [R3,#0x6C]
STRD            R0, R1, [SP,#0x60+var_60]
LDR             R0, [R3,#0x14]
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
LDR             R0, =off_6D1648
VCVT.F32.U32    S0, S0
LDR             R0, [R0]
VMUL.F32        S16, S0, S1
VLDRNE          S0, =1.0
VADDNE.F32      S16, S16, S0
LDR             R0, [R0,#0xC0]
VMOV.F32        S0, S16
LDR             R1, [R4]
MOV             R2, SP
BL              sub_160D64
ADD             SP, SP, #8
MOV             R0, #0
VPOP            {D8}
POP             {R4,PC}
DCFS 0.5
DCFS 1.0
DCD off_6D1648
PUSH            {R4,R5,LR}
ADD             R4, R3, #0x68 ; 'h'
SUB             SP, SP, #0xC
LDRD            R0, R1, [R4,#4]
ADD             R5, R3, #8
STRD            R0, R1, [SP,#0x68+var_68]
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xC0]
VLDR            S0, [R4,#0xC]
VLDR            S1, =2.0
LDR             R1, [R5]
MOV             R2, SP
VMUL.F32        S0, S0, S1
BL              sub_160DD4
ADD             SP, SP, #0xC
MOV             R0, #0
POP             {R4,R5,PC}
DCD off_6D1648
DCFS 2.0
PUSH            {R4,LR}
LDR             R0, [R3,#0x6C]
LDR             R2, [R3,#0x70]
SUB             SP, SP, #8
LDR             R4, =off_6D1648
STMEA           SP, {R0,R2}
LDR             R0, [R3,#8]
CMP             R0, #1
BNE             loc_15BD2C
LDR             R0, [R4]
LDR             R0, [R0,#0xC0]
ADD             R0, R0, #0x14400
ADD             R0, R0, #0x94
VLDR            S0, [SP,#0x6C+var_6C]
VLDR            S1, [R0,#4]
VADD.F32        S0, S1, S0
VSTR            S0, [SP,#0x6C+var_6C]
LDR             R0, [R4]
LDR             R0, [R0,#0xC0]
ADD             R0, R0, #0x14400
ADD             R0, R0, #0x94
VLDR            S0, [SP,#0x6C+var_68]
VLDR            S1, [R0,#8]
VADD.F32        S0, S1, S0
VSTR            S0, [SP,#0x6C+var_68]
LDR             R0, [R4]
LDR             R0, [R0,#0xC0]
MOV             R1, SP
NOP
BL              sub_160B00
ADD             SP, SP, #8
MOV             R0, #0
POP             {R4,PC}
DCD off_6D1648
PUSH            {R4-R8,LR}
MOV             R6, R1
MOV             R7, R2
LDR             R0, =off_6D1648
MOV             R4, R3
ADD             R5, R3, #8
LDR             R0, [R0]
LDR             R0, [R0,#0xC0]
LDR             R1, [R5]
BL              sub_160584
VMOV            S0, R0
LDRH            R0, [R4,#2]
MOV             R2, R7
MOV             R1, R6
VCVT.F32.U32    S0, S0
BL              sub_145730
MOV             R0, #0
POP             {R4-R8,PC}
DCD off_6D1648
LDR             R0, =off_6D1648
PUSH            {R4,LR}
ADD             R4, R3, #8
LDR             R0, [R0]
LDR             R0, [R0,#0xC0]
LDM             R4, {R1,R2}
AND             R2, R2, #0xFF
BL              sub_160898
MOV             R0, #0
POP             {R4,PC}
DCD off_6D1648
PUSH            {R4-R6,LR}
ADD             R4, R3, #8
LDRB            R2, [R1,#0x14]
LDR             R1, [R0,#4]
LDR             R0, =0x13C8C
LDR             R3, [R3,#8]
ADD             R0, R0, R2,LSL#2
LDR             R2, [R4,#8]
LDR             R0, [R1,R0]
ADD             R6, R0, R3,LSL#1
ADD             R5, R0, R2,LSL#1
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
LDRB            R3, [R5,#1]
LDR             R2, [R4,#4]
LDRB            R1, [R6,#1]
ADD             R0, R0, #0x338
BL              sub_21F19C
MOV             R0, #0
POP             {R4-R6,PC}
DCD 0x13C8C
DCD off_6D1648
PUSH            {R4,LR}
VLDR            S1, =0.5
VPUSH           {D8}
LDR             R0, [R3,#8]
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
LDR             R0, =off_6D1648
VCVT.F32.U32    S0, S0
LDR             R0, [R0]
VMUL.F32        S16, S0, S1
VLDRNE          S0, =1.0
VADDNE.F32      S16, S16, S0
LDR             R0, [R0,#0xBC]
VMOV.F32        S0, S16
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x2E8
BL              sub_1E3014
VPOP            {D8}
MOV             R0, #0
POP             {R4,PC}
DCFS 0.5
DCFS 1.0
DCD off_6D1648
LDR             R0, =off_6D1648
PUSH            {R4,LR}
ADD             R4, R3, #8
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
VLDR            S0, [R4,#0xC]
VLDR            S1, [R4,#8]
VLDR            S4, [R4,#4]
VLDR            S5, [R4]
VCVT.F32.S32    S3, S0
VCVT.F32.S32    S2, S1
VCVT.F32.S32    S1, S4
VCVT.F32.S32    S0, S5
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x2E8
BL              sub_1E322C
MOV             R0, #0
POP             {R4,PC}
DCD off_6D1648
ALIGN 8
PUSH            {R4-R10,LR}
MOV             R5, R0
MOV             R8, R1
ADD             R7, R5, #0x400
LDRH            R0, [R3]
MOV             R9, R2
MOV             R6, R3
SUB             R1, R0, #0x1C8
CMP             R1, #5; switch 5 cases
ADD             R0, R3, #8
ADD             R4, R5, #0x470
ADD             R7, R7, #0x6C ; 'l'
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_15BF08; jumptable 0015BF08 default case
DCD loc_15BF24; jump table for switch statement
MOV             R0, #3; jumptable 0015BF08 case 0
STRB            R0, [R5,#0x46C]
B               def_15BF08; jumptable 0015BF08 default case
LDR             R1, [R0]; jumptable 0015BF08 case 1
STRB            R1, [R4]
LDR             R0, [R0,#4]
STRB            R0, [R4,#1]
B               def_15BF08; jumptable 0015BF08 default case
LDR             R1, [R0]; jumptable 0015BF08 case 2
STRB            R1, [R4,#2]
LDR             R0, [R0,#4]
STRB            R0, [R4,#5]
B               def_15BF08; jumptable 0015BF08 default case
LDR             R1, [R0]; jumptable 0015BF08 case 3
STRB            R1, [R4,#3]
LDR             R0, [R0,#4]
STRB            R0, [R4,#4]
B               def_15BF08; jumptable 0015BF08 default case
LDR             R0, =off_6D1648; jumptable 0015BF08 case 4
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
LDRB            R1, [R5,#0x46C]
ADD             R0, R0, #0x13C
MOV             R2, R4
BL              loc_19D68C
LDRB            R1, [R0,#0xB5]
LDRH            R0, [R6,#2]
MOV             R2, R9
VMOV            S0, R1
MOV             R1, R8
VCVT.F32.U32    S0, S0
BL              sub_145730
MOV             R0, #0xFF
STRB            R0, [R7]
MOV             R0, #0; jumptable 0015BF08 default case
POP             {R4-R10,PC}
DCD off_6D1648
ALIGN 0x10
PUSH            {R4-R10,LR}
MOV             R6, R0
MOV             R8, R1
MOV             R9, R2
LDRH            R0, [R3]
MOV             R5, R3
ADD             R4, R6, #0x470
SUB             R2, R0, #0x100
SUB             R2, R2, #0xBE
CMP             R2, #0xA; switch 10 cases
ADD             R1, R3, #8
ADD             R0, R3, #0x68 ; 'h'
LDRCC           PC, [PC,R2,LSL#2]; switch jump
B               def_15BFF0; jumptable 0015BFF0 default case
DCD loc_15C020; jump table for switch statement
MOV             R0, #2; jumptable 0015BFF0 case 0
STRB            R0, [R6,#0x46C]
B               def_15BFF0; jumptable 0015BFF0 default case
LDR             R0, [R1]; jumptable 0015BFF0 case 1
STRH            R0, [R4]
B               def_15BFF0; jumptable 0015BFF0 default case
LDR             R0, [R1]; jumptable 0015BFF0 case 2
STRH            R0, [R4,#2]
LDR             R0, [R1,#4]
STRB            R0, [R4,#4]
B               def_15BFF0; jumptable 0015BFF0 default case
LDR             R1, [R0]; jumptable 0015BFF0 case 3
STR             R1, [R4,#8]
LDR             R1, [R0,#4]
STR             R1, [R4,#0xC]
LDR             R0, [R0,#8]
STR             R0, [R4,#0x10]
B               def_15BFF0; jumptable 0015BFF0 default case
LDR             R1, [R0]; jumptable 0015BFF0 case 4
STR             R1, [R4,#0x14]
LDR             R1, [R0,#4]
STR             R1, [R4,#0x18]
LDR             R1, [R0,#8]
STR             R1, [R4,#0x1C]
LDR             R0, [R0,#0xC]
STR             R0, [R4,#0x20]
B               def_15BFF0; jumptable 0015BFF0 default case
LDR             R1, [R0]; jumptable 0015BFF0 case 5
STR             R1, [R4,#0x24]
LDR             R1, [R0,#4]
STR             R1, [R4,#0x28]
LDR             R1, [R0,#8]
STR             R1, [R4,#0x2C]
LDR             R0, [R0,#0xC]
STR             R0, [R4,#0x30]
B               def_15BFF0; jumptable 0015BFF0 default case
LDR             R1, [R0]; jumptable 0015BFF0 case 6
STR             R1, [R4,#0x34]
LDR             R1, [R0,#4]
STR             R1, [R4,#0x38]
LDR             R1, [R0,#8]
STR             R1, [R4,#0x3C]
LDR             R0, [R0,#0xC]
STR             R0, [R4,#0x40]
B               def_15BFF0; jumptable 0015BFF0 default case
LDR             R1, [R0]; jumptable 0015BFF0 case 7
STR             R1, [R4,#0x44]
LDR             R0, [R0,#4]
STR             R0, [R4,#0x48]
B               def_15BFF0; jumptable 0015BFF0 default case
LDR             R1, [R0]; jumptable 0015BFF0 case 8
STR             R1, [R4,#0x4C]
LDR             R1, [R0,#4]
STR             R1, [R4,#0x50]
LDR             R1, [R0,#8]
STR             R1, [R4,#0x54]
LDR             R0, [R0,#0xC]
STR             R0, [R4,#0x58]
B               def_15BFF0; jumptable 0015BFF0 default case
LDR             R0, =off_6D1648; jumptable 0015BFF0 case 9
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R7, R6, #0x400
LDRB            R1, [R6,#0x46C]
ADD             R0, R0, #0x13C
ADD             R7, R7, #0x6C ; 'l'
MOV             R2, R4
BL              loc_19D68C
LDRB            R1, [R0,#0xB5]
LDRH            R0, [R5,#2]
MOV             R2, R9
VMOV            S0, R1
MOV             R1, R8
VCVT.F32.U32    S0, S0
BL              sub_145730
MOV             R0, #0xFF
STRB            R0, [R7]
MOV             R0, #0; jumptable 0015BFF0 default case
POP             {R4-R10,PC}
DCD off_6D1648
PUSH            {R4-R6,LR}
MOV             R6, R1
MOV             R1, R2
LDR             R2, [R0]
MOV             R5, R0
LDR             R0, [R3,#8]
ADD             R4, R3, #8
LDR             R12, [R2,#0x9C]
LDR             R2, [R5,#4]
SXTB            R3, R0
MOV             R0, R5
BLX             R12
LDRB            R1, [R6,#0x14]
LDR             R3, =0x13C8C
LDR             R2, [R5,#4]
LDR             R12, [R4,#8]
ADD             R1, R3, R1,LSL#2
LDR             R1, [R2,R1]
ADD             R1, R1, R12,LSL#1
LDRB            R2, [R1,#1]
LDR             R1, [R4,#4]
BL              sub_1C803C
MOV             R0, #0
POP             {R4-R6,PC}
DCD 0x13C8C
PUSH            {R4,LR}
MOV             R1, R2
LDR             R2, [R0]
ADD             R4, R3, #8
LDR             R3, [R3,#8]
LDR             R12, [R2,#0x9C]
LDR             R2, [R0,#4]
SXTB            R3, R3
BLX             R12
ADD             R4, R4, #4
LDM             R4, {R1,R2}
BL              sub_1C803C
MOV             R0, #0
POP             {R4,PC}
LDR             R0, =off_6D1648
PUSH            {R4,LR}
MOV             R4, R3
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
LDR             R1, [R4,#8]
MOV             R2, #0
CMP             R1, #0
MOVNE           R1, #1
BL              sub_165134
MOV             R0, #0
POP             {R4,PC}
DCD off_6D1648
LDR             R0, =off_6D1648
PUSH            {R4,LR}
ADD             R4, R3, #8
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
LDR             R1, [R4,#4]
CMP             R1, #0
LDR             R1, [R4]
MOVNE           R2, #1
MOVEQ           R2, #0
BL              sub_165280
MOV             R0, #0
POP             {R4,PC}
DCD off_6D1648
B               loc_15E94C
PUSH            {R4,LR}
VLDR            S1, =0.5
ADD             R4, R3, #8
VPUSH           {D8}
SUB             SP, SP, #8
LDRD            R0, R1, [R3,#0x6C]
STRD            R0, R1, [SP,#0x124+var_124]
LDR             R0, [R3,#0x14]
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
LDR             R0, =off_6D1648
VCVT.F32.U32    S0, S0
LDR             R0, [R0]
VMUL.F32        S16, S0, S1
VLDRNE          S0, =1.0
VADDNE.F32      S16, S16, S0
LDR             R0, [R0,#0xC0]
VMOV.F32        S0, S16
LDR             R1, [R4]
MOV             R2, SP
BL              sub_160EB4
ADD             SP, SP, #8
MOV             R0, #0
VPOP            {D8}
POP             {R4,PC}
DCFS 0.5
DCFS 1.0
DCD off_6D1648
PUSH            {R4,LR}
VLDR            S1, =0.5
ADD             R4, R3, #8
VPUSH           {D8}
SUB             SP, SP, #8
LDRD            R0, R1, [R3,#0x6C]
STRD            R0, R1, [SP,#0x12C+var_12C]
LDR             R0, [R3,#0x14]
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
LDR             R0, =off_6D1648
VCVT.F32.U32    S0, S0
LDR             R0, [R0]
VMUL.F32        S16, S0, S1
VLDRNE          S0, =1.0
VADDNE.F32      S16, S16, S0
LDR             R0, [R0,#0xC0]
VMOV.F32        S0, S16
LDR             R1, [R4]
MOV             R2, SP
BL              sub_160F24
ADD             SP, SP, #8
MOV             R0, #0
VPOP            {D8}
POP             {R4,PC}
DCFS 0.5
DCFS 1.0
DCD off_6D1648
LDR             R0, =off_6D1648
PUSH            {R4,LR}
LDR             R0, [R0]
LDR             R0, [R0,#0xC0]
BL              sub_160BB4
MOV             R0, #0
POP             {R4,PC}
DCD off_6D1648
PUSH            {R4-R6,LR}
ADD             R5, R3, #0x68 ; 'h'
VLDR            S1, =0.5
ADD             R4, R3, #8
VPUSH           {D8}
LDR             R0, [R3,#0x10]
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
LDR             R0, =off_6D1648
VCVT.F32.U32    S0, S0
LDR             R0, [R0]
VMUL.F32        S16, S0, S1
VLDRNE          S0, =1.0
VADDNE.F32      S16, S16, S0
LDR             R0, [R0,#0xC0]
VMOV.F32        S1, S16
LDR             R1, [R4]
VLDR            S0, [R5,#4]
BL              sub_160E44
VPOP            {D8}
MOV             R0, #0
POP             {R4-R6,PC}
DCFS 0.5
DCFS 1.0
DCD off_6D1648
LDR             R0, =off_6D1648
PUSH            {R4-R6,LR}
ADD             R5, R3, #8
ADD             R4, R3, #0x68 ; 'h'
LDR             R0, [R0]
LDR             R0, [R0,#0xC0]
VLDR            S0, [R4,#8]
VLDR            S1, =2.0
LDR             R1, [R5]
VMUL.F32        S1, S0, S1
VLDR            S0, [R4,#4]
BL              sub_160E7C
MOV             R0, #0
POP             {R4-R6,PC}
DCD off_6D1648
DCFS 2.0
LDR             R0, =off_6D1648
PUSH            {R4,LR}
LDR             R0, [R0]
BL              sub_1E45C8
MOV             R1, #0
BL              sub_2CF650
MOV             R0, #0
POP             {R4,PC}
DCD off_6D1648
PUSH            {R4-R8,LR}
MOV             R6, R1
MOV             R7, R2
LDR             R0, =off_6D1648
MOV             R5, R3
ADD             R4, R3, #8
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
LDM             R4, {R1-R3}
ADD             R0, R0, #0x16000
ADD             R0, R0, #0x338
BL              sub_21D750
LDRH            R0, [R5,#2]
MOV             R2, R7
MOV             R1, R6
BL              sub_145730
MOV             R0, #0
POP             {R4-R8,PC}
DCD off_6D1648
LDR             R0, =off_6D1648
PUSH            {R4-R6,LR}
MOV             R5, R3
ADD             R4, R3, #8
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
LDM             R4, {R1-R3}
ADD             R0, R0, #0x16000
ADD             R0, R0, #0x338
VLDR            S0, [R5,#0x74]
BL              sub_21D9B8
MOV             R0, #0
POP             {R4-R6,PC}
DCD off_6D1648
LDR             R0, =off_6D1648
PUSH            {R4,LR}
MOV             R4, R3
LDR             R0, [R0]
BL              sub_1E45C8
LDR             R1, [R0]
LDR             R1, [R1,#0x188]
BLX             R1
LDR             R1, [R4,#8]
CMP             R1, #0
MOVNE           R1, #1
BL              sub_16B9CC
MOV             R0, #0
POP             {R4,PC}
DCD off_6D1648
ALIGN 8
PUSH            {R4-R10,LR}
MOV             R5, R0
MOV             R8, R1
MOV             R9, R2
LDRH            R2, [R3]
ADD             R7, R5, #0x400
MOV             R6, R3
SUB             R2, R2, #0x100
SUB             R2, R2, #0xE9
CMP             R2, #9; switch 9 cases
ADD             R1, R3, #8
ADD             R0, R3, #0x68 ; 'h'
ADD             R4, R5, #0x470
ADD             R7, R7, #0x6C ; 'l'
LDRCC           PC, [PC,R2,LSL#2]; switch jump
B               def_15C540; jumptable 0015C540 default case
DCD loc_15C56C; jump table for switch statement
MOV             R0, #6; jumptable 0015C540 case 0
STRB            R0, [R5,#0x46C]
B               def_15C540; jumptable 0015C540 default case
LDR             R0, [R1]; jumptable 0015C540 case 1
STRH            R0, [R4]
B               def_15C540; jumptable 0015C540 default case
LDR             R1, [R0]; jumptable 0015C540 case 2
STR             R1, [R4,#4]
LDR             R1, [R0,#4]
STR             R1, [R4,#8]
LDR             R0, [R0,#8]
STR             R0, [R4,#0xC]
B               def_15C540; jumptable 0015C540 default case
LDR             R1, [R0]; jumptable 0015C540 case 3
STR             R1, [R4,#0x10]
LDR             R1, [R0,#4]
STR             R1, [R4,#0x14]
LDR             R1, [R0,#8]
STR             R1, [R4,#0x18]
LDR             R0, [R0,#0xC]
STR             R0, [R4,#0x1C]
B               def_15C540; jumptable 0015C540 default case
LDR             R1, [R0]; jumptable 0015C540 case 4
STR             R1, [R4,#0x20]
LDR             R1, [R0,#4]
STR             R1, [R4,#0x24]
LDR             R1, [R0,#8]
STR             R1, [R4,#0x28]
LDR             R0, [R0,#0xC]
STR             R0, [R4,#0x2C]
B               def_15C540; jumptable 0015C540 default case
LDR             R1, [R0]; jumptable 0015C540 case 5
STR             R1, [R4,#0x30]
LDR             R1, [R0,#4]
STR             R1, [R4,#0x34]
LDR             R1, [R0,#8]
STR             R1, [R4,#0x38]
LDR             R0, [R0,#0xC]
STR             R0, [R4,#0x3C]
B               def_15C540; jumptable 0015C540 default case
LDR             R1, [R0]; jumptable 0015C540 case 6
STR             R1, [R4,#0x40]
LDR             R0, [R0,#4]
STR             R0, [R4,#0x44]
B               def_15C540; jumptable 0015C540 default case
LDR             R1, [R0]; jumptable 0015C540 case 7
STR             R1, [R4,#0x48]
LDR             R1, [R0,#4]
STR             R1, [R4,#0x4C]
LDR             R1, [R0,#8]
STR             R1, [R4,#0x50]
LDR             R0, [R0,#0xC]
STR             R0, [R4,#0x54]
B               def_15C540; jumptable 0015C540 default case
LDR             R0, =off_6D1648; jumptable 0015C540 case 8
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
LDRB            R1, [R5,#0x46C]
ADD             R0, R0, #0x13C
MOV             R2, R4
BL              loc_19D68C
LDRB            R1, [R0,#0xB5]
LDRH            R0, [R6,#2]
MOV             R2, R9
VMOV            S0, R1
MOV             R1, R8
VCVT.F32.U32    S0, S0
BL              sub_145730
MOV             R0, #0xFF
STRB            R0, [R7]
MOV             R0, #0; jumptable 0015C540 default case
POP             {R4-R10,PC}
DCD off_6D1648
ALIGN 8
PUSH            {R4-R10,LR}
MOV             R5, R0
MOV             R8, R2
MOV             R9, R1
LDRH            R2, [R3]
ADD             R7, R5, #0x400
MOV             R6, R3
SUB             R2, R2, #0x1F8
CMP             R2, #5; switch 5 cases
ADD             R1, R3, #8
ADD             R0, R3, #0x68 ; 'h'
ADD             R4, R5, #0x470
ADD             R7, R7, #0x6C ; 'l'
LDRCC           PC, [PC,R2,LSL#2]; switch jump
B               def_15C6CC; jumptable 0015C6CC default case
DCD loc_15C6E8; jump table for switch statement
MOV             R0, #4; jumptable 0015C6CC case 0
STRB            R0, [R5,#0x46C]
B               def_15C6CC; jumptable 0015C6CC default case
LDR             R0, [R1]; jumptable 0015C6CC case 1
STRH            R0, [R4]
B               def_15C6CC; jumptable 0015C6CC default case
LDR             R2, [R5]; jumptable 0015C6CC case 2
LDR             R0, [R1]
MOV             R1, R8
LDR             R12, [R2,#0x9C]
SXTB            R3, R0
LDR             R2, [R5,#4]
MOV             R0, R5
BLX             R12
STR             R0, [R4,#4]
B               def_15C6CC; jumptable 0015C6CC default case
LDR             R1, [R0]; jumptable 0015C6CC case 3
STR             R1, [R4,#8]
LDR             R1, [R0,#4]
STR             R1, [R4,#0xC]
LDR             R1, [R0,#8]
STR             R1, [R4,#0x10]
LDR             R0, [R0,#0xC]
STR             R0, [R4,#0x14]
B               def_15C6CC; jumptable 0015C6CC default case
LDR             R0, =off_6D1648; jumptable 0015C6CC case 4
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
LDRB            R1, [R5,#0x46C]
ADD             R0, R0, #0x13C
MOV             R2, R4
BL              loc_19D68C
LDRB            R1, [R0,#0xB5]
LDRH            R0, [R6,#2]
MOV             R2, R8
VMOV            S0, R1
MOV             R1, R9
VCVT.F32.U32    S0, S0
BL              sub_145730
MOV             R0, #0xFF
STRB            R0, [R7]
MOV             R0, #0; jumptable 0015C6CC default case
POP             {R4-R10,PC}
DCD off_6D1648
ALIGN 0x10
PUSH            {R4-R10,LR}
MOV             R6, R0
MOV             R8, R1
MOV             R9, R2
LDRH            R0, [R3]
MOV             R5, R3
ADD             R4, R6, #0x470
SUB             R2, R0, #0x100
SUB             R2, R2, #0xCF
CMP             R2, #0xA; switch 10 cases
ADD             R1, R3, #8
ADD             R0, R3, #0x68 ; 'h'
LDRCC           PC, [PC,R2,LSL#2]; switch jump
B               def_15C7D0; jumptable 0015C7D0 default case
DCD loc_15C800; jump table for switch statement
MOV             R0, #5; jumptable 0015C7D0 case 0
STRB            R0, [R6,#0x46C]
B               def_15C7D0; jumptable 0015C7D0 default case
LDR             R0, [R1]; jumptable 0015C7D0 case 1
STRH            R0, [R4]
B               def_15C7D0; jumptable 0015C7D0 default case
LDR             R0, [R1]; jumptable 0015C7D0 case 2
STRB            R0, [R4,#2]
B               def_15C7D0; jumptable 0015C7D0 default case
LDR             R1, [R0]; jumptable 0015C7D0 case 3
STR             R1, [R4,#4]
LDR             R1, [R0,#4]
STR             R1, [R4,#8]
LDR             R0, [R0,#8]
STR             R0, [R4,#0xC]
B               def_15C7D0; jumptable 0015C7D0 default case
LDR             R1, [R0]; jumptable 0015C7D0 case 4
STR             R1, [R4,#0x10]
LDR             R1, [R0,#4]
STR             R1, [R4,#0x14]
LDR             R1, [R0,#8]
STR             R1, [R4,#0x18]
LDR             R0, [R0,#0xC]
STR             R0, [R4,#0x1C]
B               def_15C7D0; jumptable 0015C7D0 default case
LDR             R1, [R0]; jumptable 0015C7D0 case 5
STR             R1, [R4,#0x20]
LDR             R1, [R0,#4]
STR             R1, [R4,#0x24]
LDR             R1, [R0,#8]
STR             R1, [R4,#0x28]
LDR             R0, [R0,#0xC]
STR             R0, [R4,#0x2C]
B               def_15C7D0; jumptable 0015C7D0 default case
LDR             R1, [R0]; jumptable 0015C7D0 case 6
STR             R1, [R4,#0x30]
LDR             R1, [R0,#4]
STR             R1, [R4,#0x34]
LDR             R1, [R0,#8]
STR             R1, [R4,#0x38]
LDR             R0, [R0,#0xC]
STR             R0, [R4,#0x3C]
B               def_15C7D0; jumptable 0015C7D0 default case
LDR             R1, [R0]; jumptable 0015C7D0 case 7
STR             R1, [R4,#0x40]
LDR             R0, [R0,#4]
STR             R0, [R4,#0x44]
B               def_15C7D0; jumptable 0015C7D0 default case
LDR             R1, [R0]; jumptable 0015C7D0 case 8
STR             R1, [R4,#0x48]
LDR             R1, [R0,#4]
STR             R1, [R4,#0x4C]
LDR             R1, [R0,#8]
STR             R1, [R4,#0x50]
LDR             R0, [R0,#0xC]
STR             R0, [R4,#0x54]
B               def_15C7D0; jumptable 0015C7D0 default case
LDR             R0, =off_6D1648; jumptable 0015C7D0 case 9
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R7, R6, #0x400
LDRB            R1, [R6,#0x46C]
ADD             R0, R0, #0x13C
ADD             R7, R7, #0x6C ; 'l'
MOV             R2, R4
BL              loc_19D68C
LDRB            R1, [R0,#0xB5]
LDRH            R0, [R5,#2]
MOV             R2, R9
VMOV            S0, R1
MOV             R1, R8
VCVT.F32.U32    S0, S0
BL              sub_145730
MOV             R0, #0xFF
STRB            R0, [R7]
MOV             R0, #0; jumptable 0015C7D0 default case
POP             {R4-R10,PC}
DCD off_6D1648
ALIGN 0x10
PUSH            {R4-R10,LR}
MOV             R5, R0
MOV             R8, R1
MOV             R9, R2
LDRH            R2, [R3]
ADD             R7, R5, #0x400
MOV             R6, R3
SUB             R2, R2, #0x1E0
CMP             R2, #9; switch 9 cases
ADD             R1, R3, #8
ADD             R0, R3, #0x68 ; 'h'
ADD             R4, R5, #0x470
ADD             R7, R7, #0x6C ; 'l'
LDRCC           PC, [PC,R2,LSL#2]; switch jump
B               def_15C974; jumptable 0015C974 default case
DCD loc_15C9A0; jump table for switch statement
MOV             R0, #8; jumptable 0015C974 case 0
STRB            R0, [R5,#0x46C]
B               def_15C974; jumptable 0015C974 default case
LDR             R0, [R1]; jumptable 0015C974 case 1
STRH            R0, [R4]
B               def_15C974; jumptable 0015C974 default case
LDR             R1, [R0]; jumptable 0015C974 case 2
STR             R1, [R4,#4]
LDR             R1, [R0,#4]
STR             R1, [R4,#8]
LDR             R0, [R0,#8]
STR             R0, [R4,#0xC]
B               def_15C974; jumptable 0015C974 default case
LDR             R1, [R0]; jumptable 0015C974 case 3
STR             R1, [R4,#0x10]
LDR             R1, [R0,#4]
STR             R1, [R4,#0x14]
LDR             R1, [R0,#8]
STR             R1, [R4,#0x18]
LDR             R0, [R0,#0xC]
STR             R0, [R4,#0x1C]
B               def_15C974; jumptable 0015C974 default case
LDR             R1, [R0]; jumptable 0015C974 case 4
STR             R1, [R4,#0x20]
LDR             R1, [R0,#4]
STR             R1, [R4,#0x24]
LDR             R1, [R0,#8]
STR             R1, [R4,#0x28]
LDR             R0, [R0,#0xC]
STR             R0, [R4,#0x2C]
B               def_15C974; jumptable 0015C974 default case
LDR             R1, [R0]; jumptable 0015C974 case 5
STR             R1, [R4,#0x30]
LDR             R1, [R0,#4]
STR             R1, [R4,#0x34]
LDR             R1, [R0,#8]
STR             R1, [R4,#0x38]
LDR             R0, [R0,#0xC]
STR             R0, [R4,#0x3C]
B               def_15C974; jumptable 0015C974 default case
LDR             R1, [R0]; jumptable 0015C974 case 6
STR             R1, [R4,#0x40]
LDR             R0, [R0,#4]
STR             R0, [R4,#0x44]
B               def_15C974; jumptable 0015C974 default case
LDR             R1, [R0]; jumptable 0015C974 case 7
STR             R1, [R4,#0x48]
LDR             R1, [R0,#4]
STR             R1, [R4,#0x4C]
LDR             R1, [R0,#8]
STR             R1, [R4,#0x50]
LDR             R0, [R0,#0xC]
STR             R0, [R4,#0x54]
B               def_15C974; jumptable 0015C974 default case
LDR             R0, =off_6D1648; jumptable 0015C974 case 8
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
LDRB            R1, [R5,#0x46C]
ADD             R0, R0, #0x13C
MOV             R2, R4
BL              loc_19D68C
LDRB            R1, [R0,#0xB5]
LDRH            R0, [R6,#2]
MOV             R2, R9
VMOV            S0, R1
MOV             R1, R8
VCVT.F32.U32    S0, S0
BL              sub_145730
MOV             R0, #0xFF
STRB            R0, [R7]
MOV             R0, #0; jumptable 0015C974 default case
POP             {R4-R10,PC}
DCD off_6D1648
NOP
PUSH            {R4-R10,LR}
MOV             R5, R0
MOV             R8, R1
MOV             R9, R2
LDRH            R2, [R3]
ADD             R7, R5, #0x400
MOV             R6, R3
SUB             R2, R2, #0x100
SUB             R2, R2, #0xFD
CMP             R2, #9; switch 9 cases
ADD             R1, R3, #8
ADD             R0, R3, #0x68 ; 'h'
ADD             R4, R5, #0x470
ADD             R7, R7, #0x6C ; 'l'
LDRCC           PC, [PC,R2,LSL#2]; switch jump
B               def_15CB04; jumptable 0015CB04 default case
DCD loc_15CB30; jump table for switch statement
MOV             R0, #0xB; jumptable 0015CB04 case 0
STRB            R0, [R5,#0x46C]
B               def_15CB04; jumptable 0015CB04 default case
LDR             R0, [R1]; jumptable 0015CB04 case 1
STRH            R0, [R4]
B               def_15CB04; jumptable 0015CB04 default case
LDR             R1, [R0]; jumptable 0015CB04 case 2
STR             R1, [R4,#4]
LDR             R1, [R0,#4]
STR             R1, [R4,#8]
LDR             R0, [R0,#8]
STR             R0, [R4,#0xC]
B               def_15CB04; jumptable 0015CB04 default case
LDR             R1, [R0]; jumptable 0015CB04 case 3
STR             R1, [R4,#0x10]
LDR             R1, [R0,#4]
STR             R1, [R4,#0x14]
LDR             R1, [R0,#8]
STR             R1, [R4,#0x18]
LDR             R0, [R0,#0xC]
STR             R0, [R4,#0x1C]
B               def_15CB04; jumptable 0015CB04 default case
LDR             R1, [R0]; jumptable 0015CB04 case 4
STR             R1, [R4,#0x20]
LDR             R1, [R0,#4]
STR             R1, [R4,#0x24]
LDR             R1, [R0,#8]
STR             R1, [R4,#0x28]
LDR             R0, [R0,#0xC]
STR             R0, [R4,#0x2C]
B               def_15CB04; jumptable 0015CB04 default case
LDR             R1, [R0]; jumptable 0015CB04 case 5
STR             R1, [R4,#0x30]
LDR             R1, [R0,#4]
STR             R1, [R4,#0x34]
LDR             R1, [R0,#8]
STR             R1, [R4,#0x38]
LDR             R0, [R0,#0xC]
STR             R0, [R4,#0x3C]
B               def_15CB04; jumptable 0015CB04 default case
LDR             R1, [R0]; jumptable 0015CB04 case 6
STR             R1, [R4,#0x40]
LDR             R0, [R0,#4]
STR             R0, [R4,#0x44]
B               def_15CB04; jumptable 0015CB04 default case
LDR             R1, [R0]; jumptable 0015CB04 case 7
STR             R1, [R4,#0x48]
LDR             R1, [R0,#4]
STR             R1, [R4,#0x4C]
LDR             R1, [R0,#8]
STR             R1, [R4,#0x50]
LDR             R0, [R0,#0xC]
STR             R0, [R4,#0x54]
B               def_15CB04; jumptable 0015CB04 default case
LDR             R0, =off_6D1648; jumptable 0015CB04 case 8
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
LDRB            R1, [R5,#0x46C]
ADD             R0, R0, #0x13C
MOV             R2, R4
BL              loc_19D68C
LDRB            R1, [R0,#0xB5]
LDRH            R0, [R6,#2]
MOV             R2, R9
VMOV            S0, R1
MOV             R1, R8
VCVT.F32.U32    S0, S0
BL              sub_145730
MOV             R0, #0xFF
STRB            R0, [R7]
MOV             R0, #0; jumptable 0015CB04 default case
POP             {R4-R10,PC}
DCD off_6D1648
PUSH            {R4-R8,LR}
MOV             R4, R3
MOV             R5, R2
ADD             R3, R3, #8
LDR             R2, [R0]
MOV             R6, R1
LDM             R3, {R1,R7}
LDR             R12, [R2,#0x9C]
LDR             R2, [R0,#4]
SXTB            R3, R1
MOV             R1, R5
BLX             R12
MOV             R1, R7
BL              sub_1C8058
LDRH            R0, [R4,#2]
MOV             R2, R5
MOV             R1, R6
BL              sub_145730
MOV             R0, #0
POP             {R4-R8,PC}
PUSH            {R4-R6,LR}
ADD             R1, R3, #8
MOV             R12, R2
VPUSH           {D8}
VLDR            S16, [R3,#0x70]
LDM             R1, {R3,R4}
LDR             R1, [R0]
LDR             R2, [R0,#4]
SXTB            R3, R3
LDR             R5, [R1,#0x9C]
MOV             R1, R12
BLX             R5
VMOV.F32        S0, S16
MOV             R1, R4
BL              sub_1C807C
VPOP            {D8}
MOV             R0, #0
POP             {R4-R6,PC}
B               loc_15E94C
B               loc_15E94C
PUSH            {R4,LR}
VLDR            S1, =0.5
ADD             R4, R3, #8
VPUSH           {D8}
SUB             SP, SP, #8
LDRD            R0, R1, [R3,#0x6C]
STRD            R0, R1, [SP,#0x25C+var_25C]
LDR             R0, [R3,#0x14]
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
LDR             R0, =off_6D1648
VCVT.F32.U32    S0, S0
LDR             R0, [R0]
VMUL.F32        S16, S0, S1
VLDRNE          S0, =1.0
VADDNE.F32      S16, S16, S0
LDR             R0, [R0,#0xC0]
VMOV.F32        S0, S16
LDR             R1, [R4]
MOV             R2, SP
BL              sub_161004
ADD             SP, SP, #8
MOV             R0, #0
VPOP            {D8}
POP             {R4,PC}
DCFS 0.5
DCFS 1.0
DCD off_6D1648
PUSH            {R4-R6,LR}
ADD             R5, R3, #0x68 ; 'h'
VLDR            S1, =0.5
ADD             R4, R3, #8
VPUSH           {D8}
LDR             R0, [R3,#0x10]
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
LDR             R0, =off_6D1648
VCVT.F32.U32    S0, S0
LDR             R0, [R0]
VMUL.F32        S16, S0, S1
VLDRNE          S0, =1.0
VADDNE.F32      S16, S16, S0
LDR             R0, [R0,#0xC0]
VMOV.F32        S1, S16
LDR             R1, [R4]
VLDR            S0, [R5,#4]
BL              sub_160F94
VPOP            {D8}
MOV             R0, #0
POP             {R4-R6,PC}
DCFS 0.5
DCFS 1.0
DCD off_6D1648
PUSH            {R4-R6,LR}
ADD             R5, R3, #0x68 ; 'h'
VLDR            S1, =0.5
ADD             R4, R3, #8
VPUSH           {D8}
LDR             R0, [R3,#0x10]
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
LDR             R0, =off_6D1648
VCVT.F32.U32    S0, S0
LDR             R0, [R0]
VMUL.F32        S16, S0, S1
VLDRNE          S0, =1.0
VADDNE.F32      S16, S16, S0
LDR             R0, [R0,#0xC0]
VMOV.F32        S1, S16
LDR             R1, [R4]
VLDR            S0, [R5,#4]
BL              sub_160FCC
VPOP            {D8}
MOV             R0, #0
POP             {R4-R6,PC}
DCFS 0.5
DCFS 1.0
DCD off_6D1648
LDR             R0, =off_6D1648
PUSH            {R4,LR}
LDR             R0, [R0]
LDR             R0, [R0,#0xC0]
BL              sub_160CC4
MOV             R0, #0
POP             {R4,PC}
DCD off_6D1648
LDR             R0, =off_6D1648
PUSH            {R4,LR}
MOV             R4, R3
LDR             R0, [R0]
LDR             R0, [R0,#0xC0]
LDR             R1, [R4,#8]
ADD             R0, R0, #0x14400
ADD             R0, R0, #0x174
SXTB            R1, R1
BL              sub_504A90
MOV             R0, #0
POP             {R4,PC}
DCD off_6D1648
LDR             R0, =off_6D1648
PUSH            {R4,LR}
MOV             R4, R3
LDR             R0, [R0]
BL              sub_1E45C8
LDR             R1, [R0]
LDR             R1, [R1,#0x188]
BLX             R1
LDR             R1, [R4,#0xC]
CMP             R1, #0
LDR             R1, [R0]
LDR             R2, [R1,#0x464]
MOVNE           R1, #3
MOVEQ           R1, #0
BLX             R2
MOV             R0, #0
POP             {R4,PC}
DCD off_6D1648
B               loc_15BED8
B               loc_15BED8
B               loc_15BFC0
B               loc_15BFC0
B               loc_15BFC0
B               loc_15BFC0
B               loc_15BFC0
B               loc_15BFC0
NOP
PUSH            {R4-R10,LR}
MOV             R5, R0
MOV             R8, R1
ADD             R7, R5, #0x400
LDRH            R0, [R3]
MOV             R9, R2
MOV             R6, R3
SUB             R1, R0, #0x100
SUB             R1, R1, #0xD9
CMP             R1, #6; switch 6 cases
ADD             R0, R3, #8
ADD             R4, R5, #0x470
ADD             R7, R7, #0x6C ; 'l'
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_15CF30; jumptable 0015CF30 default case
DCD loc_15CF50; jump table for switch statement
MOV             R0, #7; jumptable 0015CF30 case 0
STRB            R0, [R5,#0x46C]
B               def_15CF30; jumptable 0015CF30 default case
LDR             R0, [R0]; jumptable 0015CF30 case 1
STRB            R0, [R4]
B               def_15CF30; jumptable 0015CF30 default case
LDR             R0, [R0]; jumptable 0015CF30 case 2
STRB            R0, [R4,#1]
B               def_15CF30; jumptable 0015CF30 default case
LDR             R0, [R0]; jumptable 0015CF30 case 3
STRB            R0, [R4,#2]
B               def_15CF30; jumptable 0015CF30 default case
LDR             R1, [R0]; jumptable 0015CF30 case 4
STRB            R1, [R4,#3]
LDR             R0, [R0,#4]
STRB            R0, [R4,#4]
B               def_15CF30; jumptable 0015CF30 default case
LDR             R0, =off_6D1648; jumptable 0015CF30 case 5
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
LDRB            R1, [R5,#0x46C]
ADD             R0, R0, #0x13C
MOV             R2, R4
BL              loc_19D68C
LDRB            R1, [R0,#0xB5]
LDRH            R0, [R6,#2]
MOV             R2, R9
VMOV            S0, R1
MOV             R1, R8
VCVT.F32.U32    S0, S0
BL              sub_145730
MOV             R0, #0xFF
STRB            R0, [R7]
MOV             R0, #0; jumptable 0015CF30 default case
POP             {R4-R10,PC}
DCD off_6D1648
ALIGN 8
PUSH            {R4-R10,LR}
MOV             R5, R0
MOV             R8, R1
ADD             R0, R3, #8
LDRH            R1, [R3]
ADD             R7, R5, #0x400
MOV             R9, R2
SUB             R1, R1, #0x100
SUBS            R1, R1, #0xF2
MOVEQ           R0, #0xA
MOV             R6, R3
ADD             R4, R5, #0x470
ADD             R7, R7, #0x6C ; 'l'
STRBEQ          R0, [R5,#0x46C]
BEQ             loc_15D0A0
CMP             R1, #1
BEQ             loc_15D038
CMP             R1, #2
BNE             loc_15D0A0
B               loc_15D05C
LDR             R1, [R0]
STRB            R1, [R4]
LDR             R1, [R0,#4]
STRB            R1, [R4,#1]
LDR             R1, [R0,#8]
STRB            R1, [R4,#2]
LDR             R0, [R0,#0xC]
STRB            R0, [R4,#3]
B               loc_15D0A0
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
LDRB            R1, [R5,#0x46C]
ADD             R0, R0, #0x13C
MOV             R2, R4
BL              loc_19D68C
LDRB            R1, [R0,#0xB5]
LDRH            R0, [R6,#2]
MOV             R2, R9
VMOV            S0, R1
MOV             R1, R8
VCVT.F32.U32    S0, S0
BL              sub_145730
MOV             R0, #0xFF
STRB            R0, [R7]
MOV             R0, #0
POP             {R4-R10,PC}
DCD off_6D1648
ALIGN 0x10
PUSH            {R4-R10,LR}
MOV             R5, R0
MOV             R8, R1
MOV             R9, R2
LDRH            R2, [R3]
ADD             R7, R5, #0x400
MOV             R6, R3
SUB             R2, R2, #0x1B4
CMP             R2, #8; switch 8 cases
ADD             R1, R3, #8
ADD             R0, R3, #0x68 ; 'h'
ADD             R4, R5, #0x470
ADD             R7, R7, #0x6C ; 'l'
LDRCC           PC, [PC,R2,LSL#2]; switch jump
B               def_15D0E4; jumptable 0015D0E4 default case
DCD loc_15D10C; jump table for switch statement
MOV             R0, #0; jumptable 0015D0E4 case 0
STRB            R0, [R5,#0x46C]
B               def_15D0E4; jumptable 0015D0E4 default case
LDR             R0, [R1]; jumptable 0015D0E4 case 1
STRH            R0, [R4]
B               def_15D0E4; jumptable 0015D0E4 default case
LDR             R1, [R1]; jumptable 0015D0E4 case 2
STRB            R1, [R4,#2]
LDR             R1, [R0,#4]
STR             R1, [R4,#0x40]
LDR             R0, [R0,#8]
STR             R0, [R4,#0x44]
B               def_15D0E4; jumptable 0015D0E4 default case
LDR             R1, [R0]; jumptable 0015D0E4 case 3
STR             R1, [R4,#4]
LDR             R1, [R0,#4]
STR             R1, [R4,#8]
LDR             R0, [R0,#8]
STR             R0, [R4,#0xC]
B               def_15D0E4; jumptable 0015D0E4 default case
LDR             R1, [R0]; jumptable 0015D0E4 case 4
STR             R1, [R4,#0x10]
LDR             R1, [R0,#4]
STR             R1, [R4,#0x14]
LDR             R1, [R0,#8]
STR             R1, [R4,#0x18]
LDR             R0, [R0,#0xC]
STR             R0, [R4,#0x1C]
B               def_15D0E4; jumptable 0015D0E4 default case
LDR             R1, [R0]; jumptable 0015D0E4 case 5
STR             R1, [R4,#0x20]
LDR             R1, [R0,#4]
STR             R1, [R4,#0x24]
LDR             R1, [R0,#8]
STR             R1, [R4,#0x28]
LDR             R0, [R0,#0xC]
STR             R0, [R4,#0x2C]
B               def_15D0E4; jumptable 0015D0E4 default case
LDR             R1, [R0]; jumptable 0015D0E4 case 6
STR             R1, [R4,#0x30]
LDR             R1, [R0,#4]
STR             R1, [R4,#0x34]
LDR             R1, [R0,#8]
STR             R1, [R4,#0x38]
LDR             R0, [R0,#0xC]
STR             R0, [R4,#0x3C]
B               def_15D0E4; jumptable 0015D0E4 default case
LDR             R0, =off_6D1648; jumptable 0015D0E4 case 7
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
LDRB            R1, [R5,#0x46C]
ADD             R0, R0, #0x13C
MOV             R2, R4
BL              loc_19D68C
LDRB            R1, [R0,#0xB5]
LDRH            R0, [R6,#2]
MOV             R2, R9
VMOV            S0, R1
MOV             R1, R8
VCVT.F32.U32    S0, S0
BL              sub_145730
MOV             R0, #0xFF
STRB            R0, [R7]
MOV             R0, #0; jumptable 0015D0E4 default case
POP             {R4-R10,PC}
DCD off_6D1648
LDR             R0, =off_6D1648
PUSH            {R4-R6,LR}
CMP             R2, #0x75 ; 'u'
MOV             R4, R1
LDR             R0, [R0]
BEQ             loc_15D270
CMP             R2, #0x76 ; 'v'
VLDRNE          S0, =0.0
BNE             locret_15D2B8
LDR             R0, [R0,#0xBC]
ADD             R2, R0, #0x16C00
ADD             R2, R2, #0xE8
MOV             R0, #1
LDM             R2, {R5,R6}
MOV             R1, #0
LDRB            R2, [R4,#0xDC]
BL              sub_300CF8
AND             R0, R0, R5
AND             R1, R1, R6
ORRS            R0, R0, R1
BEQ             loc_15D2AC
B               loc_15D2A4
NOP
LDR             R0, [R0,#0xBC]
ADD             R2, R0, #0x16000
ADD             R2, R2, #0xCE0
MOV             R0, #1
LDM             R2, {R5,R6}
MOV             R1, #0
LDRB            R2, [R4,#0xDC]
BL              sub_300CF8
AND             R2, R5, R0
AND             R0, R6, R1
ORRS            R0, R0, R2
BEQ             loc_15D2AC
MOV             R0, #1
B               loc_15D2B0
MOV             R0, #0
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
DCD off_6D1648
DCFS 0.0
SUB             R0, R3, #0x7000
PUSH            {R4-R7,LR}
SUB             R0, R0, #0x44 ; 'D'
CMP             R0, #0x17; switch 23 cases
SUB             SP, SP, #0xC
MOV             R4, R3
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_15D2DC; jumptable 0015D2DC default case
DCD loc_15D340; jump table for switch statement
LDR             R4, =off_6D1648; jumptable 0015D2DC case 0
LDR             R0, [R4]
BL              sub_1E45C8
LDR             R0, [R0,#4]
ADD             R0, R0, #0x4000
ADD             R0, R0, #0xF10
LDR             R0, [R0]
CMP             R0, #0
BEQ             loc_15D590
LDR             R0, [R4]
BL              sub_1E45C8
LDR             R0, [R0,#4]
LDR             R1, [R0]
LDR             R1, [R1,#0x474]
BLX             R1
AND             R0, R0, #0xFF
VMOV            S0, R0
VCVT.F32.U32    S0, S0
ADD             SP, SP, #0xC
POP             {R4-R7,PC}
LDR             R0, =off_6D1648; jumptable 0015D2DC case 1
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
LDR             R0, [R0,#0x90]
CMP             R0, #0
BNE             loc_15D4A0
B               def_15D2DC; jumptable 0015D2DC default case
LDR             R0, =off_6D1648; jumptable 0015D2DC case 2
LDR             R0, [R0]
BL              sub_1E45C8
LDR             R0, [R0,#4]
ADD             R0, R0, #0x2BC00
LDRB            R0, [R0,#0xEC]
CMP             R0, #0
BNE             loc_15D4A0
B               def_15D2DC; jumptable 0015D2DC default case
LDR             R0, =off_6D1648; jumptable 0015D2DC case 3
LDR             R0, [R0]
BL              sub_1E45C8
LDR             R0, [R0,#4]
ADD             R0, R0, #0x2600
ADD             R0, R0, #0x86
LDRB            R0, [R0]
CMP             R0, #2
CMPNE           R0, #3
BEQ             loc_15D4A0
B               def_15D2DC; jumptable 0015D2DC default case
LDR             R0, =off_6D1648; jumptable 0015D2DC case 4
LDR             R0, [R0]
BL              sub_1E45C8
LDR             R0, [R0,#4]
ADD             R0, R0, #0x2700
ADD             R0, R0, #0x6F ; 'o'
LDRB            R0, [R0]
CMP             R0, #0
BNE             loc_15D4A0
B               def_15D2DC; jumptable 0015D2DC default case
LDR             R0, =off_6D1648; jumptable 0015D2DC case 5
LDR             R0, [R0]
BL              sub_1E45C8
LDR             R0, [R0,#4]
ADD             R0, R0, #0x2600
ADD             R0, R0, #0xA9
LDRB            R0, [R0]
CMP             R0, #0
BNE             loc_15D4A0
B               def_15D2DC; jumptable 0015D2DC default case
LDR             R0, =off_6D1648; jumptable 0015D2DC case 6
LDR             R0, [R0]
BL              sub_1E45C8
LDR             R0, [R0,#4]
ADD             R0, R0, #0x2400
ADD             R0, R0, #0x2B4
LDRB            R0, [R0]
CMP             R0, #0
BNE             loc_15D4A0
B               def_15D2DC; jumptable 0015D2DC default case
LDR             R0, =off_6D1648; jumptable 0015D2DC case 7
LDR             R0, [R0]
BL              sub_1E45C8
LDR             R0, [R0,#4]
ADD             R0, R0, #0x2400
ADD             R0, R0, #0x2B8
LDRB            R0, [R0]
CMP             R0, #0
BEQ             def_15D2DC; jumptable 0015D2DC default case
ADD             SP, SP, #0xC
VLDR            S0, =1.0
POP             {R4-R7,PC}
ADD             SP, SP, #0xC; jumptable 0015D2DC default case
VLDR            S0, =0.0
POP             {R4-R7,PC}
LDR             R7, =off_6D1648; jumptable 0015D2DC case 8
LDR             R0, [R7]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
LDR             R0, [R0,#0x1E4]
LDR             R0, [R0,#0x34]
TST             R0, #1
LDR             R0, [R7]
BEQ             loc_15D4EC
BL              sub_1E45C8
LDR             R0, [R0,#4]
NOP
B               loc_15D57C
NOP
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
LDR             R5, [R0,#0x1E4]
LDR             R0, [R7]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
MOV             R4, #0
LDR             R0, [R0,#0x1E4]
LDRB            R6, [R0,#0x32]
CMP             R6, #0
BLE             loc_15D590
LDR             R0, [R7]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
LDR             R1, [R5,R4,LSL#2]
LDR             R0, [R0,#0x1E4]
BL              sub_1F64F4
CMP             R0, #0
NOP
BEQ             loc_15D548
LDR             R0, [R5,R4,LSL#2]
B               loc_15D57C
ADD             R4, R4, #1
CMP             R4, R6
BLT             loc_15D51C
B               loc_15D590
LDR             R0, =off_6D1648; jumptable 0015D2DC case 9
LDR             R0, [R0]
BL              sub_1E45C8
NOP
NOP
BL              sub_2CF56C
CMP             R0, #0
NOP
BEQ             loc_15D590
LDRB            R0, [R0,#0xDC]
ADD             SP, SP, #0xC
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R7,PC}
ADD             SP, SP, #0xC
VLDR            S0, =-1.0
POP             {R4-R7,PC}
LDR             R0, =off_6D1648; jumptable 0015D2DC cases 10,11
LDR             R0, [R0]
BL              sub_1E45C8
ADD             R2, SP, #0x314+var_310
MOV             R1, SP
BL              sub_2D0F68
SUB             R0, R4, #0x7000
SUBS            R0, R0, #0x4E ; 'N'
VLDREQ          S0, [SP,#0x314+var_314]
BEQ             loc_15D388
CMP             R0, #1
VLDREQ          S0, [SP,#0x314+var_310]
BEQ             loc_15D388
B               def_15D2DC; jumptable 0015D2DC default case
LDR             R0, =off_6D1648; jumptable 0015D2DC case 12
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16C00
LDRSB           R0, [R0,#0xD8]
ADD             SP, SP, #0xC
VMOV            S0, R0
VCVT.F32.S32    S0, S0
POP             {R4-R7,PC}
LDR             R0, =off_6D1648; jumptable 0015D2DC case 13
LDR             R0, [R0]
BL              sub_1E45C8
LDR             R1, [R0]
LDR             R1, [R1,#0x188]
BLX             R1
ADD             R0, R0, #0x2700
ADD             R0, R0, #0x6E ; 'n'
LDRB            R0, [R0]
CMP             R0, #0
MOVNE           R0, #0
BNE             loc_15D678
MOV             R0, #1
B               loc_15D678
LDR             R0, =off_6D1648; jumptable 0015D2DC case 14
LDR             R0, [R0]
BL              sub_1E45C8
LDR             R0, [R0,#4]
LDR             R1, [R0]
LDR             R1, [R1,#0x468]
BLX             R1
CMP             R0, #1
BNE             def_15D2DC; jumptable 0015D2DC default case
B               loc_15D4A0
LDR             R0, =off_6D1648; jumptable 0015D2DC case 15
LDR             R0, [R0]
LDR             R0, [R0,#0xC0]
ADD             R0, R0, #0x14400
ADD             R0, R0, #0x174
LDR             R0, [R0,#0xB10]
ANDS            R0, R0, #0x7800000
BNE             loc_15D628
VMOV            S0, R0
ADD             SP, SP, #0xC
VCVT.F32.U32    S0, S0
POP             {R4-R7,PC}
LDR             R0, =off_6D1648; jumptable 0015D2DC case 16
LDR             R0, [R0]
LDR             R0, [R0,#0xC0]
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x4E00
LDRH            R0, [R0,#0xF6]
ADD             SP, SP, #0xC
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R7,PC}
LDR             R0, =off_6D1648; jumptable 0015D2DC case 17
LDR             R0, [R0]
LDR             R0, [R0,#0xC0]
ADD             R0, R0, #0x15000
LDRB            R0, [R0,#0xA1]
ADD             SP, SP, #0xC
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R7,PC}
LDR             R0, =off_6D1648; jumptable 0015D2DC case 18
LDR             R0, [R0]
LDR             R0, [R0,#0xC0]
NOP
NOP
BL              sub_160AF4
VLDR            S0, [R0]
ADD             SP, SP, #0xC
POP             {R4-R7,PC}
LDR             R0, =off_6D1648; jumptable 0015D2DC case 19
LDR             R0, [R0]
LDR             R0, [R0,#0xC0]
NOP
NOP
BL              sub_160AF4
VLDR            S0, [R0,#4]
ADD             SP, SP, #0xC
POP             {R4-R7,PC}
LDR             R0, =off_6D1648; jumptable 0015D2DC case 20
LDR             R0, [R0]
LDR             R0, [R0,#0xC0]
NOP
NOP
BL              sub_160C5C
VMOV            S0, R0
ADD             SP, SP, #0xC
VCVT.F32.U32    S0, S0
POP             {R4-R7,PC}
LDR             R0, =off_6D1648; jumptable 0015D2DC case 21
LDR             R0, [R0]
LDR             R0, [R0,#0xC0]
ADD             SP, SP, #0xC
POP             {R4-R7,LR}
B               sub_160BDC
LDR             R0, =off_6D1648; jumptable 0015D2DC case 22
LDR             R0, [R0]
LDR             R0, [R0,#0xC0]
NOP
NOP
BL              sub_160D14
VMOV            S0, R0
ADD             SP, SP, #0xC
VCVT.F32.U32    S0, S0
POP             {R4-R7,PC}
DCD off_6D1648
DCFS 1.0
DCFS 0.0
DCFS -1.0
PUSH            {R4-R6,LR}
CMP             R2, #0x75 ; 'u'
LDR             R0, =off_6D1648
MOV             R4, R1
VPUSH           {D8}
VMOV.F32        S16, S0
LDR             R0, [R0]
VLDR            S17, =0.0
BEQ             loc_15D7F8
CMP             R2, #0x76 ; 'v'
BNE             loc_15D858
LDR             R0, [R0,#0xBC]
VCMP.F32        S16, S17
LDRB            R2, [R4,#0xDC]
ADD             R4, R0, #0x16C00
ADD             R4, R4, #0xE8
MOV             R0, #1
LDM             R4, {R5,R6}
VMRS            APSR_nzcv, FPSCR
MOV             R1, #0
BEQ             loc_15D860
BL              sub_300CF8
ORR             R0, R0, R5
ORR             R1, R1, R6
B               loc_15D870
NOP
LDR             R0, [R0,#0xBC]
VCMP.F32        S16, S17
LDRB            R2, [R4,#0xDC]
ADD             R4, R0, #0x16000
ADD             R4, R4, #0xCE0
MOV             R0, #1
LDM             R4, {R5,R6}
VMRS            APSR_nzcv, FPSCR
MOV             R1, #0
BEQ             loc_15D838
BL              sub_300CF8
ORR             R2, R5, R0
ORR             R0, R6, R1
STR             R2, [R4]
B               loc_15D854
NOP
BL              sub_300CF8
MVN             R2, R0
MVN             R0, R1
AND             R1, R5, R2
AND             R0, R0, R6
STR             R1, [R4]
STR             R0, [R4,#4]
VPOP            {D8}
POP             {R4-R6,PC}
NOP
BL              sub_300CF8
BIC             R0, R5, R0
BIC             R1, R6, R1
STRD            R0, R1, [R4]
VPOP            {D8}
POP             {R4-R6,PC}
DCD off_6D1648
DCFS 0.0
LDR             R0, =off_6D1648
PUSH            {R4,LR}
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
BL              sub_165B4C
MOV             R0, #0
POP             {R4,PC}
DCD off_6D1648
B               loc_15C508
B               loc_15C508
B               loc_15C508
B               loc_15C508
B               loc_15C508
B               loc_15C698
B               loc_15C698
B               loc_15C698
PUSH            {R4-R6,LR}
ADD             R5, R3, #0x68 ; 'h'
VLDR            S1, =0.5
ADD             R4, R3, #8
VPUSH           {D8}
LDR             R0, [R3,#0x10]
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
LDR             R0, =off_6D1648
VCVT.F32.U32    S0, S0
LDR             R0, [R0]
VMUL.F32        S16, S0, S1
VLDRNE          S0, =1.0
VADDNE.F32      S16, S16, S0
LDR             R0, [R0,#0xC0]
VMOV.F32        S1, S16
LDR             R1, [R4]
VLDR            S0, [R5,#4]
BL              sub_16111C
VPOP            {D8}
MOV             R0, #0
POP             {R4-R6,PC}
DCFS 0.5
DCFS 1.0
DCD off_6D1648
B               loc_15C7A0
B               loc_15C7A0
B               loc_15C7A0
B               loc_15C7A0
B               loc_15C7A0
PUSH            {R4-R8,LR}
MOV             R5, R3
MOV             R8, R1
LDR             R0, =off_6D1648
LDR             R6, [R3,#8]
MOV             R7, R2
ADD             R4, R3, #8
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, R6,LSL#2
LDRH            R1, [R5]
ADD             R0, R0, #0x15000
LDR             R0, [R0,#0x14C]
SUB             R1, R1, #0x100
SUBS            R1, R1, #0xCD
BEQ             loc_15D98C
CMP             R1, #1
BNE             loc_15D9DC
B               loc_15D9AC
LDR             R3, [R4,#4]!
LDR             R1, [R4,#4]
AND             R2, R1, #0xFF
AND             R1, R3, #0xFF
BL              sub_2B8964
NOP
NOP
B               loc_15D9DC
LDR             R3, [R4,#4]!
LDR             R1, [R4,#4]
AND             R2, R1, #0xFF
AND             R1, R3, #0xFF
BL              sub_2B6BF0
MOV             R3, R0
VMOV            S0, R3
LDRH            R0, [R5,#2]
MOV             R2, R7
MOV             R1, R8
VCVT.F32.U32    S0, S0
BL              sub_145730
MOV             R0, #0
POP             {R4-R8,PC}
DCD off_6D1648
B               loc_15BED8
PUSH            {R4,LR}
VLDR            S1, =0.5
ADD             R4, R3, #8
VPUSH           {D8}
LDR             R0, [R3,#0x1C]
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
LDR             R0, =off_6D1648
VCVT.F32.U32    S0, S0
LDR             R0, [R0]
VMUL.F32        S16, S0, S1
VLDRNE          S0, =1.0
VADDNE.F32      S16, S16, S0
LDR             R0, [R0,#0xBC]
VLDR            S3, [R4,#0x10]
VLDR            S1, [R4,#0xC]
VLDR            S2, [R4,#8]
VLDR            S0, [R4,#4]
VCVT.F32.S32    S4, S3
VCVT.F32.S32    S3, S1
VCVT.F32.S32    S2, S2
VCVT.F32.S32    S1, S0
VMOV.F32        S0, S16
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x2E8
BL              sub_5A1524
VPOP            {D8}
MOV             R0, #0
POP             {R4,PC}
DCFS 0.5
DCFS 1.0
DCD off_6D1648
B               loc_15C940
B               loc_15C940
B               loc_15C940
B               loc_15C940
B               loc_15C940
B               loc_15CACC
B               loc_15CACC
B               loc_15CACC
B               loc_15CACC
B               loc_15CACC
NOP
PUSH            {R4-R10,LR}
MOV             R5, R0
MOV             R6, R3
MOV             R9, R2
LDR             R0, =off_6D1648
LDR             R8, [R3,#8]
ADD             R4, R3, #8
ADD             R7, R3, #0x68 ; 'h'
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
LDRH            R1, [R6]
ADD             R0, R0, R8,LSL#2
ADD             R2, R0, #0x15000
SUB             R0, R1, #0x100
LDR             R6, [R2,#0x14C]
SUBS            R0, R0, #0xF5
LDRDEQ          R0, R1, [R7,#4]
STRDEQ          R0, R1, [R6,#0xFC]
BEQ             loc_15DB70
CMP             R0, #1
BEQ             loc_15DAFC
CMP             R0, #2
BNE             loc_15DB70
B               loc_15DB3C
LDR             R1, [R5]
LDR             R0, [R4,#8]
LDR             R2, [R5,#4]
LDR             R12, [R1,#0x9C]
SXTB            R3, R0
MOV             R1, R9
MOV             R0, R5
BLX             R12
LDR             R1, [R4,#4]
MOV             R2, R0
MOV             R0, R6
UXTH            R1, R1
BL              sub_37EAE8
NOP
NOP
B               loc_15DB70
LDR             R1, [R5]
LDR             R0, [R4,#8]
LDR             R2, [R5,#4]
LDR             R12, [R1,#0x9C]
SXTB            R3, R0
MOV             R1, R9
MOV             R0, R5
BLX             R12
LDR             R1, [R4,#4]
MOV             R2, R0
MOV             R0, R6
UXTH            R1, R1
BL              sub_37F038
MOV             R0, #0
POP             {R4-R10,PC}
DCD off_6D1648
ALIGN 0x10
PUSH            {R4-R10,LR}
MOV             R5, R0
MOV             R8, R1
MOV             R9, R2
LDRH            R2, [R3]
ADD             R7, R5, #0x400
MOV             R6, R3
SUB             R2, R2, #0x200
SUB             R2, R2, #0xF
CMP             R2, #7; switch 7 cases
ADD             R1, R3, #8
ADD             R0, R3, #0x68 ; 'h'
ADD             R4, R5, #0x470
ADD             R7, R7, #0x6C ; 'l'
LDRCC           PC, [PC,R2,LSL#2]; switch jump
B               def_15DBB8; jumptable 0015DBB8 default case
DCD loc_15DBDC; jump table for switch statement
MOV             R0, #1; jumptable 0015DBB8 case 0
STRB            R0, [R5,#0x46C]
B               def_15DBB8; jumptable 0015DBB8 default case
LDR             R0, [R1]; jumptable 0015DBB8 case 1
STRH            R0, [R4]
B               def_15DBB8; jumptable 0015DBB8 default case
LDR             R1, [R0]; jumptable 0015DBB8 case 2
STR             R1, [R4,#4]
LDR             R1, [R0,#4]
STR             R1, [R4,#8]
LDR             R0, [R0,#8]
STR             R0, [R4,#0xC]
B               def_15DBB8; jumptable 0015DBB8 default case
LDR             R1, [R0]; jumptable 0015DBB8 case 3
STR             R1, [R4,#0x10]
LDR             R1, [R0,#4]
STR             R1, [R4,#0x14]
LDR             R1, [R0,#8]
STR             R1, [R4,#0x18]
LDR             R0, [R0,#0xC]
STR             R0, [R4,#0x1C]
B               def_15DBB8; jumptable 0015DBB8 default case
LDR             R1, [R0]; jumptable 0015DBB8 case 4
STR             R1, [R4,#0x20]
LDR             R1, [R0,#4]
STR             R1, [R4,#0x24]
LDR             R1, [R0,#8]
STR             R1, [R4,#0x28]
LDR             R0, [R0,#0xC]
STR             R0, [R4,#0x2C]
B               def_15DBB8; jumptable 0015DBB8 default case
LDR             R1, [R1]; jumptable 0015DBB8 case 5
STRB            R1, [R4,#2]
LDR             R1, [R0,#4]
STR             R1, [R4,#0x30]
LDR             R1, [R0,#8]
STR             R1, [R4,#0x34]
LDR             R1, [R0,#0xC]
STR             R1, [R4,#0x38]
LDR             R0, [R0,#0x10]
STR             R0, [R4,#0x3C]
B               def_15DBB8; jumptable 0015DBB8 default case
LDR             R0, =off_6D1648; jumptable 0015DBB8 case 6
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
LDRB            R1, [R5,#0x46C]
ADD             R0, R0, #0x13C
MOV             R2, R4
BL              loc_19D68C
LDRB            R1, [R0,#0xB5]
LDRH            R0, [R6,#2]
MOV             R2, R9
VMOV            S0, R1
MOV             R1, R8
VCVT.F32.U32    S0, S0
BL              sub_145730
MOV             R0, #0xFF
STRB            R0, [R7]
MOV             R0, #0; jumptable 0015DBB8 default case
POP             {R4-R10,PC}
DCD off_6D1648
PUSH            {R4-R6,LR}
ADD             R4, R3, #0x68 ; 'h'
LDR             R12, [R0]
LDR             R3, [R3,#8]
MOV             R1, R2
LDR             R2, [R0,#4]
LDR             R12, [R12,#0x9C]
SXTB            R3, R3
BLX             R12
MOV             R5, R0
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
MOV             R1, R0
LDRB            R0, [R5,#0xDC]
ADD             R4, R4, #4
VLDM            R4, {S0-S2}
ADD             R0, R0, R0,LSL#1
ADD             R0, R1, R0,LSL#2
ADD             R0, R0, #0x16C00
ADD             R0, R0, #0x1B8
VSTM            R0, {S0-S2}
MOV             R0, #0
POP             {R4-R6,PC}
DCD off_6D1648
B               loc_15CEFC
B               loc_15CEFC
B               loc_15DA9C
MOV             R1, R2
PUSH            {R4,LR}
LDR             R2, [R0]
LDR             R3, [R3,#8]
LDR             R12, [R2,#0x9C]
LDR             R2, [R0,#4]
SXTB            R3, R3
BLX             R12
MOV             R4, R0
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
MOV             R1, R4
BL              sub_1F637C
MOV             R0, #0
POP             {R4,PC}
DCD off_6D1648
MOV             R1, R2
PUSH            {R4,LR}
LDR             R2, [R0]
LDR             R3, [R3,#8]
LDR             R12, [R2,#0x9C]
LDR             R2, [R0,#4]
SXTB            R3, R3
BLX             R12
MOV             R4, R0
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
MOV             R1, R4
BL              sub_1F6440
MOV             R0, #0
POP             {R4,PC}
DCD off_6D1648
B               loc_15D0B0
B               loc_15D0B0
B               loc_15D0B0
B               loc_15D0B0
B               loc_15D0B0
B               loc_15BED8
LDR             R0, =off_6D1648
PUSH            {R4-R6,LR}
MOV             R4, R1
MOV             R5, R2
LDR             R0, [R0]
MOV             R6, R3
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x2E8
BL              sub_1E32A0
CMP             R0, #0
BEQ             locret_15DE38
MOV             R2, R6
MOV             R1, R5
MOV             R0, R4
BL              sub_29D1B0
MOV             R0, #3
POP             {R4-R6,PC}
DCD off_6D1648
B               loc_15BFC0
B               loc_15CEFC
B               loc_15CEFC
B               loc_15CFE8
LDR             R0, =off_6D1648
PUSH            {R4,LR}
MOV             R4, R3
LDR             R0, [R0]
LDR             R0, [R0,#0xC0]
LDR             R1, [R4,#8]
ADD             R0, R0, #0x15000
CMP             R1, #0
MOVEQ           R1, #1
MOVNE           R1, #0
STRB            R1, [R0,#0xA6]
MOV             R0, #0
POP             {R4,PC}
DCD off_6D1648
B               loc_15C508
B               loc_15C698
B               loc_15D0B0
LDR             R0, =off_6D1648
PUSH            {R4,LR}
MOV             R4, R3
LDR             R0, [R0]
BL              sub_1E45C8
LDR             R1, [R0]
LDR             R1, [R1,#0x188]
BLX             R1
LDR             R1, [R4,#8]
CMP             R1, #0
MOVNE           R1, #1
BL              sub_16AC00
MOV             R0, #0
POP             {R4,PC}
DCD off_6D1648
LDR             R0, =off_6D1648
PUSH            {R4,LR}
MOV             R4, R3
LDR             R0, [R0]
LDR             R0, [R0,#0xC0]
ADD             R2, R0, #0x14400
ADD             R0, R0, #0x15000
LDR             R1, [R4,#8]
ADD             R0, R0, #0x84
ADD             R2, R2, #0x174
LDR             R3, [R0]
CMP             R1, #0
MOVNE           R1, #1
BIC             R3, R3, #0x4000
ORR             R1, R3, R1,LSL#14
TST             R1, #0x4000
STR             R1, [R0]
MOVEQ           R0, R2
BLEQ            sub_5097B4
MOV             R0, #0
POP             {R4,PC}
DCD off_6D1648
LDR             R0, =off_6D1648
PUSH            {R4,LR}
ADD             R4, R3, #8
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
LDR             R2, [R4]
LDR             R1, [R4,#4]
ADD             R0, R0, R2
CMP             R1, #0
ADD             R0, R0, #0x16000
ADD             R0, R0, #0xC30
MOVNE           R1, #1
MOVEQ           R1, #0
STRB            R1, [R0]
MOV             R0, #0
POP             {R4,PC}
DCD off_6D1648
B               loc_15C7A0
B               loc_15C7A0
LDR             R0, =off_6D1648
PUSH            {R4,LR}
ADD             R4, R3, #8
LDR             R0, [R0]
BL              sub_1E45C8
LDR             R1, [R4,#8]
CMP             R1, #0
LDR             R1, [R4,#4]
POP             {R4,LR}
MOVNE           R2, #1
MOVEQ           R2, #0
B               sub_2D01F8
DCD off_6D1648
LDR             R0, =off_6D1648
PUSH            {R4,LR}
LDR             R0, [R0]
BL              sub_1E45C8
POP             {R4,LR}
B               sub_2D020C
DCD off_6D1648
B               loc_15DB80
B               loc_15DB80
B               loc_15DB80
B               loc_15DB80
B               loc_15BFC0
B               loc_15BFC0
B               loc_15C940
B               loc_15CACC
B               loc_15CEFC
LDR             R0, =off_6D1648
PUSH            {R4-R6,LR}
ADD             R4, R3, #8
ADD             R5, R3, #0x68 ; 'h'
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
VLDR            S0, [R5]
VLDR            S3, =2.0
VLDR            S1, [R4,#0xC]
VLDR            S2, [R4,#8]
VLDR            S4, [R4,#4]
VMUL.F32        S0, S0, S3
VCVT.F32.S32    S3, S1
VCVT.F32.S32    S2, S2
VCVT.F32.S32    S1, S4
BL              sub_1663B8
MOV             R0, #0
POP             {R4-R6,PC}
DCD off_6D1648
DCFS 2.0
B               loc_15CFE8
LDR             R0, =off_6D1648
PUSH            {R4,LR}
MOV             R4, R3
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
LDR             R1, [R4,#8]
ADD             R0, R0, #0x13C
LDR             R2, [R0,#0x1B4]
CMP             R1, #0
MOVNE           R1, #1
BIC             R2, R2, #0x100000
ORR             R1, R2, R1,LSL#20
STR             R1, [R0,#0x1B4]
MOV             R0, #0
POP             {R4,PC}
DCD off_6D1648
B               loc_15C508
B               loc_15C508
B               loc_15D0B0
B               loc_15C7A0
B               loc_15C7A0
PUSH            {R3-R5,LR}
ADD             R4, R3, #8
LDR             R5, [R3,#0xC]
CMN             R5, #1
BEQ             loc_15E0C4
LDRB            R1, [R1,#0x14]
LDR             R2, =0x13C8C
LDR             R0, [R0,#4]
ADD             R1, R2, R1,LSL#2
LDR             R0, [R0,R1]
ADD             R0, R0, R5,LSL#1
LDRB            R5, [R0,#1]
LDR             R0, =off_6D1648
LDR             R1, [R4]
LDR             R0, [R0]
CMP             R1, #0
BEQ             loc_15E0EC
BL              sub_1E45C8
LDR             R2, [R4,#0xC]
MOV             R1, R5
POP             {R3-R5,LR}
B               sub_2D04B0
NOP
BL              sub_1E45C8
LDR             R1, [R4,#0x10]
CMP             R1, #0
MOVNE           R1, #1
STR             R1, [SP,#0x408+var_408]
LDRD            R2, R3, [R4,#8]
MOV             R1, R5
BL              sub_2D04C4
POP             {R3-R5,PC}
DCD 0x13C8C
DCD off_6D1648
LDR             R0, =off_6D1648
PUSH            {R4,LR}
LDR             R1, [R3,#8]
LDR             R0, [R0]
CMP             R1, #0
BEQ             loc_15E140
BL              sub_1E45C8
POP             {R4,LR}
B               sub_2D04E0
NOP
BL              sub_1E45C8
POP             {R4,LR}
NOP
B               sub_2D04F4
DCD off_6D1648
LDR             R0, =off_6D1648
PUSH            {R4,LR}
MOV             R4, R3
LDR             R0, [R0]
BL              sub_1E45C8
LDR             R1, [R4,#0xC]
CMP             R1, #0
LDR             R1, [R4,#8]
MOVNE           R2, #1
MOVEQ           R2, #0
CMP             R1, #0
MOVNE           R1, #1
BL              sub_2D105C
MOV             R0, #0
POP             {R4,PC}
DCD off_6D1648
LDR             R0, =off_6D1648
PUSH            {R4,LR}
LDR             R0, [R0]
BL              sub_1E45C8
LDR             R1, [R0]
LDR             R1, [R1,#0x188]
BLX             R1
BL              sub_16AF88
MOV             R0, #0
POP             {R4,PC}
DCD off_6D1648
PUSH            {R4,LR}
VLDR            S1, =0.5
MOV             R4, R3
VPUSH           {D8}
LDR             R0, [R3,#0xC]
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
LDR             R0, =off_6D1648
VCVT.F32.U32    S0, S0
LDR             R0, [R0]
VMUL.F32        S16, S0, S1
VLDRNE          S0, =1.0
VADDNE.F32      S16, S16, S0
BL              sub_1E45C8
LDR             R1, [R0]
LDR             R1, [R1,#0x188]
BLX             R1
VMOV.F32        S0, S16
VLDR            S1, [R4,#0x70]
BL              sub_1720CC
VPOP            {D8}
MOV             R0, #0
POP             {R4,PC}
DCFS 0.5
DCFS 1.0
DCD off_6D1648
LDR             R0, =off_6D1648
PUSH            {R4,LR}
MOV             R4, R3
LDR             R0, [R0]
BL              sub_1E45C8
LDR             R1, [R0]
LDR             R1, [R1,#0x188]
BLX             R1
VLDR            S0, [R4,#0x6C]
VLDR            S1, =2.0
VMUL.F32        S0, S0, S1
VLDR            S1, [R4,#0x70]
BL              sub_172180
MOV             R0, #0
POP             {R4,PC}
DCD off_6D1648
DCFS 2.0
B               loc_15DB80
PUSH            {R4-R8,LR}
MOV             R5, R3
MOV             R8, R1
LDR             R0, =off_6D1648
LDR             R6, [R3,#8]
MOV             R7, R2
ADD             R4, R3, #8
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, R6,LSL#2
LDRH            R1, [R5]
ADD             R0, R0, #0x15000
LDR             R0, [R0,#0x14C]
SUB             R1, R1, #0x100
SUBS            R1, R1, #0xCD
BEQ             loc_15E2C4
CMP             R1, #1
BNE             loc_15E314
B               loc_15E2E4
LDR             R3, [R4,#4]!
LDR             R1, [R4,#4]
AND             R2, R1, #0xFF
AND             R1, R3, #0xFF
BL              sub_2B8964
NOP
NOP
B               loc_15E314
LDR             R3, [R4,#4]!
LDR             R1, [R4,#4]
AND             R2, R1, #0xFF
AND             R1, R3, #0xFF
BL              sub_2B6BF0
MOV             R3, R0
VMOV            S0, R3
LDRH            R0, [R5,#2]
MOV             R2, R7
MOV             R1, R8
VCVT.F32.U32    S0, S0
BL              sub_145730
MOV             R0, #0
POP             {R4-R8,PC}
DCD off_6D1648
B               loc_15C940
B               loc_15C940
B               loc_15CACC
B               loc_15CACC
B               loc_15DA9C
LDR             R0, =off_6D1648
PUSH            {R4,LR}
MOV             R4, R3
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
LDR             R1, [R4,#8]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
CMP             R1, #0
LDR             R2, [R0,#0x1B4]
MOVEQ           R1, #1
MOVNE           R1, #0
BIC             R2, R2, #0x400000
ORR             R1, R2, R1,LSL#22
STR             R1, [R0,#0x1B4]
MOV             R0, #0
POP             {R4,PC}
DCD off_6D1648
LDR             R0, =off_6D1648
PUSH            {R4,LR}
MOV             R4, R3
LDR             R0, [R0]
LDR             R0, [R0,#0xC0]
ADD             R2, R0, #0x14400
ADD             R0, R0, #0x15000
LDR             R1, [R4,#8]
ADD             R0, R0, #0x84
ADD             R2, R2, #0x174
LDR             R3, [R0]
CMP             R1, #0
MOVNE           R1, #1
BIC             R3, R3, #4
ORR             R1, R3, R1,LSL#2
TST             R1, #4
STR             R1, [R0]
BNE             loc_15E3D0
LDR             R1, =0x978
MOV             R0, #0xFFFFFFFF
STRH            R0, [R1,R2]
MOV             R0, #0
POP             {R4,PC}
DCD off_6D1648
DCD 0x978
LDR             R0, =off_6D1648
PUSH            {R4-R6,LR}
MOV             R5, R1
LDR             R1, [R3,#8]
LDR             R0, [R0]
MOV             R6, R2
CMP             R1, #0
MOV             R4, R3
BEQ             loc_15E41C
BL              sub_1E45C8
MOV             R3, R4
MOV             R2, R6
MOV             R1, R5
POP             {R4-R6,LR}
B               sub_2D07E0
NOP
BL              sub_1E45C8
MOV             R3, R4
MOV             R2, R6
MOV             R1, R5
POP             {R4-R6,LR}
B               sub_2D0818
DCD off_6D1648
LDR             R0, =off_6D1648
PUSH            {R4,LR}
LDR             R0, [R0]
BL              sub_1E45C8
LDR             R1, [R0]
LDR             R1, [R1,#0x188]
BLX             R1
BL              sub_169C44
MOV             R0, #0
POP             {R4,PC}
DCD off_6D1648
LDR             R0, =off_6D1648
PUSH            {R4-R6,LR}
MOV             R4, R1
MOV             R5, R2
LDR             R0, [R0]
MOV             R6, R3
BL              sub_1E45C8
LDR             R1, [R0]
LDR             R1, [R1,#0x188]
BLX             R1
ADD             R0, R0, #0x2400
ADD             R0, R0, #0x2B4
LDRB            R0, [R0]
CMP             R0, #0
BEQ             locret_15E4B8
MOV             R2, R6
MOV             R1, R5
MOV             R0, R4
BL              sub_29D1B0
MOV             R0, #3
POP             {R4-R6,PC}
DCD off_6D1648
B               loc_15DB80
LDR             R0, =off_6D1648
PUSH            {R4,LR}
MOV             R4, R3
LDR             R0, [R0]
LDR             R0, [R0,#0xC0]
LDR             R1, [R4,#8]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x84
CMP             R1, #0
LDR             R2, [R0]
MOVEQ           R1, #1
MOVNE           R1, #0
BIC             R2, R2, #0x200000
ORR             R1, R2, R1,LSL#21
STR             R1, [R0]
MOV             R0, #0
POP             {R4,PC}
DCD off_6D1648
LDR             R0, =off_6D1648
PUSH            {R4,LR}
MOV             R4, R3
LDR             R0, [R0]
BL              sub_1E45C8
LDR             R1, [R0]
LDR             R1, [R1,#0x188]
BLX             R1
LDR             R1, [R4,#0xC]
ADD             R0, R0, #0x2600
ADD             R0, R0, #0x9A
CMP             R1, #0
MOVNE           R1, #1
STRB            R1, [R0]
MOV             R0, #0
POP             {R4,PC}
DCD off_6D1648
PUSH            {R4,LR}
MOV             R4, R3
VPUSH           {D8}
LDR             R1, [R3,#0xC]!
LDR             R0, =off_6D1648
LDR             R2, [R3,#8]
VLDR            S0, =1.0
VLDR            S1, =0.5
CMP             R2, #0
BIC             R2, R1, #1
VMOV            S2, R2
LDR             R0, [R0]
AND             R1, R1, #1
VCVT.F32.U32    S2, S2
BEQ             loc_15E5C0
CMP             R1, #0
VMUL.F32        S16, S2, S1
VADDNE.F32      S16, S16, S0
BL              sub_1E45C8
LDR             R1, [R0]
LDR             R1, [R1,#0x188]
BLX             R1
VMOV.F32        S1, S16
VLDR            S0, [R4,#0x70]
BL              sub_171BA4
VPOP            {D8}
MOV             R0, #0
POP             {R4,PC}
VMUL.F32        S16, S2, S1
CMP             R1, #0
VADDNE.F32      S16, S16, S0
BL              sub_1E45C8
LDR             R1, [R0]
LDR             R1, [R1,#0x188]
BLX             R1
VMOV.F32        S1, S16
VLDR            S0, [R4,#0x70]
BL              sub_16A3EC
NOP
NOP
B               loc_15E5B4
DCD off_6D1648
DCFS 1.0
DCFS 0.5
LDR             R0, =off_6D1648
PUSH            {R4,LR}
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
BL              sub_1E021C
MOV             R0, #0
POP             {R4,PC}
DCD off_6D1648
LDR             R0, =off_6D1648
PUSH            {R4,LR}
MOV             R4, R3
LDR             R0, [R0]
BL              sub_1E45C8
VLDR            S0, [R4,#0x6C]
VLDR            S1, =2.0
LDR             R1, [R4,#8]
POP             {R4,LR}
VMUL.F32        S0, S0, S1
CMP             R1, #0
MOVNE           R1, #1
MOVEQ           R1, #0
B               sub_2D1018
DCD off_6D1648
DCFS 2.0
LDR             R0, =off_6D1648
PUSH            {R4,LR}
MOV             R4, R3
LDR             R0, [R0]
BL              sub_1E45C8
LDR             R1, [R4,#8]
CMP             R1, #0
MOVNE           R1, #1
BL              sub_2D07C8
MOV             R0, #0
POP             {R4,PC}
DCD off_6D1648
LDR             R0, =off_6D1648
PUSH            {R4,LR}
LDR             R0, [R0]
BL              sub_1E45C8
LDR             R1, [R0]
LDR             R1, [R1,#0x188]
BLX             R1
BL              sub_16AF48
MOV             R0, #0
POP             {R4,PC}
DCD off_6D1648
PUSH            {LR}
ADD             R0, R3, #0x68 ; 'h'
VPUSH           {D8}
SUB             SP, SP, #0xC
ADD             R1, R3, #8
LDRD            R2, R3, [R0,#8]
LDR             R0, [R0,#0x10]
VLDR            S0, =1.0
STRD            R2, R3, [SP,#0x4B8+var_4B8]
STR             R0, [SP,#0x4B8+var_4B0]
LDR             R2, [R1,#4]
LDR             R1, [R1,#0x14]
LDR             R0, =off_6D1648
CMP             R2, #0
BIC             R2, R1, #1
VMOV            S2, R2
LDR             R0, [R0]
VLDR            S1, =0.5
AND             R1, R1, #1
BEQ             loc_15E750
VCVT.F32.U32    S2, S2
CMP             R1, #0
VMUL.F32        S16, S2, S1
VADDNE.F32      S16, S16, S0
BL              sub_1E45C8
LDR             R1, [R0]
LDR             R1, [R1,#0x188]
BLX             R1
VMOV.F32        S0, S16
MOV             R1, SP
BL              sub_16B0AC
ADD             SP, SP, #0xC
MOV             R0, #0
VPOP            {D8}
POP             {PC}
VCVT.F32.U32    S2, S2
CMP             R1, #0
VMUL.F32        S16, S2, S1
VADDNE.F32      S16, S16, S0
BL              sub_1E45C8
LDR             R1, [R0]
LDR             R1, [R1,#0x188]
BLX             R1
VMOV.F32        S0, S16
MOV             R1, SP
BL              sub_16AFC8
NOP
NOP
B               loc_15E740
DCD off_6D1648
DCFS 1.0
DCFS 0.5
PUSH            {R4,LR}
ADD             R1, R3, #0x70 ; 'p'
VPUSH           {D8}
ADD             R0, R3, #8
ADD             R4, R3, #0x68 ; 'h'
LDM             R1, {R1-R3}
SUB             SP, SP, #0x10
VLDR            S16, =2.0
STMEA           SP, {R1-R3}
LDR             R1, =off_6D1648
LDR             R0, [R0,#4]
CMP             R0, #0
LDR             R0, [R1]
BEQ             loc_15E7FC
BL              sub_1E45C8
LDR             R1, [R0]
LDR             R1, [R1,#0x188]
BLX             R1
VLDR            S0, [R4,#0x14]
MOV             R1, SP
VMUL.F32        S0, S0, S16
BL              sub_16B274
ADD             SP, SP, #0x10
MOV             R0, #0
VPOP            {D8}
POP             {R4,PC}
NOP
BL              sub_1E45C8
LDR             R1, [R0]
LDR             R1, [R1,#0x188]
BLX             R1
VLDR            S0, [R4,#0x14]
MOV             R1, SP
VMUL.F32        S0, S0, S16
BL              sub_16B190
NOP
NOP
B               loc_15E7EC
DCD off_6D1648
DCFS 2.0
LDR             R0, =off_6D1648
PUSH            {R4,LR}
MOV             R4, R3
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
LDR             R1, [R4,#8]
CMP             R1, #0
MOVEQ           R1, #1
MOVNE           R1, #0
BL              sub_16671C
MOV             R0, #0
POP             {R4,PC}
DCD off_6D1648
LDR             R0, =off_6D1648
PUSH            {R4,LR}
ADD             R4, R3, #8
LDR             R0, [R0]
BL              sub_1E45C8
LDR             R1, [R4,#8]
CMP             R1, #0
LDR             R1, [R4,#4]
POP             {R4,LR}
MOVNE           R2, #1
MOVEQ           R2, #0
AND             R1, R1, #0xFF
B               sub_2D1368
DCD off_6D1648
LDR             R0, =off_6D1648
PUSH            {R4,LR}
LDR             R0, [R0]
BL              sub_1E45C8
POP             {R4,LR}
B               sub_2D137C
DCD off_6D1648
LDR             R0, =off_6D1648
PUSH            {R4,LR}
MOV             R4, R3
LDR             R0, [R0]
BL              sub_1E45C8
LDR             R1, [R4,#8]
CMP             R1, #0
MOVNE           R1, #1
BL              sub_2D049C
MOV             R0, #0
POP             {R4,PC}
DCD off_6D1648
LDR             R0, =off_6D1648
PUSH            {R4,LR}
MOV             R4, R3
LDR             R0, [R0]
BL              sub_1E45C8
LDR             R1, [R4,#8]
AND             R1, R1, #0xFF
BL              sub_2D1044
MOV             R0, #0
POP             {R4,PC}
DCD off_6D1648
LDR             R0, =off_6D1648
PUSH            {R4,LR}
MOV             R4, R3
LDR             R0, [R0]
LDR             R0, [R0,#0xC0]
LDR             R1, [R4,#8]
MOV             R2, #1
AND             R1, R1, #0xFF
BL              sub_15FB30
MOV             R0, #0
POP             {R4,PC}
DCD off_6D1648
NOP
PUSH            {R4-R10,LR}
MOV             R5, R0
MOV             R8, R1
MOV             R9, R2
LDRH            R2, [R3]
ADD             R7, R5, #0x400
MOV             R6, R3
SUB             R2, R2, #0x200
SUB             R2, R2, #6
CMP             R2, #9; switch 9 cases
ADD             R1, R3, #8
ADD             R0, R3, #0x68 ; 'h'
ADD             R4, R5, #0x470
ADD             R7, R7, #0x6C ; 'l'
LDRCC           PC, [PC,R2,LSL#2]; switch jump
B               def_15E984; jumptable 0015E984 default case
DCD loc_15E9B0; jump table for switch statement
MOV             R0, #9; jumptable 0015E984 case 0
STRB            R0, [R5,#0x46C]
B               def_15E984; jumptable 0015E984 default case
LDR             R0, [R1]; jumptable 0015E984 case 1
STRH            R0, [R4]
B               def_15E984; jumptable 0015E984 default case
LDR             R1, [R0]; jumptable 0015E984 case 2
STR             R1, [R4,#4]
LDR             R1, [R0,#4]
STR             R1, [R4,#8]
LDR             R0, [R0,#8]
STR             R0, [R4,#0xC]
B               def_15E984; jumptable 0015E984 default case
LDR             R1, [R0]; jumptable 0015E984 case 3
STR             R1, [R4,#0x10]
LDR             R1, [R0,#4]
STR             R1, [R4,#0x14]
LDR             R1, [R0,#8]
STR             R1, [R4,#0x18]
LDR             R0, [R0,#0xC]
STR             R0, [R4,#0x1C]
B               def_15E984; jumptable 0015E984 default case
LDR             R1, [R0]; jumptable 0015E984 case 4
STR             R1, [R4,#0x20]
LDR             R1, [R0,#4]
STR             R1, [R4,#0x24]
LDR             R1, [R0,#8]
STR             R1, [R4,#0x28]
LDR             R0, [R0,#0xC]
STR             R0, [R4,#0x2C]
B               def_15E984; jumptable 0015E984 default case
LDR             R1, [R0]; jumptable 0015E984 case 5
STR             R1, [R4,#0x30]
LDR             R1, [R0,#4]
STR             R1, [R4,#0x34]
LDR             R1, [R0,#8]
STR             R1, [R4,#0x38]
LDR             R0, [R0,#0xC]
STR             R0, [R4,#0x3C]
B               def_15E984; jumptable 0015E984 default case
LDR             R1, [R0]; jumptable 0015E984 case 6
STR             R1, [R4,#0x40]
LDR             R0, [R0,#4]
STR             R0, [R4,#0x44]
B               def_15E984; jumptable 0015E984 default case
LDR             R1, [R0]; jumptable 0015E984 case 7
STR             R1, [R4,#0x48]
LDR             R1, [R0,#4]
STR             R1, [R4,#0x4C]
LDR             R1, [R0,#8]
STR             R1, [R4,#0x50]
LDR             R0, [R0,#0xC]
STR             R0, [R4,#0x54]
B               def_15E984; jumptable 0015E984 default case
LDR             R0, =off_6D1648; jumptable 0015E984 case 8
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
LDRB            R1, [R5,#0x46C]
ADD             R0, R0, #0x13C
MOV             R2, R4
BL              loc_19D68C
LDRB            R1, [R0,#0xB5]
LDRH            R0, [R6,#2]
MOV             R2, R9
VMOV            S0, R1
MOV             R1, R8
VCVT.F32.U32    S0, S0
BL              sub_145730
MOV             R0, #0xFF
STRB            R0, [R7]
MOV             R0, #0; jumptable 0015E984 default case
POP             {R4-R10,PC}

PUSH            {R4,R5,LR}
MOV             R5, R1
LDR             R0, =off_6CE970
MOV             R4, R2
VPUSH           {D8}
VMOV.F32        S16, S0
LDR             R0, [R0]
SUB             SP, SP, #0xC
BL              sub_528EB0
CMP             R4, #0x2A; switch 42 cases
LDRCC           PC, [PC,R4,LSL#2]; switch jump
B               def_14B894; jumptable 0014B894 default case, cases 0,7-13,25,37,39,40
DCD def_14B894; jump table for switch statement
VLDR            S17, =0.0; jumptable 0014B894 case 1
VCMP.F32        S16, S17
VMRS            APSR_nzcv, FPSCR
MOVNE           R1, #1
MOVEQ           R1, #0
STRB            R1, [R0,#0xF2]
MOV             R0, R5
BL              sub_47FF54
CMP             R0, #0
VCMPNE.F32      S16, S17
VMRSNE          APSR_nzcv, FPSCR
BEQ             def_14B894; jumptable 0014B894 default case, cases 0,7-13,25,37,39,40
MOV             R1, R5
LDR             R5, =off_6CE970
LDR             R0, [R5]
BL              sub_52F508
MOV             R4, R0
MOV             R1, R0
LDR             R0, =sub_19D6B8
LDR             R3, [R5]
MOV             R2, #1
ADD             R0, R0, R3; sub_19D6B8
BL              sub_3D3D98
LDR             R1, =0x19DFE8
LDR             R2, [R5]
LDR             R2, [R2,R1]
MOV             R1, R0
MOV             R0, R2
BL              sub_1CC86C
LDRB            R0, [R4,#0x1F9]
CMP             R0, #1
MOVEQ           R0, #1
STRBEQ          R0, [R4,#0x21F]
ADD             SP, SP, #0xC; jumptable 0014B894 default case, cases 0,7-13,25,37,39,40
VPOP            {D8}
POP             {R4,R5,PC}
VCVT.S32.F32    S0, S16; jumptable 0014B894 case 2
VMOV            R1, S0
STRB            R1, [R0,#0xF6]
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4,R5,PC}
VCVT.S32.F32    S0, S16; jumptable 0014B894 case 3
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4,R5,LR}
VMOV            R1, S0
AND             R1, R1, #0xFF
B               sub_14C450
ADD             R1, R0, #0x24 ; '$'; jumptable 0014B894 cases 4-6
MOV             R12, SP
LDM             R1, {R1-R3}
ADD             R12, R12, R4,LSL#2
STMEA           SP, {R1-R3}
VSTR            S16, [R12,#-0x10]
LDR             R1, [R0]
LDR             R2, [R1,#0x20]
MOV             R1, SP
BLX             R2
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4,R5,PC}
VCVT.S32.F32    S0, S16; jumptable 0014B894 case 14
VSTR            S0, [R0,#0x40]
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4,R5,PC}
ADD             R1, R0, #0x5C ; '\'; jumptable 0014B894 cases 15-17
MOV             R12, SP
LDM             R1, {R1-R3}
ADD             R12, R12, R4,LSL#2
STMEA           SP, {R1-R3}
VSTR            S16, [R12,#-0x3C]
LDR             R1, [R0]
LDR             R2, [R1,#0x34]
MOV             R1, SP
BLX             R2
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4,R5,PC}
ADD             R1, R0, #0x44 ; 'D'; jumptable 0014B894 cases 18-20
MOV             R12, SP
LDM             R1, {R1-R3}
ADD             R12, R12, R4,LSL#2
STMEA           SP, {R1-R3}
VSTR            S16, [R12,#-0x48]
LDR             R1, [R0]
LDR             R2, [R1,#0x38]
MOV             R1, SP
BLX             R2
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4,R5,PC}
VCVT.U32.F32    S0, S16; jumptable 0014B894 case 21
LDR             R2, [R0,#0x9C]
MOV             R2, R2,LSR#24
VMOV            R1, S0
ORR             R1, R2, R1,LSL#8
REV             R1, R1
STR             R1, [SP,#0x20+var_20]
LDR             R1, [R0]
LDR             R2, [R1,#0x3C]
MOV             R1, SP
BLX             R2
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4,R5,PC}
VCVT.S32.F32    S0, S16; jumptable 0014B894 case 22
LDR             R1, [R0,#0x9C]
BIC             R1, R1, #0xFF000000
VMOV            R2, S0
ORR             R1, R1, R2,LSL#24
STR             R1, [SP,#0x20+var_20]
LDR             R1, [R0]
LDR             R2, [R1,#0x3C]
MOV             R1, SP
BLX             R2
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4,R5,PC}
VCVT.U32.F32    S0, S16; jumptable 0014B894 case 23
LDR             R2, [R0,#0xA0]
MOV             R2, R2,LSR#24
VMOV            R1, S0
ORR             R1, R2, R1,LSL#8
REV             R1, R1
STR             R1, [SP,#0x20+var_20]
LDR             R1, [R0]
LDR             R2, [R1,#0x40]
MOV             R1, SP
BLX             R2
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4,R5,PC}
VCVT.S32.F32    S0, S16; jumptable 0014B894 case 24
LDR             R1, [R0,#0xA0]
BIC             R1, R1, #0xFF000000
VMOV            R2, S0
ORR             R1, R1, R2,LSL#24
STR             R1, [SP,#0x20+var_20]
LDR             R1, [R0]
LDR             R2, [R1,#0x40]
MOV             R1, SP
BLX             R2
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4,R5,PC}
VLDR            S0, =0.0; jumptable 0014B894 case 26
VCMP.F32        S16, S0
VMRS            APSR_nzcv, FPSCR
MOVNE           R1, #1
MOVEQ           R1, #0
STRB            R1, [R0,#0xF3]
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4,R5,PC}
VLDR            S0, =0.0; jumptable 0014B894 case 27
VCMP.F32        S16, S0
VMRS            APSR_nzcv, FPSCR
MOVNE           R1, #1
MOVEQ           R1, #0
STRB            R1, [R0,#0xF4]
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4,R5,PC}
VSTR            S16, [R0,#0x98]; jumptable 0014B894 case 28
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4,R5,PC}
VCVT.S32.F32    S0, S16; jumptable 0014B894 case 29
VMOV            R1, S0
STRB            R1, [R0,#0xF1]
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4,R5,PC}
VCVT.S32.F32    S0, S16; jumptable 0014B894 case 30
VMOV            R1, S0
STRB            R1, [R0,#0xF7]
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4,R5,PC}
DCD off_6CE970
DCFS 0.0
DCD sub_19D6B8
DCD 0x19DFE8
VLDR            S0, =0.0; jumptable 0014B894 case 31
VCMP.F32        S16, S0
VMRS            APSR_nzcv, FPSCR
MOVNE           R1, #1
MOVEQ           R1, #0
STRB            R1, [R0,#0xF5]
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4,R5,PC}
ADD             R0, R0, R4,LSL#2; jumptable 0014B894 cases 32,33
VSTR            S16, [R0,#-0x30]
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4,R5,PC}
ADD             R0, R0, R4,LSL#2; jumptable 0014B894 cases 34-36
VSTR            S16, [R0,#-0x58]
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4,R5,PC}
VCVT.S32.F32    S0, S16; jumptable 0014B894 case 38
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4,R5,LR}
VMOV            R1, S0
B               sub_14B808
VCVT.U32.F32    S0, S16; jumptable 0014B894 case 41
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4,R5,LR}
VMOV            R1, S0
AND             R1, R1, #0xFF
NOP

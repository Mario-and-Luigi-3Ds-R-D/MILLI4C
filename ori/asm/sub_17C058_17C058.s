PUSH            {R4,LR}
CMP             R2, #0x6D; switch 109 cases
VPUSH           {D8}
VMOV.F32        S16, S0
LDRCC           PC, [PC,R2,LSL#2]; switch jump
B               def_17C068; jumptable 0017C068 default case, cases 2-4,7-14,26-33,55,56,61-64,90,93,100,102-107
DCD loc_17C224, loc_17C248, def_17C068, def_17C068; jump table for switch statement
VCVT.U32.F32    S0, S16; jumptable 0017C068 case 0
LDRB            R2, [R1,#0xDE]
BIC             R2, R2, #1
VMOV            R0, S0
AND             R0, R0, #1
ORR             R0, R0, R2
STRB            R0, [R1,#0xDE]
VPOP            {D8}; jumptable 0017C250 default case, cases 0,2-4,7-14
POP             {R4,PC}
CMP             R2, #0x1A; jumptable 0017C068 cases 1,5,6,15-25
MOV             R0, R1
LDRCC           PC, [PC,R2,LSL#2]; switch jump
B               def_17C250; jumptable 0017C250 default case, cases 0,2-4,7-14
DCD def_17C250; jump table for switch statement
VLDR            S0, =0.0; jumptable 0017C250 case 1
LDR             R2, [R0]
VCMP.F32        S16, S0
LDR             R2, [R2,#0x84]
VMRS            APSR_nzcv, FPSCR
VPOP            {D8}
POP             {R4,LR}
MOVNE           R1, #1
MOVEQ           R1, #0
BX              R2
VSTR            S16, [R1,#0x140]; jumptable 0017C250 case 5
VPOP            {D8}
POP             {R4,PC}
VSTR            S16, [R1,#0x144]; jumptable 0017C250 case 6
VPOP            {D8}
POP             {R4,PC}
VSTR            S16, [R1,#0xFC]; jumptable 0017C250 case 15
VPOP            {D8}
POP             {R4,PC}
VSTR            S16, [R1,#0x100]; jumptable 0017C250 case 16
VPOP            {D8}
POP             {R4,PC}
VSTR            S16, [R1,#0x104]; jumptable 0017C250 case 17
VPOP            {D8}
POP             {R4,PC}
VLDR            S0, =2.0; jumptable 0017C250 case 18
ADD             R0, R1, #0x400
VMUL.F32        S0, S16, S0
VSTR            S0, [R0,#0x7C]
VPOP            {D8}
POP             {R4,PC}
VLDR            S0, =4.0; jumptable 0017C250 case 19
ADD             R0, R1, #0x400
VMUL.F32        S0, S16, S0
VSTR            S0, [R0,#0x84]
VPOP            {D8}
POP             {R4,PC}
VLDR            S0, =2.0; jumptable 0017C250 case 20
ADD             R0, R1, #0x400
VMUL.F32        S0, S16, S0
VSTR            S0, [R0,#0x8C]
VPOP            {D8}
POP             {R4,PC}
VLDR            S0, =4.0; jumptable 0017C250 case 21
ADD             R0, R1, #0x400
VMUL.F32        S0, S16, S0
VSTR            S0, [R0,#0x94]
VPOP            {D8}
POP             {R4,PC}
VLDR            S0, =0.017453; jumptable 0017C250 case 22
ADD             R0, R1, #0x400
VMUL.F32        S0, S16, S0
VSTR            S0, [R0,#0x74]
VPOP            {D8}
POP             {R4,PC}
VCVT.U32.F32    S0, S16; jumptable 0017C250 case 23
LDR             R1, [R0]
MOV             R2, #1
LDR             R3, [R1,#0x60]
VPOP            {D8}
VMOV            R1, S0
POP             {R4,LR}
AND             R1, R1, #0xFF
BX              R3
VCVT.U32.F32    S0, S16; jumptable 0017C250 case 24
LDR             R3, [R0,#0x464]
ADD             R1, R0, #0x400
MOV             R2, #0x20000
BIC             R3, R3, #0x20000
ADD             R1, R1, #0x64 ; 'd'
VMOV            R0, S0
AND             R0, R2, R0,LSL#17
ORR             R0, R0, R3
B               loc_17C40C
VCVT.U32.F32    S0, S16; jumptable 0017C250 case 25
ADD             R1, R0, #0x400
LDR             R0, [R0,#0x464]
MOV             R3, #0x40000
ADD             R1, R1, #0x64 ; 'd'
BIC             R12, R0, #0x40000
VMOV            R2, S0
AND             R0, R3, R2,LSL#18
ORR             R0, R0, R12
STR             R0, [R1]
VPOP            {D8}
POP             {R4,PC}
SUB             R0, R2, #0x22 ; '"'; jumptable 0017C068 cases 34-54,57-60,65-87
CMP             R0, #0x36; switch 54 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_17C250; jumptable 0017C250 default case, cases 0,2-4,7-14
DCD loc_17C500, loc_17C510, loc_17C538, loc_17C568; jump table for switch statement
ADD             R0, R1, #0x400; jumptable 0017C420 case 0
VSTR            S16, [R0,#0xB8]
VPOP            {D8}
POP             {R4,PC}
VCVT.U32.F32    S0, S16; jumptable 0017C420 case 1
ADD             R0, R1, #0x400
LDR             R1, [R1,#0x4EC]
MOV             R3, #0x100
ADD             R0, R0, #0xEC
BIC             R12, R1, #0x100
VMOV            R2, S0
AND             R1, R3, R2,LSL#8
ORR             R1, R1, R12
B               loc_17C784
VCVT.U32.F32    S0, S16; jumptable 0017C420 case 2
LDR             R3, [R1,#0x4EC]
ADD             R0, R1, #0x400
MOV             R2, #0x200
ADD             R0, R0, #0xEC
BIC             R3, R3, #0x200
VMOV            R1, S0
AND             R1, R2, R1,LSL#9
ORR             R1, R1, R3
STR             R1, [R0]
VPOP            {D8}
POP             {R4,PC}
VCVT.U32.F32    S0, S16; jumptable 0017C420 case 3
LDR             R3, [R1,#0x4EC]
ADD             R0, R1, #0x400
MOV             R2, #0x10
ADD             R0, R0, #0xEC
BIC             R3, R3, #0x10
VMOV            R1, S0
AND             R1, R2, R1,LSL#4
ORR             R1, R1, R3
STR             R1, [R0]
VPOP            {D8}
POP             {R4,PC}
DCFS 0.0
DCFS 2.0
DCFS 4.0
DCFS 0.017453
VCVT.U32.F32    S0, S16; jumptable 0017C420 case 4
LDR             R3, [R1,#0x5E0]
ADD             R0, R1, #0x5E0
MOV             R2, #8
BIC             R3, R3, #8
VMOV            R1, S0
AND             R1, R2, R1,LSL#3
ORR             R1, R1, R3
STR             R1, [R0]
VPOP            {D8}
POP             {R4,PC}
VCVT.U32.F32    S0, S16; jumptable 0017C420 case 5
LDR             R3, [R1,#0x4EC]
ADD             R0, R1, #0x400
MOV             R2, #0xE0
ADD             R0, R0, #0xEC
BIC             R3, R3, #0xE0
VMOV            R1, S0
AND             R1, R2, R1,LSL#5
ORR             R1, R1, R3
STR             R1, [R0]
VPOP            {D8}
POP             {R4,PC}
VCVT.U32.F32    S0, S16; jumptable 0017C420 case 6
LDR             R3, [R1,#0x658]
ADD             R0, R1, #0x400
MOV             R2, #0xFC0000
ADD             R0, R0, #0x258
BIC             R3, R3, #0xFC0000
VMOV            R1, S0
AND             R1, R2, R1,LSL#18
ORR             R1, R1, R3
STR             R1, [R0]
VPOP            {D8}
POP             {R4,PC}
VCVT.U32.F32    S0, S16; jumptable 0017C420 case 7
LDR             R3, [R1,#0x4EC]
ADD             R0, R1, #0x400
MOV             R2, #0x400
ADD             R0, R0, #0xEC
BIC             R3, R3, #0x400
VMOV            R1, S0
AND             R1, R2, R1,LSL#10
ORR             R1, R1, R3
STR             R1, [R0]
VPOP            {D8}
POP             {R4,PC}
VCVT.U32.F32    S0, S16; jumptable 0017C420 case 8
LDR             R3, [R1,#0x4EC]
ADD             R0, R1, #0x400
MOV             R2, #0xF000
ADD             R0, R0, #0xEC
BIC             R3, R3, #0xF000
VMOV            R1, S0
AND             R1, R2, R1,LSL#12
ORR             R1, R1, R3
STR             R1, [R0]
VPOP            {D8}
POP             {R4,PC}
VCVT.U32.F32    S0, S16; jumptable 0017C420 case 9
LDR             R3, [R1,#0x5E0]
ADD             R0, R1, #0x5E0
VMOV            R2, S0
AND             R1, R2, #1
BIC             R2, R3, #1
B               loc_17C8AC
VCVT.U32.F32    S0, S16; jumptable 0017C420 case 10
LDR             R3, [R1,#0x5E0]
ADD             R0, R1, #0x5E0
MOV             R2, #2
BIC             R3, R3, #2
VMOV            R1, S0
AND             R1, R2, R1,LSL#1
ORR             R1, R1, R3
STR             R1, [R0]
VPOP            {D8}
POP             {R4,PC}
VCVT.U32.F32    S0, S16; jumptable 0017C420 case 11
LDR             R3, [R1,#0x648]
ADD             R0, R1, #0x400
MOV             R2, #0x20 ; ' '
ADD             R0, R0, #0x248
BIC             R3, R3, #0x20 ; ' '
VMOV            R1, S0
AND             R1, R2, R1,LSL#5
ORR             R1, R1, R3
STR             R1, [R0]
VPOP            {D8}
POP             {R4,PC}
VCVT.U32.F32    S0, S16; jumptable 0017C420 case 12
LDR             R3, [R1,#0x648]
ADD             R0, R1, #0x400
ADD             R0, R0, #0x248
VMOV            R2, S0
AND             R1, R2, #1
BIC             R2, R3, #1
ORR             R1, R1, R2
B               loc_17C784
VCVT.U32.F32    S0, S16; jumptable 0017C420 case 13
LDR             R3, [R1,#0x648]
ADD             R0, R1, #0x400
MOV             R2, #2
ADD             R0, R0, #0x248
BIC             R3, R3, #2
VMOV            R1, S0
AND             R1, R2, R1,LSL#1
ORR             R1, R1, R3
STR             R1, [R0]
VPOP            {D8}
POP             {R4,PC}
VCVT.U32.F32    S0, S16; jumptable 0017C420 case 14
LDR             R3, [R1,#0x648]
ADD             R0, R1, #0x400
MOV             R2, #4
BIC             R3, R3, #4
ADD             R0, R0, #0x248
VMOV            R1, S0
AND             R1, R2, R1,LSL#2
ORR             R1, R1, R3
STR             R1, [R0]
VPOP            {D8}
POP             {R4,PC}
VCVT.U32.F32    S0, S16; jumptable 0017C420 case 15
LDR             R3, [R1,#0x648]
ADD             R0, R1, #0x400
MOV             R2, #8
ADD             R0, R0, #0x248
BIC             R3, R3, #8
VMOV            R1, S0
AND             R1, R2, R1,LSL#3
B               loc_17C888
VCVT.U32.F32    S0, S16; jumptable 0017C420 case 16
LDR             R3, [R1,#0x648]
ADD             R0, R1, #0x400
MOV             R2, #0x10
ADD             R0, R0, #0x248
BIC             R3, R3, #0x10
VMOV            R1, S0
AND             R1, R2, R1,LSL#4
B               loc_17C888
VLDR            S0, =2.0; jumptable 0017C420 case 17
ADD             R0, R1, #0x400
VMUL.F32        S0, S16, S0
VSTR            S0, [R0,#0xD4]
VPOP            {D8}
POP             {R4,PC}
VLDR            S0, =4.0; jumptable 0017C420 case 18
ADD             R0, R1, #0x400
VMUL.F32        S0, S16, S0
VSTR            S0, [R0,#0xDC]
VPOP            {D8}
POP             {R4,PC}
VLDR            S0, =2.0; jumptable 0017C420 case 19
ADD             R0, R1, #0x400
VMUL.F32        S0, S16, S0
VSTR            S0, [R0,#0xE4]
VPOP            {D8}
POP             {R4,PC}
VCVT.U32.F32    S0, S16; jumptable 0017C420 case 20
ADD             R0, R1, #0x400
LDR             R1, [R1,#0x4EC]
MOV             R3, #0x800
ADD             R0, R0, #0xEC
BIC             R12, R1, #0x800
VMOV            R2, S0
AND             R1, R3, R2,LSL#11
B               loc_17C990
VCVT.U32.F32    S0, S16; jumptable 0017C420 case 24
LDR             R3, [R1,#0x648]
ADD             R0, R1, #0x400
MOV             R2, #0x800000
ADD             R0, R0, #0x248
BIC             R3, R3, #0x800000
VMOV            R1, S0
AND             R1, R2, R1,LSL#23
B               loc_17C888
VCVT.U32.F32    S0, S16; jumptable 0017C420 case 25
LDR             R3, [R1,#0x648]
ADD             R0, R1, #0x400
MOV             R2, #0x1000000
ADD             R0, R0, #0x248
BIC             R3, R3, #0x1000000
VMOV            R1, S0
AND             R1, R2, R1,LSL#24
ORR             R1, R1, R3
B               loc_17C784
VCVT.U32.F32    S0, S16; jumptable 0017C420 case 26
LDR             R3, [R1,#0x658]
ADD             R0, R1, #0x400
ADD             R0, R0, #0x258
VMOV            R2, S0
MOV             R1, R2,LSL#30
BIC             R2, R3, #0xC0000000
ORR             R1, R1, R2
B               loc_17C784
VCVT.U32.F32    S0, S16; jumptable 0017C420 case 31
LDR             R3, [R1,#0x4F0]
ADD             R0, R1, #0x4F0
VMOV            R2, S0
AND             R1, R2, #1
BIC             R2, R3, #1
ORR             R1, R1, R2
B               loc_17C784
VCVT.U32.F32    S0, S16; jumptable 0017C420 case 32
LDR             R3, [R1,#0x4F0]
ADD             R0, R1, #0x4F0
MOV             R2, #6
BIC             R3, R3, #6
VMOV            R1, S0
AND             R1, R2, R1,LSL#1
B               loc_17C888
VCVT.U32.F32    S0, S16; jumptable 0017C420 case 33
ADD             R0, R1, #0x4F0
LDR             R1, [R1,#0x4F0]
MOV             R3, #8
BIC             R12, R1, #8
VMOV            R2, S0
AND             R1, R3, R2,LSL#3
B               loc_17C990
VCVT.U32.F32    S0, S16; jumptable 0017C420 case 34
ADD             R0, R1, #0x4F0
LDR             R1, [R1,#0x4F0]
MOV             R3, #0x10
BIC             R12, R1, #0x10
VMOV            R2, S0
AND             R1, R3, R2,LSL#4
B               loc_17C990
VCVT.U32.F32    S0, S16; jumptable 0017C420 case 35
ADD             R0, R1, #0x4F0
LDR             R1, [R1,#0x4F0]
MOV             R3, #0x20 ; ' '
BIC             R12, R1, #0x20 ; ' '
VMOV            R2, S0
AND             R1, R3, R2,LSL#5
B               loc_17C990
VCVT.U32.F32    S0, S16; jumptable 0017C420 case 36
LDR             R3, [R1,#0x4F0]
ADD             R0, R1, #0x4F0
MOV             R2, #0x40 ; '@'
BIC             R3, R3, #0x40 ; '@'
VMOV            R1, S0
AND             R1, R2, R1,LSL#6
B               loc_17C888
VCVT.U32.F32    S0, S16; jumptable 0017C420 case 37
ADD             R0, R1, #0x4F0
LDR             R1, [R1,#0x4F0]
MOV             R3, #0x80
BIC             R12, R1, #0x80
VMOV            R2, S0
AND             R1, R3, R2,LSL#7
ORR             R1, R1, R12
B               loc_17C784
VCVT.U32.F32    S0, S16; jumptable 0017C420 case 38
LDR             R3, [R1,#0x4F0]
ADD             R0, R1, #0x4F0
MOV             R2, #0x100
BIC             R3, R3, #0x100
VMOV            R1, S0
AND             R1, R2, R1,LSL#8
B               loc_17C888
VCVT.U32.F32    S0, S16; jumptable 0017C420 case 39
LDR             R3, [R1,#0x648]
ADD             R0, R1, #0x400
MOV             R2, #0x2000000
ADD             R0, R0, #0x248
BIC             R3, R3, #0x2000000
VMOV            R1, S0
AND             R1, R2, R1,LSL#25
B               loc_17C888
VCVT.U32.F32    S0, S16; jumptable 0017C420 case 40
VMOV            R0, S0
STR             R0, [R1,#0x66C]
VPOP            {D8}
POP             {R4,PC}
VCVT.U32.F32    S0, S16; jumptable 0017C420 case 41
VMOV            R0, S0
STR             R0, [R1,#0x670]
VPOP            {D8}
POP             {R4,PC}
VCVT.U32.F32    S0, S16; jumptable 0017C420 case 42
ADD             R1, R1, #0x600
VMOV            R0, S0
STRH            R0, [R1,#0x76]
VPOP            {D8}
POP             {R4,PC}
VCVT.U32.F32    S0, S16; jumptable 0017C420 case 53
ADD             R0, R1, #0x400
LDR             R1, [R1,#0x648]
MOV             R3, #0x4000000
ADD             R0, R0, #0x248
BIC             R12, R1, #0x4000000
VMOV            R2, S0
AND             R1, R3, R2,LSL#26
B               loc_17C990
CMP             R2, #0x58 ; 'X'; jumptable 0017C068 cases 88,89
BEQ             loc_17CA68
CMP             R2, #0x59 ; 'Y'
BNE             def_17C250; jumptable 0017C250 default case, cases 0,2-4,7-14
ADD             R0, R1, #0x800
VLDR            S0, =2.0
VMUL.F32        S0, S16, S0
VSTR            S0, [R0,#0x34]
VPOP            {D8}
POP             {R4,PC}
VLDR            S0, =4.0
ADD             R0, R1, #0x800
VMUL.F32        S0, S16, S0
VSTR            S0, [R0,#0x30]
VPOP            {D8}
POP             {R4,PC}
CMP             R2, #0x5B ; '['; jumptable 0017C068 cases 91,92,94,95
MOV             R0, R1
BEQ             loc_17CB04
CMP             R2, #0x5C ; '\'
BEQ             loc_17CB2C
CMP             R2, #0x5E ; '^'
BEQ             loc_17CB54
CMP             R2, #0x5F ; '_'
BNE             def_17C250; jumptable 0017C250 default case, cases 0,2-4,7-14
VCVT.U32.F32    S0, S16
LDR             R2, =byte_6EBCB4
LDR             R12, [R0,#0x658]
MOV             R3, #0x3F000000
ADD             R4, R0, #0xF0
BIC             R12, R12, #0x3F000000
VMOV            R1, S0
ADD             R1, R2, R1,LSL#5
ADD             R2, R1, #4
LDRB            LR, [R1]
AND             R3, R3, LR,LSL#24
ORR             R3, R3, R12
STR             R3, [R0,#0x658]
LDM             R2, {R2,R3,R12}
STM             R4, {R2,R3,R12}
LDR             R2, [R1,#0x10]
STR             R2, [R0,#0xABC]
LDRD            R2, R3, [R1,#0x14]
LDR             R1, [R1,#0x1C]
STR             R1, [R0,#0xAC8]
ADD             R0, R0, #0xAC0
STM             R0, {R2,R3}
VPOP            {D8}
POP             {R4,PC}
VLDR            S0, =0.0
LDR             R2, [R0]
VCMP.F32        S16, S0
LDR             R2, [R2,#0x36C]
VMRS            APSR_nzcv, FPSCR
VPOP            {D8}
POP             {R4,LR}
MOVNE           R1, #1
MOVEQ           R1, #0
BX              R2
VLDR            S0, =0.0
LDR             R2, [R0]
VCMP.F32        S16, S0
LDR             R2, [R2,#0x368]
VMRS            APSR_nzcv, FPSCR
VPOP            {D8}
POP             {R4,LR}
MOVNE           R1, #1
MOVEQ           R1, #0
BX              R2
VLDR            S0, =0.0
LDR             R2, [R0]
VCMP.F32        S16, S0
LDR             R2, [R2,#0x364]
VMRS            APSR_nzcv, FPSCR
VPOP            {D8}
POP             {R4,LR}
MOVNE           R1, #1
MOVEQ           R1, #0
BX              R2
CMP             R2, #0x60 ; '`'; jumptable 0017C068 cases 96-99
BEQ             loc_17CBD0
CMP             R2, #0x61 ; 'a'
BEQ             loc_17CBF8
CMP             R2, #0x62 ; 'b'
BEQ             loc_17CC28
CMP             R2, #0x63 ; 'c'
BNE             def_17C250; jumptable 0017C250 default case, cases 0,2-4,7-14
ADD             R2, R1, #0x400
VLDR            S0, =0.0
LDRB            R1, [R1,#0x75C]
ADD             R2, R2, #0x35C
VCMP.F32        S16, S0
BIC             R1, R1, #7
VMRS            APSR_nzcv, FPSCR
MOVNE           R0, #1
MOVEQ           R0, #0
ORR             R0, R0, R1
STRB            R0, [R2]
VPOP            {D8}
POP             {R4,PC}
VCVT.U32.F32    S0, S16
LDRB            R3, [R1,#0x75C]
ADD             R0, R1, #0x400
MOV             R2, #8
BIC             R3, R3, #8
ADD             R0, R0, #0x35C
VMOV            R1, S0
AND             R1, R2, R1,LSL#3
ORR             R1, R1, R3
B               loc_17CC4C
VCVT.U32.F32    S0, S16
ADD             R0, R1, #0x400
LDRB            R1, [R1,#0x75C]
MOV             R3, #0x10
ADD             R0, R0, #0x35C
BIC             R12, R1, #0x10
VMOV            R2, S0
AND             R1, R3, R2,LSL#4
ORR             R1, R1, R12
STRB            R1, [R0]
VPOP            {D8}
POP             {R4,PC}
VCVT.U32.F32    S0, S16
ADD             R0, R1, #0x400
LDRB            R1, [R1,#0x75C]
MOV             R3, #0x20 ; ' '
ADD             R0, R0, #0x35C
BIC             R12, R1, #0x20 ; ' '
VMOV            R2, S0
AND             R1, R3, R2,LSL#5
ORR             R1, R1, R12
STRB            R1, [R0]
VPOP            {D8}
POP             {R4,PC}
MOV             R0, R1; jumptable 0017C068 case 101
LDR             R1, [R1]
LDR             R1, [R1,#0x38]
BLX             R1
VLDR            S0, =0.0
LDR             R0, [R0,#0xA4]
VCMP.F32        S16, S0
VMRS            APSR_nzcv, FPSCR
MOVEQ           R1, #0
MOVNE           R1, #3
STRB            R1, [R0,#0x6F]
VPOP            {D8}
POP             {R4,PC}
MOV             R0, R1; jumptable 0017C068 case 108
LDR             R1, [R1]
LDR             R1, [R1,#0x3C]
BLX             R1
VCVT.U32.F32    S0, S16
LDRB            R2, [R0,#0x2F7]
MOV             R3, #2
BIC             R2, R2, #2
VMOV            R1, S0
AND             R1, R3, R1,LSL#1
ORR             R1, R1, R2
STRB            R1, [R0,#0x2F7]
VPOP            {D8}
POP             {R4,PC}
LDR             R3, [R0]; jumptable 0017C068 default case, cases 2-4,7-14,26-33,55,56,61-64,90,93,100,102-107
VMOV.F32        S0, S16
LDR             R3, [R3,#0x98]
VPOP            {D8}
POP             {R4,LR}
BX              R3

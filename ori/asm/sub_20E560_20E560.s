PUSH            {R4,LR}
LDR             R0, =off_6CE970
MOV             R4, R2
VPUSH           {D8}
VMOV.F32        S16, S0
LDR             R0, [R0]
BL              sub_52F480
SUB             R1, R4, #0x50 ; 'P'
CMP             R1, #0x35; switch 53 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_20E584; jumptable 0020E584 default case, cases 9-13,15,19,20,36-44,47,48
DCD loc_20E660, loc_20E678, loc_20E690, loc_20E6A8; jump table for switch statement
VCVT.S32.F32    S0, S16; jumptable 0020E584 case 0
ADD             R1, R0, #0x100
VMOV            R0, S0
STRH            R0, [R1,#0x44]
VPOP            {D8}; jumptable 0020E584 default case, cases 9-13,15,19,20,36-44,47,48
POP             {R4,PC}
VCVT.S32.F32    S0, S16; jumptable 0020E584 case 1
ADD             R1, R0, #0x100
VMOV            R0, S0
STRH            R0, [R1,#0x46]
VPOP            {D8}
POP             {R4,PC}
VCVT.S32.F32    S0, S16; jumptable 0020E584 case 2
ADD             R1, R0, #0x100
VMOV            R0, S0
STRH            R0, [R1,#0x48]
VPOP            {D8}
POP             {R4,PC}
VCVT.S32.F32    S0, S16; jumptable 0020E584 case 3
ADD             R1, R0, #0x100
VMOV            R0, S0
STRH            R0, [R1,#0x4A]
VPOP            {D8}
POP             {R4,PC}
VCVT.S32.F32    S0, S16; jumptable 0020E584 case 4
ADD             R1, R0, #0x100
VMOV            R0, S0
STRH            R0, [R1,#0x4C]
VPOP            {D8}
POP             {R4,PC}
VCVT.S32.F32    S0, S16; jumptable 0020E584 case 5
ADD             R1, R0, #0x100
VMOV            R0, S0
STRH            R0, [R1,#0x4E]
VPOP            {D8}
POP             {R4,PC}
VCVT.S32.F32    S0, S16; jumptable 0020E584 case 6
ADD             R1, R0, #0x100
VMOV            R0, S0
STRH            R0, [R1,#0x50]
VPOP            {D8}
POP             {R4,PC}
VCVT.S32.F32    S0, S16; jumptable 0020E584 case 7
ADD             R1, R0, #0x100
VMOV            R0, S0
STRH            R0, [R1,#0x52]
VPOP            {D8}
POP             {R4,PC}
VCVT.S32.F32    S0, S16; jumptable 0020E584 case 8
ADD             R1, R0, #0x100
VMOV            R0, S0
STRH            R0, [R1,#0x54]
VPOP            {D8}
POP             {R4,PC}
VLDR            S0, =0.0; jumptable 0020E584 case 14
VCMP.F32        S16, S0
VMRS            APSR_nzcv, FPSCR
MOVNE           R1, #1
MOVEQ           R1, #0
STRB            R1, [R0,#0x14]
VPOP            {D8}
POP             {R4,PC}
ADD             R0, R0, R4,LSL#2; jumptable 0020E584 cases 16-18
VSTR            S16, [R0,#-0x164]
VPOP            {D8}
POP             {R4,PC}
VLDR            S0, =0.0; jumptable 0020E584 case 21
VCMP.F32        S16, S0
VMRS            APSR_nzcv, FPSCR
VPOP            {D8}
POP             {R4,LR}
MOVNE           R1, #1
MOVEQ           R1, #0
B               loc_4F2A84
VLDR            S0, =0.0; jumptable 0020E584 case 22
VCMP.F32        S16, S0
VMRS            APSR_nzcv, FPSCR
VPOP            {D8}
POP             {R4,LR}
MOVNE           R1, #1
MOVEQ           R1, #0
B               loc_4F1A7C
VLDR            S0, =0.0; jumptable 0020E584 case 23
VCMP.F32        S16, S0
VMRS            APSR_nzcv, FPSCR
MOVNE           R1, #1
MOVEQ           R1, #0
STRB            R1, [R0,#0x180]
VPOP            {D8}
POP             {R4,PC}
VCVT.S32.F32    S0, S16; jumptable 0020E584 case 24
ADD             R1, R0, #0x100
VMOV            R0, S0
STRH            R0, [R1,#0x88]
VPOP            {D8}
POP             {R4,PC}
VLDR            S0, =0.0; jumptable 0020E584 case 25
VCMP.F32        S16, S0
VMRS            APSR_nzcv, FPSCR
VPOP            {D8}
POP             {R4,LR}
MOVNE           R1, #1
MOVEQ           R1, #0
B               loc_4F18D4
VLDR            S0, =0.0; jumptable 0020E584 case 26
VCMP.F32        S16, S0
VMRS            APSR_nzcv, FPSCR
VPOP            {D8}
POP             {R4,LR}
MOVNE           R1, #1
MOVEQ           R1, #0
B               loc_4F18B4
ADD             R0, R0, R4,LSL#2; jumptable 0020E584 cases 27-35
VSTR            S16, [R0,#-0x54]
VPOP            {D8}
POP             {R4,PC}
VCVT.U32.F32    S0, S16; jumptable 0020E584 case 46
VSTR            S0, [R0,#0x18C]
VPOP            {D8}
POP             {R4,PC}
VLDR            S0, =0.0; jumptable 0020E584 case 45
VCMP.F32        S16, S0
VMRS            APSR_nzcv, FPSCR
MOVNE           R1, #1
MOVEQ           R1, #0
STRB            R1, [R0,#0x181]
VPOP            {D8}
POP             {R4,PC}
VLDR            S0, =0.0; jumptable 0020E584 case 49
VCMP.F32        S16, S0
VMRS            APSR_nzcv, FPSCR
MOVNE           R1, #1
MOVEQ           R1, #0
STRB            R1, [R0,#0x184]
VPOP            {D8}
POP             {R4,PC}
VLDR            S0, =0.0; jumptable 0020E584 case 50
VCMP.F32        S16, S0
VMRS            APSR_nzcv, FPSCR
MOVNE           R1, #1
MOVEQ           R1, #0
STRB            R1, [R0,#0x185]
VPOP            {D8}
POP             {R4,PC}
VLDR            S0, =0.0; jumptable 0020E584 case 51
VCMP.F32        S16, S0
VMRS            APSR_nzcv, FPSCR
MOVNE           R1, #1
MOVEQ           R1, #0
STRB            R1, [R0,#0x186]
VPOP            {D8}
POP             {R4,PC}
VCVT.U32.F32    S0, S16; jumptable 0020E584 case 52
VMOV            R1, S0
STRB            R1, [R0,#0x187]
VPOP            {D8}
POP             {R4,PC}

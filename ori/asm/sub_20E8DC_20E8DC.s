PUSH            {R4,LR}
LDR             R0, =off_6CE970
MOV             R4, R2
VPUSH           {D8}
VMOV.F32        S16, S0
LDR             R0, [R0]
BL              sub_52F508
SUB             R1, R4, #0x95
CMP             R1, #0x11; switch 17 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_20E900; jumptable 0020E900 default case, cases 13,15
DCD loc_20E94C; jump table for switch statement
VCVT.S32.F32    S0, S16; jumptable 0020E900 case 0
VPOP            {D8}
POP             {R4,LR}
VMOV            R1, S0
AND             R1, R1, #0xFF
B               loc_4FF48C
VCVT.S32.F32    S0, S16; jumptable 0020E900 case 1
VPOP            {D8}
POP             {R4,LR}
VMOV            R1, S0
SXTB            R1, R1
B               loc_4FFEC8
VCVT.U32.F32    S0, S16; jumptable 0020E900 case 2
ADD             R1, R0, #0x200
VMOV            R0, S0
STRH            R0, [R1,#0x44]
VPOP            {D8}; jumptable 0020E900 default case, cases 13,15
POP             {R4,PC}
VCVT.U32.F32    S0, S16; jumptable 0020E900 case 3
VMOV            R1, S0
STRB            R1, [R0,#0x246]
VPOP            {D8}
POP             {R4,PC}
VLDR            S0, =0.0; jumptable 0020E900 case 4
VCMP.F32        S16, S0
VMRS            APSR_nzcv, FPSCR
MOVNE           R1, #1
MOVEQ           R1, #0
STRB            R1, [R0,#0x249]
VPOP            {D8}
POP             {R4,PC}
VCVT.S32.F32    S0, S16; jumptable 0020E900 case 5
ADD             R1, R0, #0x200
VMOV            R0, S0
STRH            R0, [R1,#0x10]
VPOP            {D8}
POP             {R4,PC}
VCVT.S32.F32    S0, S16; jumptable 0020E900 case 6
ADD             R1, R0, #0x200
VMOV            R0, S0
STRH            R0, [R1,#0x12]
VPOP            {D8}
POP             {R4,PC}
VCVT.S32.F32    S0, S16; jumptable 0020E900 case 7
ADD             R1, R0, #0x200
VMOV            R0, S0
STRH            R0, [R1,#0x14]
VPOP            {D8}
POP             {R4,PC}
VLDR            S0, =0.0; jumptable 0020E900 case 8
VCMP.F32        S16, S0
VMRS            APSR_nzcv, FPSCR
MOVNE           R1, #1
MOVEQ           R1, #0
STRB            R1, [R0,#0x21A]
VPOP            {D8}
POP             {R4,PC}
VLDR            S0, =0.0; jumptable 0020E900 case 9
VCMP.F32        S16, S0
VMRS            APSR_nzcv, FPSCR
MOVNE           R1, #1
MOVEQ           R1, #0
STRB            R1, [R0,#0x21B]
VPOP            {D8}
POP             {R4,PC}
VLDR            S0, =0.0; jumptable 0020E900 case 10
VCMP.F32        S16, S0
VMRS            APSR_nzcv, FPSCR
MOVNE           R1, #1
MOVEQ           R1, #0
STRB            R1, [R0,#0x21C]
VPOP            {D8}
POP             {R4,PC}
VSTR            S16, [R0,#0x234]; jumptable 0020E900 case 11
VPOP            {D8}
POP             {R4,PC}
VLDR            S0, =0.0; jumptable 0020E900 case 12
VCMP.F32        S16, S0
VMRS            APSR_nzcv, FPSCR
MOVNE           R1, #1
MOVEQ           R1, #0
STRB            R1, [R0,#0x21D]
VPOP            {D8}
POP             {R4,PC}
VLDR            S0, =0.0; jumptable 0020E900 case 14
VCMP.F32        S16, S0
VMRS            APSR_nzcv, FPSCR
MOVNE           R1, #1
MOVEQ           R1, #0
STRB            R1, [R0,#0x21E]
VPOP            {D8}
POP             {R4,PC}
VLDR            S0, =0.0; jumptable 0020E900 case 16
VCMP.F32        S16, S0
VMRS            APSR_nzcv, FPSCR
MOVNE           R1, #1
MOVEQ           R1, #0
STRB            R1, [R0,#0x220]
VPOP            {D8}
POP             {R4,PC}

PUSH            {R4,LR}
MOV             R3, R0
VPUSH           {D8}
VMOV.F32        S16, S0
LDR             R0, =off_6CE970
LDR             LR, =0x701E
MOV             R4, R2
LDR             R2, =dword_6E2378
LDR             R0, [R0]
VCVT.U32.F32    S1, S16
CMP             R1, #0
SUBNE           R1, R1, #4
CMP             R4, LR
SUB             R12, R4, LR
BEQ             loc_209C6C
BGT             loc_209B90
SUB             LR, LR, #3
CMP             R4, LR
SUB             R12, R4, LR
VSTREQ          S1, [R2,#(dword_6E2390 - 0x6E2378)]
BEQ             loc_209C08
BGT             loc_209B80
SUB             R2, R4, #0x7000
SUBS            R2, R2, #2
BEQ             loc_209C10
CMP             R2, #0xE
BNE             loc_209BB0
B               loc_209C24
CMP             R12, #1
CMPNE           R12, #2
BEQ             loc_209C6C
B               loc_209BB0
CMP             R12, #1
BEQ             loc_209C6C
CMP             R12, #0x15
BEQ             loc_209C48
CMP             R12, #0x33 ; '3'
BEQ             loc_209C88
CMP             R12, #0x35 ; '5'
BEQ             loc_209C9C
SUB             R12, R4, #0x7000
SUB             R12, R12, #0x5A ; 'Z'
CMP             R12, #0x20 ; ' '
ADD             R2, R3, R4,LSL#2
SUBCC           R0, R2, #0x1C400
VSTRCC          S16, [R0,#0x3A8]
BCC             loc_209C08
SUB             R12, R4, #0x7000
SUB             R12, R12, #0x7A ; 'z'
CMP             R12, #4
SUBCC           R0, R2, #0x1C000
VSTRCC          S16, [R0,#0xA8]
BCC             loc_209C08
SUB             R2, R4, #0x7000
SUB             R2, R2, #0x7E ; '~'
CMP             R2, #0x20 ; ' '
BCS             loc_209CB4
LDR             R1, =0xFFFE3E0C
LDR             R0, [R0,#4]
ADD             R1, R1, R4,LSL#2
ADD             R0, R0, R1
VSTR            S16, [R0]
VPOP            {D8}
POP             {R4,PC}
VMOV            R1, S1
VPOP            {D8}
POP             {R4,LR}
UXTH            R1, R1
B               sub_52A460
VLDR            S0, =256.0
MOV             R2, #1
VMUL.F32        S0, S16, S0
VPOP            {D8}
POP             {R4,LR}
VCVT.S32.F32    S0, S0
VMOV            R1, S0
SXTH            R1, R1
B               sub_530184
VLDR            S0, =0.0
LDR             R2, =byte_19CF2A
VCMP.F32        S16, S0
VMRS            APSR_nzcv, FPSCR
MOVNE           R1, #1
MOVEQ           R1, #0
STRB            R1, [R0,R2]; byte_19CF2A
VPOP            {D8}
POP             {R4,PC}
VCVT.S32.F32    S0, S16
ADD             R0, R2, R4,LSL#2
SUB             R0, R0, #0x1C000
SUB             R0, R0, #0x54 ; 'T'
VSTR            S0, [R0]
VPOP            {D8}
POP             {R4,PC}
LDR             R1, =0x19DEF0
ADD             R0, R0, R1; loc_19DEF0
VSTR            S1, [R0]
VPOP            {D8}
POP             {R4,PC}
VMOV            R1, S1
VPOP            {D8}
MOV             R2, #1
POP             {R4,LR}
UXTH            R1, R1
B               sub_52B6BC
SUB             R2, R4, #0x7000
SUB             R2, R2, #0x9E
CMP             R2, #0x20 ; ' '
SUBCS           R2, R4, #0x7000
SUBCS           R2, R2, #0xBE
CMPCS           R2, #0x20 ; ' '
BCS             loc_209CF0
ADD             R1, R1, #0x100
LDRH            R1, [R1,#0xA4]
BL              sub_52F538
ADD             R0, R0, R4,LSL#2
SUB             R0, R0, #0x1C000
VSTR            S16, [R0,#0x260]
VPOP            {D8}
POP             {R4,PC}
SUB             R2, R4, #0x7000
SUB             R2, R2, #0xDE
CMP             R2, #2
SUBCS           R2, R4, #0x7000
SUBCS           R2, R2, #0xE0
CMPCS           R2, #2
BCS             loc_209D24
VMOV            R0, S1
ADD             R1, R1, R4,LSL#1
SUB             R1, R1, #0xE100
STRH            R0, [R1,#0xD0]
VPOP            {D8}
POP             {R4,PC}
SUB             R12, R4, #0x7000
SUB             R12, R12, #0xE2
CMP             R12, #4
ADD             R2, R3, R4,LSL#1
SUBCS           R3, R4, #0x7000
SUBCS           R3, R3, #0xE6
CMPCS           R3, #4
VMOVCC          R0, S1
SUB             R2, R2, #0xE000
STRHCC          R0, [R2,#0xDC]
BCC             loc_209C08
SUB             R2, R4, #0x7000
SUB             R2, R2, #0xEA
CMP             R2, #4
BCS             loc_209D78
VMOV            R0, S1
ADD             R1, R1, R4,LSL#1
SUB             R1, R1, #0xE100
STRH            R0, [R1,#0xC0]
VPOP            {D8}
POP             {R4,PC}
SUB             R1, R4, #0x7000
SUB             R1, R1, #0xEE
CMP             R1, #4
BCS             loc_209C08
LDR             R2, =0xFFFF1EA8
LDR             R0, [R0,#4]
VMOV            R1, S1
ADD             R2, R2, R4,LSL#1
STRH            R1, [R0,R2]
VPOP            {D8}
POP             {R4,PC}

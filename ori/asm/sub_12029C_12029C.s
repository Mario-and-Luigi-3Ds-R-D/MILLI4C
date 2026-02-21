ORR             R3, R0, R1
PUSH            {R4,LR}
TST             R3, #3
LDREQ           R4, =0x1010101
BNE             loc_120334
CMP             R2, #4
BCC             loc_120334
LDR             R3, [R0],#4
LDR             R12, [R1],#4
SUB             R2, R2, #4
UQSUB8          LR, R4, R3
CMP             LR, #0
BEQ             loc_120314
AND             R0, R3, #0xFF
AND             R1, R12, #0xFF
SUB             R0, R0, R1
ORRS            R1, R0, LR,LSL#24
POPNE           {R4,PC}
UXTH            R0, R3
UXTH            R1, R12
SUB             R0, R0, R1
ORRS            R1, R0, LR,LSL#16
POPNE           {R4,PC}
BIC             R0, R3, #0xFF000000
BIC             R1, R12, #0xFF000000
SUB             R0, R0, R1
ORRS            R1, R0, LR,LSL#8
MOVEQ           R0, R3,LSR#24
SUBEQ           R0, R0, R12,LSR#24
POP             {R4,PC}
CMP             R3, R12
BEQ             loc_1202B0
REV             R0, R3
REV             R1, R12
CMP             R0, R1
MOVLS           R0, #0xFFFFFFFF
MOVHI           R0, #1
POP             {R4,PC}
CMP             R2, #0
MOVEQ           R0, #0
POPEQ           {R4,PC}
LDRB            R3, [R0],#1
LDRB            R12, [R1],#1
CMP             R3, #0
BEQ             loc_120380
CMP             R3, R12
BNE             loc_120380
SUBS            R2, R2, #1
BEQ             loc_120380
LDRB            R3, [R0],#1
LDRB            R12, [R1],#1
CMP             R3, #0
BEQ             loc_120380
CMP             R3, R12
BNE             loc_120380
SUBS            R2, R2, #1
BNE             loc_120340
SUB             R0, R3, R12
POP             {R4,PC}

PUSH            {R4-R6,LR}
MOV             R5, R3
VPUSH           {D8}
BL              sub_173B34
LDR             R1, =off_6AD07C
MOV             R4, R0
VLDR            S16, =0.0
ADD             R0, R1, #0x384
STR             R0, [R4,#0xE0]
ADD             R2, R1, #0x39C
ADD             R0, R4, #0x1000
STR             R1, [R4]
ADD             R0, R0, #0x218
VLDR            S0, =15.0
STR             R2, [R4,#0x758]
VSTR            S16, [R0]
VSTR            S0, [R0,#4]
VSTR            S16, [R0,#8]
ADD             R0, R4, #0x1000
MOV             R2, #1
MOV             R1, #0
STRB            R2, [R0,#0x224]
STR             R1, [R0,#0x228]
MOV             R0, R4
BL              sub_15B4B4
LDR             R0, [R5]
MOV             R1, #4
MOV             R2, R0,LSL#28
CMP             R1, R2,LSR#29
BEQ             loc_15B7AC
MOV             R0, R0,LSL#15
VLDR            S0, =1.0
MOVS            R0, R0,LSR#30
BEQ             loc_15B750
CMP             R0, #1
BEQ             loc_15B77C
CMP             R0, #2
VLDR            S0, =-1.0
BEQ             loc_15B7C0
CMP             R0, #3
BNE             loc_15B7AC
B               loc_15B7F0
ADD             R0, R4, #0xAC0
VSTR            S16, [R0]
VSTR            S0, [R0,#4]
VSTR            S16, [R0,#8]
VSTR            S16, [R4,#0xF8]
LDR             R1, [R4,#0x658]
ADD             R0, R4, #0x400
ADD             R0, R0, #0x258
BIC             R1, R1, #0x3F000000
ORR             R1, R1, #0x10000000
B               loc_15B7A8
ADD             R0, R4, #0xAC0
VSTR            S0, [R0]
VSTR            S16, [R0,#4]
VLDR            S0, =4.7124
VSTR            S16, [R0,#8]
VSTR            S0, [R4,#0xF8]
LDR             R1, [R4,#0x658]
ADD             R0, R4, #0x400
ADD             R0, R0, #0x258
BIC             R1, R1, #0x3F000000
ORR             R1, R1, #0x2000000
STR             R1, [R0]
LDR             R0, [R4,#0xF8]
STR             R0, [R4,#0xABC]
MOV             R0, R4
VPOP            {D8}
POP             {R4-R6,PC}
ADD             R0, R4, #0xAC0
VSTR            S16, [R0]
VSTR            S0, [R0,#4]
VLDR            S0, =3.1416
VSTR            S16, [R0,#8]
VSTR            S0, [R4,#0xF8]
LDR             R1, [R4,#0x658]
ADD             R0, R4, #0x400
ADD             R0, R0, #0x258
BIC             R1, R1, #0x3F000000
ORR             R1, R1, #0x20000000
B               loc_15B7A8
ADD             R0, R4, #0xAC0
VSTR            S0, [R0]
VSTR            S16, [R0,#4]
VLDR            S0, =1.5708
VSTR            S16, [R0,#8]
VSTR            S0, [R4,#0xF8]
LDR             R1, [R4,#0x658]
ADD             R0, R4, #0x400
ADD             R0, R0, #0x258
BIC             R1, R1, #0x3F000000
ORR             R1, R1, #0x8000000
B               loc_15B7A8

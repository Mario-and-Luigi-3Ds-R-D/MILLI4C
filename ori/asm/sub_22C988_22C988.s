PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R5, =off_6CDA80
MOV             R0, #0
STRB            R0, [R4,#0x38]
LDR             R0, [R5]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F8
LDR             R0, [R0]
BL              sub_22A27C
LDR             R0, [R5]
ADD             R5, R4, #0x14
VLDR            S0, =100.0
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F4
VLDR            S1, =-100.0
LDR             R0, [R0]
ADD             R1, R0, #0x400
ADD             R1, R1, #0x64 ; 'd'
LDM             R1, {R1-R3}
STM             R5, {R1-R3}
ADD             R1, R0, #0x470
ADD             R5, R4, #8
LDM             R1, {R1-R3}
STM             R5, {R1-R3}
ADD             R1, R0, #0x400
ADD             R1, R1, #0x4C ; 'L'
ADD             R5, R4, #0x2C ; ','
LDM             R1, {R1-R3}
STM             R5, {R1-R3}
ADD             R1, R0, #0x400
ADD             R1, R1, #0x58 ; 'X'
LDR             R0, [R0,#0x460]
LDM             R1, {R1,R2}
STR             R0, [R4,#0x28]
ADD             R0, R4, #0x20 ; ' '
STM             R0, {R1,R2}
VSTR            S0, [R4,#0x1C]
VSTR            S1, [R4,#0x10]
VSTR            S0, [R4,#0x34]
VSTR            S1, [R4,#0x28]
POP             {R4-R6,PC}

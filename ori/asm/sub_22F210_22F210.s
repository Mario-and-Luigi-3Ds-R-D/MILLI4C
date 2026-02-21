PUSH            {R4-R10}
VMOV            S0, R3
ADD             R8, SP, #0x1C+arg_4
MOV             R9, #0x3F00
LDM             R8, {R4-R6,R12}
MOV             R8, #0xFC000
LDR             R7, [SP,#0x1C+arg_0]
VCVT.F32.S32    S0, S0
AND             R8, R8, R4,LSL#14
LDR             R10, [R12]
AND             R7, R9, R7,LSL#8
MOV             R9, #0
BIC             R3, R10, #0x28 ; '('
ORR             R3, R3, #0x17
ORR             R3, R3, R5,LSL#5
BIC             R3, R3, #0xC0
ORR             R3, R3, R6,LSL#7
BIC             R3, R3, #0x3F00
ORR             R3, R3, R7
BIC             R3, R3, #0xFC000
ORR             R3, R3, R8
STR             R3, [R12]
LDR             R3, [R0,#0x108]
LDR             R4, [R0,#0x10C]
LDR             R0, [R0,#0x110]
ADD             R8, R12, #0x1C
STR             R0, [R12,#0x24]
STM             R8, {R3,R4}
ADD             R8, R12, #0x28 ; '('
LDM             R2, {R0,R3}
LDR             R2, [R2,#8]
STR             R1, [R12,#0x34]
STR             R2, [R12,#0x30]
STR             R9, [R12,#0xC]
STM             R8, {R0,R3}
MOV             R0, #1
VSTR            S0, [R12,#0x38]
POP             {R4-R10}
BX              LR

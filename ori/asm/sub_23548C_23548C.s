ADD             R2, R0, #4
VLDR            S1, [R0,#0x10]
LDM             R2, {R2,R3,R12}
VLDR            S0, =0.0
STR             R3, [R2,#0x108]
STR             R12, [R2,#0x10C]
VSTR            S1, [R2,#0x110]
LDRB            R2, [R1,#0x28]
CMP             R2, #0
BEQ             loc_2354D8
CMP             R2, #1
BEQ             loc_2354EC
CMP             R2, #2
LDREQ           R2, [R0,#0xA8]
VSTREQ          S0, [R0,#0x7C]
BEQ             loc_2354FC
CMP             R2, #3
BNE             loc_23551C
B               loc_235504
VLDR            S1, [R0,#0xAC]
ADD             R2, R0, #0x7C ; '|'
VNEG.F32        S1, S1
VSTM            R2, {S0-S1}
B               loc_235518
VLDR            S1, [R0,#0xAC]
LDR             R2, [R0,#0xA4]
VNEG.F32        S1, S1
VSTR            S1, [R0,#0x7C]
STR             R2, [R0,#0x80]
B               loc_235518
VLDR            S1, [R0,#0xA0]
VLDR            S2, [R0,#0xAC]
VNEG.F32        S1, S1
VSTR            S2, [R0,#0x7C]
VSTR            S1, [R0,#0x80]
VSTR            S0, [R0,#0x84]
LDRB            R1, [R1,#0x28]
STRB            R1, [R0,#0x9C]
CMP             R1, #0
STRB            R1, [R0,#0x9D]
BEQ             loc_235550
CMP             R1, #1
VLDREQ          S0, =1.5
BEQ             loc_235550
CMP             R1, #2
VLDREQ          S0, =1.0
BEQ             loc_235550
CMP             R1, #3
VLDREQ          S0, =0.5
MOV             R2, R1
VSTR            S0, [R0,#0xC0]
VSTR            S0, [R0,#0xC4]
B               sub_23557C

VLDR            S0, =0.0
PUSH            {R4,LR}
VSTR            S0, [R0,#0xBC]
VSTR            S0, [R0,#0xC0]
VSTR            S0, [R0,#0xC4]
MOV             R4, R0
VSTR            S0, [R0,#0xC8]
LDR             R0, [R0,#0x120]
MOV             R1, #0x1BC
BIC             R0, R0, #0x10
STR             R0, [R4,#0x120]
LDR             R0, [R4]
LDRH            R1, [R1,R4]
LDR             R2, [R0,#0x38]
MOV             R0, R4
BLX             R2
ADD             R0, R0, #0x38 ; '8'
STR             R0, [R4,#0x214]
LDR             R0, =off_68BBB8
MOV             R3, #1
LDM             R0, {R1,R2}
MOV             R0, R4
POP             {R4,LR}
B               sub_1F3CE0

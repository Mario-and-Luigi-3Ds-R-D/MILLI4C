PUSH            {R4-R10,LR}
MOV             R6, #0
MOV             R7, R0
LDRB            R0, [R0,#0x110]
CMP             R0, #0
BLE             locret_21E698
ADD             R0, R7, R6,LSL#2
LDR             R4, [R0,#0x10]
ADD             R9, R4, #0x800
LDR             R0, [R4,#0x8F4]
ADD             R9, R9, #0xF4
TST             R0, #0x20
BEQ             loc_21E688
LDR             R0, [R4,#0x5E0]
ADD             R8, R4, #0x5E0
ORR             R0, R0, #2
STR             R0, [R4,#0x5E0]
LDR             R0, [R4,#4]
LDR             R1, [R4]
ADD             R0, R0, #0x13C00
ADD             R0, R0, #0x164
LDR             R2, [R1,#0x280]
LDR             R1, [R0]
MOV             R0, R4
BLX             R2
LDR             R0, [R4,#0x624]
ADD             R5, R4, #0x400
STR             R0, [R4,#0x5BC]
LDR             R0, [R4,#0x630]
STR             R0, [R4,#0x5C8]
LDR             R0, [R4,#0x628]
STR             R0, [R4,#0x5C0]
LDR             R0, [R4,#0x62C]
STR             R0, [R4,#0x5C4]
LDR             R0, [R4,#0x634]
STR             R0, [R4,#0x5CC]
LDR             R0, [R4]
LDR             R1, [R0,#0x288]
MOV             R0, R4
BLX             R1
LDR             R0, [R4]
LDR             R1, [R0,#0x28C]
MOV             R0, R4
BLX             R1
LDR             R0, [R8]
MOV             R1, R4
BIC             R0, R0, #2
STR             R0, [R8]
VLDR            S0, [R4,#0x10C]
VLDR            S1, [R5,#0xB8]
ADD             R8, R4, #0x800
VSUB.F32        S0, S0, S1
VSTR            S0, [R8,#0xEC]
LDR             R0, [R4,#0x8F4]
BIC             R0, R0, #0x40 ; '@'
STR             R0, [R9]
LDR             R0, [R5,#0xE0]
STR             R0, [R5,#0xC8]
LDR             R0, [R4,#0x8E4]
BL              sub_21E144
CMP             R0, #0
STR             R0, [R4,#0x8E8]
VLDREQ          S0, [R8,#0xEC]
BEQ             loc_21E66C
ADD             R1, R0, #0x400
VLDR            S0, [R0,#0x10C]
VLDR            S1, [R1,#0x234]
VADD.F32        S0, S0, S1
VLDR            S1, [R4,#0x10C]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_21E688
LDR             R0, [R4,#0x8F4]
ORR             R0, R0, #0x40 ; '@'
STR             R0, [R9]
LDRB            R0, [R7,#0x110]
ADD             R6, R6, #1
CMP             R0, R6
BGT             loc_21E574
POP             {R4-R10,PC}

PUSH            {R4-R6,LR}
MOV             R4, R0
LDRB            R0, [R0,#0xDE]
TST             R0, #1
BEQ             locret_1952B8
ADD             R5, R4, #0x800
ADD             R2, R4, #0x800
LDRH            R0, [R5,#0x50]
ADD             R2, R2, #0x28 ; '('
TST             R0, #1
BEQ             loc_1951D4
LDR             R1, [R4,#0x828]
ADD             R0, R4, #0x800
ADD             R0, R0, #0x2C ; ','
ADD             R1, R1, #0x108
VLDR            S5, [R0]
ADD             R0, R4, #0x830
VLDM            R1!, {S2}
VLDM            R1, {S0-S1}
ADD             R1, R4, #0x10C
VADD.F32        S2, S2, S5
VLDM            R0, {S3-S4}
ADD             R0, R4, #0x400
VADD.F32        S0, S0, S3
VADD.F32        S1, S1, S4
VSTR            S2, [R4,#0x108]
VSTM            R1, {S0-S1}
LDR             R1, [R2]
VLDR            S1, [R5,#0x30]
ADD             R1, R1, #0x400
VLDR            S0, [R1,#0xB8]
VADD.F32        S0, S0, S1
VSTR            S0, [R0,#0xB8]
B               loc_19520C
LDR             R0, [R4]
ADD             R1, R4, #0x164
LDR             R2, [R0,#0xFC]
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
LDR             R1, [R0,#0x25C]
MOV             R0, R4
BLX             R1
LDR             R0, [R4]
ADD             R1, R4, #0x164
LDR             R2, [R0,#0x100]
MOV             R0, R4
BLX             R2
LDRH            R0, [R5,#0x50]
TST             R0, #2
BEQ             loc_195238
LDR             R0, [R4,#0x828]
LDR             R1, [R4]
MOV             R2, #1
LDR             R0, [R0,#0x464]
LDR             R3, [R1,#0x60]
AND             R1, R0, #0xF
MOV             R0, R4
BLX             R3
ADD             R5, R4, #0x800
ADD             R5, R5, #0x38 ; '8'
VLDR            S0, [R4,#0x108]
VLDR            S1, [R5]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x108]
VLDR            S0, [R4,#0x10C]
VLDR            S1, [R5,#4]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x10C]
VLDR            S0, [R4,#0x110]
VLDR            S1, [R5,#8]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x110]
LDR             R0, [R4]
LDR             R1, [R0,#0x288]
MOV             R0, R4
BLX             R1
VLDR            S0, [R4,#0x108]
VLDR            S1, [R5]
MOV             R0, R4
ADD             R4, R4, #0x108
VSUB.F32        S0, S0, S1
VSTR            S0, [R4]
VLDR            S0, [R0,#0x10C]
VLDR            S1, [R5,#4]
VSUB.F32        S0, S0, S1
VSTR            S0, [R4,#4]
VLDR            S0, [R0,#0x110]
VLDR            S1, [R5,#8]
VSUB.F32        S0, S0, S1
VSTR            S0, [R4,#8]
POP             {R4-R6,PC}

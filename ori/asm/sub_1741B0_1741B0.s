ADD             R1, R0, #0x400
ADD             R1, R1, #0x358
NOP
PUSH            {R4-R6,LR}
MOV             R6, R1
MOV             R5, R0
VPUSH           {D8-D15}
LDRSH           R1, [R1,#0xB0]
CMP             R1, #0
BLT             loc_174254
ADD             R0, R5, #0x150
ADD             R4, R5, #0x400
VLDM            R0, {S16-S20}
ADD             R0, R5, #0x5C0
VLDR            S29, [R4,#0x1CC]
VLDR            S28, [R4,#0x1BC]
VLDM            R0, {S21-S23}
ADD             R0, R5, #0x400
ADD             R0, R0, #0x22C
VLDM            R0, {S24-S27}
ADD             R0, R5, #0x400
ADD             R0, R0, #0x224
VLDM            R0, {S30-S31}
LDR             R0, [R6]
LDR             R2, [R0,#0x50]
MOV             R0, R6
BLX             R2
LDR             R0, [R6]
LDR             R1, [R0,#0x70]
MOV             R0, R6
BLX             R1
ADD             R5, R5, #0x150
ADD             R0, R4, #0x1C0
VSTM            R5, {S16-S20}
VSTR            S28, [R4,#0x1BC]
VSTR            S29, [R4,#0x1CC]
VSTM            R0, {S21-S23}
ADD             R0, R4, #0x22C
ADD             R4, R4, #0x224
VSTM            R0, {S24-S27}
VSTM            R4, {S30-S31}
VPOP            {D8-D15}
POP             {R4-R6,PC}

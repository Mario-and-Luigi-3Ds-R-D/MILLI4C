ADD             R0, R0, #8
LDM             R0, {R0,R2}
CMP             R2, #0
BEQ             loc_12CA00
VLDM            R2, {S0-S7}
ADD             R3, R0, #0x20 ; ' '
ADD             R2, R2, #0x20 ; ' '
VSTM            R3, {S0-S7}
ADD             R3, R0, #0x40 ; '@'
VLDM            R2, {S0-S3}
VSTM            R3, {S0-S3}
LDR             R1, [R1,#4]
NOP

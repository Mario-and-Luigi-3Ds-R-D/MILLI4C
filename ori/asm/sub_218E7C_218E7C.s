PUSH            {R4,R5}
LDR             R5, [R0,#0x110]
RSB             R12, R1, R1,LSL#3
LDR             R4, [SP,#8+arg_0]
ADD             R12, R5, R12,LSL#3
MOV             R5, #2
STRB            R5, [R12,#0x24]
LDRH            R5, [R2,#0x10]
CMP             R3, #0
STRH            R5, [R12,#0x26]
STR             R2, [R12,#0x28]
ADD             R12, R12, #0x2C ; ','
VLDM            R4, {S0-S2}
VSTM            R12, {S0-S2}
STRBNE          R1, [R0,#0xFF]
POP             {R4,R5}
BX              LR

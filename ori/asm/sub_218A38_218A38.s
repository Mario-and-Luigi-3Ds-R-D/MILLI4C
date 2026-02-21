PUSH            {R4,R5}
LDR             R12, [R0,#0x110]
RSB             R5, R1, R1,LSL#3
LDR             R4, [SP,#8+arg_0]
ADD             R12, R12, R5,LSL#3
MOV             R5, #4
STRB            R5, [R12,#0x24]
LDRH            R5, [R2,#0x10]
STRH            R5, [R12,#0x26]
STR             R2, [R12,#0x28]
ADD             R5, R12, #0x2C ; ','
VLDM            R3, {S0-S2}
VSTM            R5, {S0-S2}
STRB            R4, [R12,#0x25]
LDRSB           R2, [R0,#0xFF]
CMP             R2, R1
MOVEQ           R1, #0xFF
STRBEQ          R1, [R0,#0xFF]
POP             {R4,R5}
BX              LR

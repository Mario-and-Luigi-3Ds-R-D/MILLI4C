PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#0xC0]
LDR             R1, [R0]
LDR             R1, [R1,#0x14]
BLX             R1
LDR             R0, [R4,#0xC0]
ADD             R0, R0, #0x13000
ADD             R0, R0, #0xB10
LDR             R0, [R0]
BL              sub_3A1724
LDR             R0, [R4,#0xC0]
VLDR            S0, =0.0
VLDR            S1, =1.0
ADD             R0, R0, #0x14000
LDR             R1, [R0,#0x31C]
BIC             R1, R1, #7
STR             R1, [R0,#0x31C]
LDR             R0, [R4,#0xC0]
ADD             R0, R0, #0x14000
LDR             R1, [R0,#0x35C]
BIC             R1, R1, #7
STR             R1, [R0,#0x35C]
LDR             R0, [R4,#0xC0]
ADD             R0, R0, #0x14000
LDRB            R1, [R0,#0x39C]
BIC             R1, R1, #7
STRB            R1, [R0,#0x39C]
LDR             R0, [R4,#0xC0]
ADD             R0, R0, #0x14000
LDR             R1, [R0,#0x3D8]
BIC             R1, R1, #1
STR             R1, [R0,#0x3D8]
LDR             R0, [R4,#0xC0]
ADD             R1, R0, #0x54 ; 'T'
ADD             R0, R0, #0x48 ; 'H'
LDM             R1, {R1-R3}
STM             R0, {R1-R3}
LDR             R0, [R4,#0xC0]
ADD             R1, R0, #0x60 ; '`'
VSTM            R1, {S0-S1}
VSTR            S0, [R0,#0x68]
LDR             R0, [R4,#0xC0]
LDR             R1, [R0,#0xB8]
STR             R1, [R0,#0xA4]
LDR             R0, [R4,#0xC0]
VSTR            S1, [R0,#0xA8]
LDR             R0, [R4,#0xC0]
ADD             R2, R0, #0xAC
ADD             R1, R0, #0x14000
VLDM            R2, {S0-S2}
ADD             R0, R0, #8
LDR             R1, [R1,#0x180]
BL              sub_1E50EC
LDR             R0, [R4,#0xBC]
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x3D00
LDRH            R0, [R0,#4]
BL              sub_2AF718
LDR             R0, [R0]
LDR             R1, [R4,#0xC0]
LDR             R6, =off_6CED48
ADD             R5, R4, #0x100
MOV             R0, R0,LSL#1
ADD             R1, R1, #0x10000
ADD             R1, R1, #0x3D00
MOV             R0, R0,LSR#16
STRH            R0, [R1,#4]
LDR             R0, [R6]
LDRSB           R1, [R5,#0x76]
LDRB            R0, [R0,#0x98]
CMP             R0, R1
BLE             loc_1ED9B4
LDR             R0, =dword_6E9820
MOV             R1, #0x20000
BL              sub_106C10
LDR             R0, [R6]
LDRSB           R1, [R5,#0x77]
LDRB            R0, [R0,#0x124]
CMP             R0, R1
BLE             loc_1ED9D4
LDR             R0, =dword_6E9820
MOV             R1, #0x30000
BL              sub_106C10
LDR             R0, =dword_6E9820
MOV             R1, #0x20000
BL              sub_106C10
LDR             R0, =dword_6E9820
MOV             R1, #0x30000
BL              sub_106C10
LDR             R5, [R4,#0xA0]
LDRB            R0, [R5,#0x119]
CMP             R0, #0
MOVNE           R0, R5
BLNE            loc_106C3C
LDRB            R0, [R5,#0x84]
LDRB            R1, [R5,#0x118]
STRB            R0, [R5,#0x119]
CMP             R1, #0
ADDNE           R0, R5, #0x8C
BLNE            loc_106C3C
LDRB            R0, [R5,#0x110]
MOV             R3, #1
STRB            R0, [R5,#0x118]
LDRB            R0, [R4,#0xB8]
BIC             R0, R0, #1
STRB            R0, [R4,#0xB8]
LDR             R0, [R4]
LDR             R12, [R0,#0x28]
LDR             R0, =off_67E19C
LDM             R0, {R1,R2}
MOV             R0, R4
POP             {R4-R6,LR}
BX              R12

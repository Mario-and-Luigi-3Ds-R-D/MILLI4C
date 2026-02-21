PUSH            {R4-R6,LR}
MOV             R4, R0
VPUSH           {D8-D9}
SUB             SP, SP, #0x10
LDR             R0, [R0]
LDR             R1, [R0,#0xFC]
MOV             R0, R4
BLX             R1
CMP             R0, #0
BEQ             loc_197F60
VLDR            S0, =0.0
VSTR            S0, [SP,#0x30+var_30]
VSTR            S0, [SP,#0x30+var_2C]
VSTR            S0, [SP,#0x30+var_28]
VSTR            S0, [SP,#0x30+var_24]
LDR             R0, [R4]
LDR             R1, [R0,#0xF8]
MOV             R0, R4
BLX             R1
LDRB            R0, [R4,#0x1AA]
VMOV.F32        S18, S0
CMP             R0, #0
LDR             R0, [R4]
BEQ             loc_197E98
LDR             R1, [R0,#0xF0]
MOV             R0, R4
BLX             R1
LDR             R0, [R4]
VMOV.F32        S17, S0
LDR             R1, [R0,#0xF4]
MOV             R0, R4
BLX             R1
VMOV.F32        S16, S0
LDRB            R0, [R4,#0x1A8]
MOV             R5, #0
CMP             R0, #0
BLE             loc_197DE8
LDR             R0, [R4,#0x1A0]
VMOV.F32        S1, S18
VMOV.F32        S0, S16
ADD             R0, R0, R5,LSL#3
MOV             R1, SP
BL              sub_29A990
LDRB            R0, [R4,#0x1A8]
ADD             R5, R5, #1
CMP             R0, R5
BGT             loc_197DC0
LDRB            R0, [R4,#0x1A9]
MOV             R5, #0
CMP             R0, #0
BLE             loc_197E20
LDR             R0, [R4,#0x1A4]
VMOV.F32        S1, S18
VMOV.F32        S0, S17
ADD             R0, R0, R5,LSL#3
MOV             R1, SP
BL              sub_29A990
LDRB            R0, [R4,#0x1A9]
ADD             R5, R5, #1
CMP             R0, R5
BGT             loc_197DF8
ADD             R0, R4, #0x1AC
BL              sub_4857C8
LDR             R0, [R4]
LDR             R1, [R0,#0xFC]
MOV             R0, R4
BLX             R1
CMP             R0, #0
BNE             loc_197F60
LDRB            R0, [R4,#0x1AA]
MOV             R6, #8
CMP             R0, #0
BEQ             loc_197EC0
LDRB            R0, [R4,#0x1A8]
MOV             R5, #0
CMP             R0, #0
BLE             loc_197E7C
LDR             R0, [R4,#0x1A0]
ADD             R0, R0, R5,LSL#3
BL              sub_29ABC0
LDRB            R0, [R4,#0x1A8]
ADD             R5, R5, #1
CMP             R0, R5
BGT             loc_197E60
LDRB            R0, [R4,#0x1A9]
CMP             R0, #0
BEQ             loc_197F80
AND             R0, R0, #1
CMP             R0, #1
BEQ             loc_197F6C
B               loc_197F80
LDR             R1, [R0,#0xF4]
MOV             R0, R4
BLX             R1
LDR             R0, [R4]
VMOV.F32        S17, S0
LDR             R1, [R0,#0xF0]
MOV             R0, R4
BLX             R1
VMOV.F32        S16, S0
B               loc_197DB0
LDRB            R0, [R4,#0x1A9]
MOV             R5, #0
CMP             R0, #0
BLE             loc_197EEC
LDR             R0, [R4,#0x1A4]
ADD             R0, R0, R5,LSL#3
BL              sub_29ABC0
LDRB            R0, [R4,#0x1A9]
ADD             R5, R5, #1
CMP             R0, R5
BGT             loc_197ED0
LDRB            R0, [R4,#0x1A8]
CMP             R0, #0
BEQ             loc_197F18
AND             R0, R0, #1
CMP             R0, #1
BNE             loc_197F18
LDR             R1, [R4,#0x1A0]
LDR             R1, [R1]
LDRB            R2, [R1,#0x17D]
BIC             R2, R2, #1
STRB            R2, [R1,#0x17D]
LDRB            R1, [R4,#0x1A8]
CMP             R1, R0
BLE             loc_197F60
LDR             R1, [R4,#0x1A0]
ADD             R2, R6, R0,LSL#3
LDR             R1, [R1,R0,LSL#3]
ADD             R0, R0, #2
LDRB            R3, [R1,#0x17D]
BIC             R3, R3, #1
STRB            R3, [R1,#0x17D]
LDR             R1, [R4,#0x1A0]
LDR             R1, [R1,R2]
LDRB            R2, [R1,#0x17D]
BIC             R2, R2, #1
STRB            R2, [R1,#0x17D]
LDRB            R1, [R4,#0x1A8]
CMP             R1, R0
BGT             loc_197F24
ADD             SP, SP, #0x10
VPOP            {D8-D9}
POP             {R4-R6,PC}
LDR             R1, [R4,#0x1A4]
LDR             R1, [R1]
LDRB            R2, [R1,#0x17D]
BIC             R2, R2, #1
STRB            R2, [R1,#0x17D]
LDRB            R1, [R4,#0x1A9]
CMP             R1, R0
BLE             loc_197FC8
LDR             R1, [R4,#0x1A4]
ADD             R3, R6, R0,LSL#3
LDR             R2, [R1,R0,LSL#3]
ADD             R0, R0, #2
LDRB            R1, [R2,#0x17D]
BIC             R1, R1, #1
STRB            R1, [R2,#0x17D]
LDR             R1, [R4,#0x1A4]
LDR             R1, [R1,R3]
LDRB            R2, [R1,#0x17D]
BIC             R2, R2, #1
STRB            R2, [R1,#0x17D]
LDRB            R1, [R4,#0x1A9]
CMP             R1, R0
BGT             loc_197F8C
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             SP, SP, #0x10
VPOP            {D8-D9}
POP             {R4-R6,PC}

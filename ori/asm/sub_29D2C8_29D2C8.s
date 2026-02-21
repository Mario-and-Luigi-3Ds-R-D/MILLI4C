PUSH            {R4,LR}
SUB             SP, SP, #0x38
MOV             R4, R1
LDRH            R2, [SP,#0x40+var_30]
MOV             R1, #0
ADD             R2, SP, #0x40+var_28
STRH            R1, [SP,#0x40+var_30]
MOV             R3, #0xFFFFFFFF
STRH            R1, [SP,#0x40+var_2E]
STR             R1, [SP,#0x40+var_2C]
STM             R2, {R1,R3}
ADD             R12, SP, #0x40+var_18
STR             R3, [SP,#0x40+var_20]
LDR             R1, [R0,#4]
VLDR            S2, =5.0
VLDR            S0, =0.0
VLDR            S1, =1.0
LDR             R1, [R1,#4]
VLDR            S4, =8.0
STR             R1, [R4]
LDR             R1, [R0,#4]
LDR             R1, [R1,#0x108]
STR             R1, [R4,#0xC]
LDR             R1, [R0,#4]
VLDR            S3, [R1,#0x10C]
VADD.F32        S2, S3, S2
VLDR            S3, =60.0
VSTR            S2, [R4,#0x10]
LDR             R1, [R0,#4]
VLDR            S2, =20.0
LDR             R1, [R1,#0x110]
STR             R1, [R4,#0x14]
VSTR            S0, [R4,#0x24]
VSTR            S0, [R4,#0x28]
VSTR            S0, [R4,#0x2C]
VSTR            S0, [R4,#0x18]
ADD             R1, R4, #0x1C
VSTM            R1, {S0-S1}
MOV             R1, #6
VSTR            S1, [R4,#0x30]
VSTR            S1, [R4,#0x34]
VSTR            S1, [R4,#0x38]
STRH            R1, [R4,#0x54]
ADD             R1, R4, #0x3C ; '<'
VSTM            R1, {S0-S1}
ADD             R1, R4, #0x48 ; 'H'
VSTR            S0, [R4,#0x44]
VSTM            R1, {S2-S4}
LDRH            R1, [R4,#0x56]
AND             R1, R1, #0x8000
ORR             R1, R1, #0xE
STRH            R1, [R4,#0x56]
ADD             R1, R4, #0xC
LDM             R1, {R1-R3}
VMOV            S1, R2
STM             R12, {R1-R3}
ADD             R1, SP, #0x40+var_18
VLDR            S2, [R4,#0x48]
VADD.F32        S1, S1, S2
VSTR            S1, [SP,#0x40+var_14]
LDR             R3, [R0,#4]
LDR             R2, [R4]
ADD             R0, R0, #0x200
VLDR            S1, =25.0
STMEA           SP, {R1-R3}
LDRH            R1, [R0,#0xE6]
LDRH            R2, [R0,#0xE4]
LDR             R0, =off_6D1648
AND             R3, R1, #0xFF
ADD             R1, SP, #0x40+var_30
LDR             R0, [R0]
BL              sub_1F1C58
LDRH            R1, [R4,#0x56]
BIC             R1, R1, #0x8000
ORR             R0, R1, R0,LSL#15
STRH            R0, [R4,#0x56]
LDR             R0, [SP,#0x40+var_24]
STR             R0, [R4,#0x58]
LDR             R0, [SP,#0x40+var_2C]
STR             R0, [R4,#4]
LDRH            R0, [SP,#0x40+var_2E]
STRH            R0, [R4,#8]
ADD             SP, SP, #0x38 ; '8'
POP             {R4,PC}

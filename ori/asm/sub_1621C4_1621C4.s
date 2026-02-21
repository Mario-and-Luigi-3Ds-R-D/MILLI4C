PUSH            {R4,LR}
MOV             R4, R0
VPUSH           {D8}
SUB             SP, SP, #0x48
VLDR            S16, =0.0
LDR             R0, =dword_6E1330
VLDR            S17, =200.0
VSTR            S16, [SP,#0x58+var_58]
ADD             R1, SP, #0x58+var_54
VSTM            R1, {S16-S17}
LDR             R0, [R0]
TST             R0, #1
BNE             loc_162220
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_162220
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R2, =flt_711FE4
ADD             R3, SP, #0x58+var_4C
VLDR            S0, =1.0
VLDR            S1, =10.0
LDM             R2, {R0-R2}
ADD             R12, SP, #0x58+var_30
VLDR            S2, =30.0
STM             R3, {R0-R2}
MOV             R0, #0
VSTR            S16, [SP,#0x58+var_40]
VSTR            S0, [SP,#0x58+var_3C]
VSTR            S16, [SP,#0x58+var_38]
VSTR            S1, [SP,#0x58+var_34]
VSTR            S17, [SP,#0x58+var_28]
VSTR            S0, [SP,#0x58+var_24]
STR             R0, [SP,#0x58+var_20]
STR             R0, [SP,#0x58+var_1C]
STR             R0, [SP,#0x58+var_18]
VLDR            S0, =400.0
VSTR            S16, [SP,#0x58+var_58]
VSTR            S16, [SP,#0x58+var_54]
VSTR            S0, [SP,#0x58+var_50]
VSTR            S16, [SP,#0x58+var_4C]
VSTR            S16, [SP,#0x58+var_48]
VLDR            S1, =1000.0
VSTR            S16, [SP,#0x58+var_44]
MOV             R3, #1
MOV             R2, R3
MOV             R1, R3
ADD             R0, R4, #0xCC
VSTM            R12, {S1-S2}
BL              sub_59BFCC
STR             R0, [SP,#0x58+var_20]
MOV             R1, SP
ADD             R0, R4, #8
BL              sub_1E57A0
MOV             R0, #1
STRB            R0, [R4,#0xBC]
ORR             R1, R0, R0,LSL#10
ADD             R0, R4, #8
BL              sub_1E517C
MOV             R1, #0x80
ADD             R0, R4, #0xCC
BL              sub_59BE7C
ADD             R0, R4, #0xCC
NOP
BL              sub_4B1570
ADD             SP, SP, #0x48 ; 'H'
MOV             R0, R4
VPOP            {D8}
POP             {R4,LR}
B               sub_18A108

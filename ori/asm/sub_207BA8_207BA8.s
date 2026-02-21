PUSH            {R4,LR}
VPUSH           {D8}
LDR             R0, [R2,#0xC]
LDR             R1, [R2,#8]
VLDR            S16, [R2,#0x70]
AND             R4, R0, #0xFF
LDR             R0, =off_6CE970
UXTH            R1, R1
LDR             R0, [R0]
BL              sub_52F508
CMP             R4, #0x1E; switch 30 cases
ADD             R0, R0, #0x1C0
LDRCC           PC, [PC,R4,LSL#2]; switch jump
B               def_207BD8; jumptable 00207BD8 default case
DCD loc_207C58; jump table for switch statement
VCVT.U32.F32    S0, S16; jumptable 00207BD8 case 0
VMOV            R1, S0
STRH            R1, [R0]
B               def_207BD8; jumptable 00207BD8 default case
VCVT.U32.F32    S0, S16; jumptable 00207BD8 case 1
VSTR            S0, [R0,#4]
B               def_207BD8; jumptable 00207BD8 default case
VCVT.U32.F32    S0, S16; jumptable 00207BD8 case 2
VSTR            S0, [R0,#8]
B               def_207BD8; jumptable 00207BD8 default case
VCVT.U32.F32    S0, S16; jumptable 00207BD8 case 3
VSTR            S0, [R0,#0xC]
B               def_207BD8; jumptable 00207BD8 default case
VCVT.U32.F32    S0, S16; jumptable 00207BD8 case 4
VMOV            R1, S0
STRB            R1, [R0,#0x18]
B               def_207BD8; jumptable 00207BD8 default case
VCVT.U32.F32    S0, S16; jumptable 00207BD8 case 5
LDRB            R2, [R0,#0x19]
BIC             R2, R2, #1
VMOV            R1, S0
AND             R1, R1, #1
ORR             R1, R1, R2
STRB            R1, [R0,#0x19]
B               def_207BD8; jumptable 00207BD8 default case
VCVT.U32.F32    S0, S16; jumptable 00207BD8 case 6
LDRB            R2, [R0,#0x19]
MOV             R3, #2
BIC             R2, R2, #2
VMOV            R1, S0
AND             R1, R3, R1,LSL#1
ORR             R1, R1, R2
STRB            R1, [R0,#0x19]
B               def_207BD8; jumptable 00207BD8 default case
VCVT.U32.F32    S0, S16; jumptable 00207BD8 case 7
LDRB            R2, [R0,#0x19]
MOV             R3, #4
BIC             R2, R2, #4
VMOV            R1, S0
AND             R1, R3, R1,LSL#2
ORR             R1, R1, R2
STRB            R1, [R0,#0x19]
B               def_207BD8; jumptable 00207BD8 default case
VCVT.U32.F32    S0, S16; jumptable 00207BD8 case 8
LDRB            R2, [R0,#0x19]
MOV             R3, #8
BIC             R2, R2, #8
VMOV            R1, S0
AND             R1, R3, R1,LSL#3
ORR             R1, R1, R2
STRB            R1, [R0,#0x19]
B               def_207BD8; jumptable 00207BD8 default case
VCVT.U32.F32    S0, S16; jumptable 00207BD8 case 9
VMOV            R1, S0
STRH            R1, [R0,#0x1A]
B               def_207BD8; jumptable 00207BD8 default case
VCVT.U32.F32    S0, S16; jumptable 00207BD8 case 10
VMOV            R1, S0
STRH            R1, [R0,#0x1C]
B               def_207BD8; jumptable 00207BD8 default case
VCVT.U32.F32    S0, S16; jumptable 00207BD8 case 11
VMOV            R1, S0
STRH            R1, [R0,#0x1E]
B               def_207BD8; jumptable 00207BD8 default case
VCVT.U32.F32    S0, S16; jumptable 00207BD8 case 12
VMOV            R1, S0
STRH            R1, [R0,#0x20]
B               def_207BD8; jumptable 00207BD8 default case
VCVT.U32.F32    S0, S16; jumptable 00207BD8 case 13
LDRH            R2, [R0,#0x22]
BIC             R2, R2, #3
VMOV            R1, S0
AND             R1, R1, #3
ORR             R1, R1, R2
STRH            R1, [R0,#0x22]
B               def_207BD8; jumptable 00207BD8 default case
VCVT.U32.F32    S0, S16; jumptable 00207BD8 case 14
LDRH            R2, [R0,#0x22]
MOV             R3, #0xC
BIC             R2, R2, #0xC
VMOV            R1, S0
AND             R1, R3, R1,LSL#2
ORR             R1, R1, R2
STRH            R1, [R0,#0x22]
B               def_207BD8; jumptable 00207BD8 default case
VCVT.U32.F32    S0, S16; jumptable 00207BD8 case 15
LDRH            R2, [R0,#0x22]
MOV             R3, #0x30 ; '0'
BIC             R2, R2, #0x30 ; '0'
VMOV            R1, S0
AND             R1, R3, R1,LSL#4
ORR             R1, R1, R2
STRH            R1, [R0,#0x22]
B               def_207BD8; jumptable 00207BD8 default case
VCVT.U32.F32    S0, S16; jumptable 00207BD8 case 16
LDRH            R2, [R0,#0x22]
MOV             R3, #0xC0
BIC             R2, R2, #0xC0
VMOV            R1, S0
AND             R1, R3, R1,LSL#6
ORR             R1, R1, R2
STRH            R1, [R0,#0x22]
B               def_207BD8; jumptable 00207BD8 default case
VCVT.U32.F32    S0, S16; jumptable 00207BD8 case 17
LDRH            R2, [R0,#0x24]
BIC             R2, R2, #3
VMOV            R1, S0
AND             R1, R1, #3
ORR             R1, R1, R2
STRH            R1, [R0,#0x24]
B               def_207BD8; jumptable 00207BD8 default case
VCVT.U32.F32    S0, S16; jumptable 00207BD8 case 18
LDRH            R2, [R0,#0x24]
MOV             R3, #0xC
BIC             R2, R2, #0xC
VMOV            R1, S0
AND             R1, R3, R1,LSL#2
ORR             R1, R1, R2
STRH            R1, [R0,#0x24]
B               def_207BD8; jumptable 00207BD8 default case
VCVT.U32.F32    S0, S16; jumptable 00207BD8 case 19
LDRH            R2, [R0,#0x24]
MOV             R3, #0x30 ; '0'
BIC             R2, R2, #0x30 ; '0'
VMOV            R1, S0
AND             R1, R3, R1,LSL#4
ORR             R1, R1, R2
STRH            R1, [R0,#0x24]
B               def_207BD8; jumptable 00207BD8 default case
VCVT.U32.F32    S0, S16; jumptable 00207BD8 case 20
LDRH            R2, [R0,#0x24]
MOV             R3, #0xC0
BIC             R2, R2, #0xC0
VMOV            R1, S0
AND             R1, R3, R1,LSL#6
ORR             R1, R1, R2
STRH            R1, [R0,#0x24]
B               def_207BD8; jumptable 00207BD8 default case
VCVT.U32.F32    S0, S16; jumptable 00207BD8 case 21
VMOV            R1, S0
STRB            R1, [R0,#0x26]
B               def_207BD8; jumptable 00207BD8 default case
VCVT.U32.F32    S0, S16; jumptable 00207BD8 case 22
VMOV            R1, S0
STRB            R1, [R0,#0x27]
B               def_207BD8; jumptable 00207BD8 default case
VCVT.U32.F32    S0, S16; jumptable 00207BD8 case 23
VMOV            R1, S0
STRH            R1, [R0,#0x28]
B               def_207BD8; jumptable 00207BD8 default case
VCVT.U32.F32    S0, S16; jumptable 00207BD8 case 24
VMOV            R1, S0
STRH            R1, [R0,#0x2A]
B               def_207BD8; jumptable 00207BD8 default case
VCVT.U32.F32    S0, S16; jumptable 00207BD8 case 25
VMOV            R1, S0
STRH            R1, [R0,#0x2C]
B               def_207BD8; jumptable 00207BD8 default case
VCVT.U32.F32    S0, S16; jumptable 00207BD8 case 26
VMOV            R1, S0
STRH            R1, [R0,#0x2E]
B               def_207BD8; jumptable 00207BD8 default case
VCVT.U32.F32    S0, S16; jumptable 00207BD8 case 27
VMOV            R1, S0
STRH            R1, [R0,#0x30]
B               def_207BD8; jumptable 00207BD8 default case
VCVT.U32.F32    S0, S16; jumptable 00207BD8 case 28
VMOV            R1, S0
STRH            R1, [R0,#0x32]
B               def_207BD8; jumptable 00207BD8 default case
VCVT.U32.F32    S0, S16; jumptable 00207BD8 case 29
VMOV            R1, S0
STRH            R1, [R0,#0x34]
MOV             R0, #0; jumptable 00207BD8 default case
VPOP            {D8}
POP             {R4,PC}

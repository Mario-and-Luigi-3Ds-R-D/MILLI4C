MOV             R3, #0x64 ; 'd'
STRB            R1, [R0]
CMP             R1, #0
STRB            R3, [R0,#1]
BEQ             def_1CCBCC; jumptable 001CCBCC default case, case 0
CMP             R1, #0xA; switch 10 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
BX              LR; jumptable 001CCBCC default case, case 0
DCD def_1CCBCC; jump table for switch statement
LDR             R1, =dword_6E26C4; jumptable 001CCBCC case 1
LDR             R2, [R1,#(dword_6E28F0 - 0x6E26C4)]
STRB            R2, [R0,#2]
LDR             R2, [R1,#(dword_6E28F4 - 0x6E26C4)]
STRB            R2, [R0,#3]
LDR             R2, [R1,#(dword_6E28F8 - 0x6E26C4)]
STRB            R2, [R0,#4]
LDR             R2, [R1,#(dword_6E28FC - 0x6E26C4)]
STRB            R2, [R0,#5]
LDR             R2, [R1,#(dword_6E2900 - 0x6E26C4)]
STRB            R2, [R0,#6]
LDR             R2, [R1,#(dword_6E2904 - 0x6E26C4)]
STRH            R2, [R0,#8]
LDR             R1, [R1,#(dword_6E2908 - 0x6E26C4)]
STRH            R1, [R0,#0xA]
BX              LR
LDR             R1, =dword_6E26C4; jumptable 001CCBCC case 2
CMP             R2, #0
BEQ             loc_1CCC78
LDR             R2, [R1,#(dword_6E2918 - 0x6E26C4)]
STRB            R2, [R0,#2]
LDR             R2, [R1,#(dword_6E291C - 0x6E26C4)]
STRB            R2, [R0,#3]
LDR             R2, [R1,#(dword_6E2920 - 0x6E26C4)]
STRB            R2, [R0,#4]
LDR             R2, [R1,#(dword_6E2924 - 0x6E26C4)]
STRB            R2, [R0,#5]
LDR             R2, [R1,#(dword_6E2928 - 0x6E26C4)]
STRB            R2, [R0,#6]
LDR             R1, [R1,#(dword_6E292C - 0x6E26C4)]
B               loc_1CCD10
LDR             R2, [R1,#(dword_6E29AC - 0x6E26C4)]
STRB            R2, [R0,#2]
LDR             R2, [R1,#(dword_6E29B0 - 0x6E26C4)]
STRB            R2, [R0,#3]
LDR             R2, [R1,#(dword_6E29B4 - 0x6E26C4)]
STRB            R2, [R0,#4]
LDR             R2, [R1,#(dword_6E29B8 - 0x6E26C4)]
STRB            R2, [R0,#5]
LDR             R2, [R1,#(dword_6E29BC - 0x6E26C4)]
STRB            R2, [R0,#6]
LDR             R1, [R1,#(dword_6E29C0 - 0x6E26C4)]
B               loc_1CCD10
LDR             R1, =dword_6E26C4; jumptable 001CCBCC case 3
CMP             R2, #0
BEQ             loc_1CCCE4
LDR             R2, [R1,#(dword_6E2930 - 0x6E26C4)]
STRB            R2, [R0,#2]
LDR             R2, [R1,#(dword_6E2934 - 0x6E26C4)]
STRB            R2, [R0,#3]
LDR             R2, [R1,#(dword_6E2938 - 0x6E26C4)]
STRB            R2, [R0,#4]
LDR             R2, [R1,#(dword_6E293C - 0x6E26C4)]
STRB            R2, [R0,#5]
LDR             R2, [R1,#(dword_6E2940 - 0x6E26C4)]
STRB            R2, [R0,#6]
LDR             R1, [R1,#(dword_6E2944 - 0x6E26C4)]
B               loc_1CCD10
LDR             R2, [R1,#(dword_6E29C8 - 0x6E26C4)]
STRB            R2, [R0,#2]
LDR             R2, [R1,#(dword_6E29CC - 0x6E26C4)]
STRB            R2, [R0,#3]
LDR             R2, [R1,#(dword_6E29D0 - 0x6E26C4)]
STRB            R2, [R0,#4]
LDR             R2, [R1,#(dword_6E29D4 - 0x6E26C4)]
STRB            R2, [R0,#5]
LDR             R2, [R1,#(dword_6E29D8 - 0x6E26C4)]
STRB            R2, [R0,#6]
LDR             R1, [R1,#(dword_6E29DC - 0x6E26C4)]
STRH            R1, [R0,#8]
BX              LR
LDR             R1, =dword_6E26C4; jumptable 001CCBCC case 4
CMP             R2, #0
BEQ             loc_1CCD4C
LDR             R2, [R1,#(dword_6E2948 - 0x6E26C4)]
STRB            R2, [R0,#2]
LDR             R2, [R1,#(dword_6E294C - 0x6E26C4)]
STRB            R2, [R0,#3]
LDR             R2, [R1,#(dword_6E2950 - 0x6E26C4)]
STRB            R2, [R0,#4]
LDR             R2, [R1,#(dword_6E2954 - 0x6E26C4)]
STRB            R2, [R0,#5]
LDR             R1, [R1,#(dword_6E2958 - 0x6E26C4)]
B               loc_1CCE2C
LDR             R2, [R1,#(dword_6E29E4 - 0x6E26C4)]
STRB            R2, [R0,#2]
LDR             R2, [R1,#(dword_6E29E8 - 0x6E26C4)]
STRB            R2, [R0,#3]
LDR             R2, [R1,#(dword_6E29EC - 0x6E26C4)]
STRB            R2, [R0,#4]
LDR             R2, [R1,#(dword_6E29F0 - 0x6E26C4)]
STRB            R2, [R0,#5]
LDR             R1, [R1,#(dword_6E29F4 - 0x6E26C4)]
B               loc_1CCE2C
LDR             R1, =dword_6E26C4; jumptable 001CCBCC case 5
LDR             R2, [R1,#(dword_6E295C - 0x6E26C4)]
STRB            R2, [R0,#2]
LDR             R2, [R1,#(dword_6E2960 - 0x6E26C4)]
STRB            R2, [R0,#3]
LDR             R2, [R1,#(dword_6E2964 - 0x6E26C4)]
STRB            R2, [R0,#4]
LDR             R2, [R1,#(dword_6E2968 - 0x6E26C4)]
STRB            R2, [R0,#5]
LDR             R1, [R1,#(dword_6E296C - 0x6E26C4)]
B               loc_1CCE2C
MOV             R3, #1; jumptable 001CCBCC case 6
MOV             R1, #0x64 ; 'd'
STRB            R3, [R0,#2]
MOV             R2, #0
STRB            R1, [R0,#3]
STRB            R2, [R0,#4]
STRB            R1, [R0,#5]
STRB            R2, [R0,#6]
BX              LR
LDR             R1, =dword_6E26C4; jumptable 001CCBCC case 7
CMP             R2, #0
MOV             R3, #0x64 ; 'd'
BEQ             loc_1CCE04
LDR             R2, [R1,#(dword_6E2970 - 0x6E26C4)]
STRB            R2, [R0,#2]
LDR             R2, [R1,#(dword_6E2974 - 0x6E26C4)]
STRB            R2, [R0,#3]
LDR             R2, [R1,#(dword_6E2978 - 0x6E26C4)]
STRB            R2, [R0,#4]
LDR             R2, [R1,#(dword_6E297C - 0x6E26C4)]
STRB            R2, [R0,#5]
LDR             R1, [R1,#(dword_6E2980 - 0x6E26C4)]
STRH            R3, [R0,#8]
STRB            R1, [R0,#6]
BX              LR
LDR             R2, [R1,#(dword_6E29F8 - 0x6E26C4)]
STRB            R2, [R0,#2]
LDR             R2, [R1,#(dword_6E29FC - 0x6E26C4)]
STRB            R2, [R0,#3]
LDR             R2, [R1,#(dword_6E2A00 - 0x6E26C4)]
STRB            R2, [R0,#4]
LDR             R2, [R1,#(dword_6E2A04 - 0x6E26C4)]
STRB            R2, [R0,#5]
LDR             R1, [R1,#(dword_6E2A08 - 0x6E26C4)]
STRH            R3, [R0,#8]
STRB            R1, [R0,#6]
BX              LR
LDR             R1, =dword_6E26C4; jumptable 001CCBCC case 8
CMP             R2, #0
MOV             R3, #0x64 ; 'd'
BEQ             loc_1CCE74
LDR             R2, [R1,#(dword_6E2984 - 0x6E26C4)]
STRB            R2, [R0,#2]
LDR             R2, [R1,#(dword_6E2988 - 0x6E26C4)]
STRB            R2, [R0,#3]
LDR             R2, [R1,#(dword_6E298C - 0x6E26C4)]
STRB            R2, [R0,#4]
LDR             R2, [R1,#(dword_6E2990 - 0x6E26C4)]
STRB            R2, [R0,#5]
LDR             R1, [R1,#(dword_6E2994 - 0x6E26C4)]
STRH            R3, [R0,#8]
STRB            R1, [R0,#6]
BX              LR
LDR             R2, [R1,#(dword_6E2A0C - 0x6E26C4)]
STRB            R2, [R0,#2]
LDR             R2, [R1,#(dword_6E2A10 - 0x6E26C4)]
STRB            R2, [R0,#3]
LDR             R2, [R1,#(dword_6E2A14 - 0x6E26C4)]
STRB            R2, [R0,#4]
LDR             R2, [R1,#(dword_6E2A18 - 0x6E26C4)]
STRB            R2, [R0,#5]
LDR             R1, [R1,#(dword_6E2A1C - 0x6E26C4)]
STRH            R3, [R0,#8]
STRB            R1, [R0,#6]
BX              LR
LDR             R1, =dword_6E26C4; jumptable 001CCBCC case 9
CMP             R2, #0
MOV             R3, #0x64 ; 'd'
BEQ             loc_1CCEE4
LDR             R2, [R1,#(dword_6E2998 - 0x6E26C4)]
STRB            R2, [R0,#2]
LDR             R2, [R1,#(dword_6E299C - 0x6E26C4)]
STRB            R2, [R0,#3]
LDR             R2, [R1,#(dword_6E29A0 - 0x6E26C4)]
STRB            R2, [R0,#4]
LDR             R2, [R1,#(dword_6E29A4 - 0x6E26C4)]
STRB            R2, [R0,#5]
LDR             R1, [R1,#(dword_6E29A8 - 0x6E26C4)]
STRH            R3, [R0,#8]
STRB            R1, [R0,#6]
BX              LR
LDR             R2, [R1,#(dword_6E2A20 - 0x6E26C4)]
STRB            R2, [R0,#2]
LDR             R2, [R1,#(dword_6E2A24 - 0x6E26C4)]
STRB            R2, [R0,#3]
LDR             R2, [R1,#(dword_6E2A28 - 0x6E26C4)]
STRB            R2, [R0,#4]
LDR             R2, [R1,#(dword_6E2A2C - 0x6E26C4)]
STRB            R2, [R0,#5]
LDR             R1, [R1,#(dword_6E2A30 - 0x6E26C4)]
STRH            R3, [R0,#8]
STRB            R1, [R0,#6]
BX              LR

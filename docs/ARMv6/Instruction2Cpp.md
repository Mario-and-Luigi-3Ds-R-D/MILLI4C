# Instruction2Cpp


class ExampleA{

    int Ex1; // 0x0

    int Ex2; // 0x4

    u8 Ex3; // 0x8 size 1

    u16 Ex4; // 0x9 Size 2.

};


# Part I: Registers & Register Types


`Types, can be applied to regular instructions`


*EQ* = Equals to

*NE* = Not Equal to

*LT* = Less Than

*GT* = Greater Than

*LE* =  <=

*GE* =  >=

*HI* = > (Higher; greater than unsigned)

*LS* =  <= (Unsigned)


`Branch`


B - Branch. goto LabelBranch; // Goto

BL - Branch Link to function. RealSystem::RealSystem` RealSystem::RealSystem();

BLX Branch Link eXchange - Load vtable. *BLX R2*

BEQ Label goto Label; // If Equal, go to Label.

BNE Label goto Label; // If NOT Equal go to label.

You get the point.


`Returns / Local vars.`


PUSH - Push onto the local stack. Not to be confused with *sp!*


R0-R3 - Args, int Main(int r0, int r1, uint r2, uint r3 ) R0 can also be a *__thiscall* as well.

R4-R8 - Local Function args, declared IN function.

R9 N/A

R10 Local var if needed.

R11 N/A

R12 ip, = R0

R13 sp! Stack pointer.

R14 lr Link Register, return address.

R15 pc Program Counter, instruction pointer.


POP End Local Registers.


BX LR Return; most associated with void


ADD R0, R1, R2 = R0 = R1 + R2;  // Simple. its just math bro. Same Concept with SUB

ADD R0, R0, R1 = R0 = R0 + R1; // Simple. Same Conecpt with SUB


`Conditional Adds/Subs`


CMP R0, #0 

ADDNE R1, R1, #4` 

if(R0 != 0)

   R1 + R1 = 4; // OR R1 += 4;


CMP R2, #5

ADDEQ R3, R3, #1

if(R2 = 5)

   R3 ++;  // OR R3 + R3

# Part II: Memory/Storage


Initialize Memory


MOV R2,#0  int r0 = 0; // We Declare that R2 = 0.

MOV R1, R0 R1 = R0; // We move R1 into R0, they equal each other.


`Load into Memory (Load a pointer)`
 

LDR R1,[R0]  R1 = Example->Ex1;

LDR R1,[R0,#4] R2 = Example->Ex2; // Offset 4 in Class Example.

LDRB R3,[R0,#8] R3 = Example->Ex3; // Offset 8, Byte because Loader Byte.

LDRH R4,[R0,#9] R4 = Example->Ex4; // Offset 9, 2 bytes of mem since we are loading a Loader Half.


`Loading before CMP`


LDR R1,[R0,#4]

CMP R1,#0

BEQ skip

if(this->Ex2){}


CMP R3, #5

LDREQ R0, [R4]

if(R3 == 5)

   R0 = R4;


CMP R3, #5

LDRNE R0, [R4]

if(R3 != #5)

   R0 =R4;


`Loading/Accesing a vtable`


LDR R3, [R0]

LDR R3, [R3, #12] 

BLX R3


-> HACKED-EXAMPLE: ((void ()(Task))((void**)this)[2])(this); // this(r0 paramater) will load the Task vtable in the 2nd slot, which is __deallocating.

-> NON-HACKED: pTask->__deallocating;


`Store into memory`


STR R1,[R0] = Example = R1; // Store Example into R1, R1 can use Example params.

STR R2,[R0,#4] = Example->Ex2 = R2; // Store Example->Ex2 Into R2

STR R0,[sp,#0x10] = R0 = LocalVar // Store a Special register as defined in the stack.

STRB R3,[R0,#8] = Example->Ex3 = R3; // Same Concept as LDRB except for STR.

STRH R2,[R0,#9] = Example->Ex4 = R2; // Same Concept as LDRH except for STR.


STRD R1, R2, [R0] = Example = R1; Example->Ex1 = R2;

STRD R1, R2, [R0,#4] = Example->Ex1 = R2; Example->Ex2 = R1;


VSTR.32 the STR byte type is a Float.

VSTR.F32 the STR byte type is F32.


CMP R3, #5

STREQ R0,[R4]

if(R3 == 5)

   R4 = R1; // Just apply the EQ statement esstenially like with LDRNE/LDREQ.


# Part III: Compare If/Else Statements.


`If statement`


CMP R0,#0 = if(R0 == 0){} // If R0 == #0, do SOMETHING.


CMP R0,#0 

BEQ LabelEq

if(R0 == 0)

   goto LabelEq;


CMP R0,#5

BGT LabelBig

if(R0 > 5)

   goto LabelBig;


CMP R1,R2 = if(R1 == R2); // Also Depends on the branch after, go to top for more info on Types of branches.


CMP R0, #10

MOVGT R1, #1

if(R0 > 10)

   R1 = 1;


`Looping`


MOV R0, #0

lab_loop:

CMP R0, #5

BGE lab_endLoop

ADD R0, R0, #1

B lab_loop

end:


while(r0 < 5){

r0++;

}


/Switch Statements/


How to tell:

CMP RX, #N

BHI Lab_defaultCase`

ADD PC, PC, RX, LSL #2 // Ghidra is a case magnet, so its easy to tell. 


CMP R0, #0

BEQ Lab_Case0


CMP R0, #1`

BEQ Lab_Case1`


B Lab_defaultCase`


Lab_Case0:

BL FieldSystem::Init

B end


Lab_Case1:

BL FieldSystem::term

B end


Lab_defaultCase:

BL FieldSystem::IDONTKNOW


end:


Switch(r0){

case 0: FieldSystem::Init(); break;

case 1: FieldSystem::term(); break;

default: FieldSystem::IDONTKNOW();

}


# Part IV: Misc Meanings


`TST`


TST R0, #1

BEQ LabA


if((R0 & 1) == 0) // BEQ == 0, TST & 1

   goto LabA;


//

TST R0, #0x20

BNE LabB


if(R0 & 0x20)

   goto LabB;


`LSR/LSL`


LSL on the side


ADD R4, R5, R6, LSL #1 -> R4 = R5 + (R6 * 2)


LSL #1 would be * 2, 

LSL #2 would be * 4,

LSL #3 would be * 8, 


You get the point.


`Indiv LSL/LSR Instruction`


LSR R1, R0, #1 = R1 = R0 >> 1; // Slide to the right! Same concept with LSL.


LSR R2, R0, #4 

AND R2, R2, #0xF


R2 = (R0 >> 4) & 0xF;


`ASR`


ASR R1, R0, #1 = R1 = (signedval)R0 >> 1;

All of them used;

TST R0, #1

ADDEQ R1, R1, #4

LSR R0, R0, #1


 ->
if((R0 & 1) == 0) //TST

   R1 += #4; //ADDEQ


R0 = R0 >> 1; //LSR

`MISC MORE`

ORR R0, R0, #1 = R0 |= 1;


EOR R0, R0, R1 = R0 ^= R1;


BIC R0, R0, #4 = R0 &= ~4;


MLA R0, R1, R2, R3 = R0 = (R1 * R2) + R3;


UX, B = Byte Size, H = 2 Byte size.


UXTB R0, R1 = R0 = (byte)R1; // R0 is size 0x1.

UXTH R0, R1 R0 = (u16)R1; // R0 is size 0x2.


If anything is missing just let me know, I guess.
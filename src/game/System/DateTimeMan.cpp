#include <System/DateTimeMan.hpp>

DateTimeMan gDtMan;

/* DateTimeMan::GetNow() */

/* Pointer to -> fnd::DateTime::GetNow() */

/* Used in main.cpp */

void DateTimeMan::GetNow(){
    nn::fnd::DateTime datetime = nn::fnd::DateTime::GetNow();
    this->mDateTime = datetime;
}

/* DateTimeMan::calcNumber(int) */

/* Used in main.cpp */

void DateTimeMan::calcNumber(int newNumber){
    this->mNumber = newNumber + this->mNumber;
}
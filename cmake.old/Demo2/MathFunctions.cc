//#include "MathFunctions.h"
double power(double base, int exponent)
{
    int result = base; 
    int i;  
    for(i = 1; i < exponent; ++i){
        result = result * base; 
    }
    return result; 
}

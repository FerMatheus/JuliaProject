#include <stdio.h>
#include "math_em_c.h"

int main()
{

    printf("factorial: %d\n", factorial(3));
    printf("test plus: %.0f\n", plus(1, 2));
    printf("test minus: %.0f\n", minus(1, 2));
    printf("test divide: %.2f\n", divide(1, 2));
    printf("test square: %.0f\n", square(5));
    printf("test anySquare: %.0f\n", anySquare(27, 3));
    printf("test oneAboveX: %.2f\n", oneAboveX(2));
    printf("test module: %.0f\n", module(-5));
    printf("test euler: %lf\n", euler());
    printf("test squareRoot: %.0f\n", squareRoot(4));
    printf("test ln: %.0f\n", ln(2));
    printf("test log: %.0f\n", log(4));
    printf("test pi: %.2f\n", pi());
    return 0;
}
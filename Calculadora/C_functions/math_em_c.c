#include "math_em_c.h"
#include <math.h>

double factorial(double a)
{

    int resposta = a;

    for (int i = 1; i < a; i++)
    {
        resposta *= i;
    }
    return resposta;
}

double plus(double a, double b)
{

    return a + b;
}

double minus(double a, double b)
{

    return a - b;
}

double multiply(double a, double b)
{

    return a * b;
}

double divide(double a, double b)
{

    return a / b;
}

double square(double a)
{

    return a * a;
}

double anySquare(double a, int b)
{

    return pow(a, b);
}

double oneAboveX(double a)
{

    return 1 / a;
}

double module(double a)
{

    return sqrt(pow(a, 2));
}

double euler()
{

    return 2.718281828459045235360287471352;
}

double squareRoot(double a)
{

    return sqrt(a);
}

double ln(double a)
{

    return log(a);
}

double log(double a)
{

    return log10(a);
}

double pi()
{

    return 3.1415926535897932384626433832795;
}
double cosseno_C(double x)
{
    double i = (pi() * x / 180);
    return cos(i);
}
double seno_C(double x)
{
    double i = (pi() * x / 180);
    return sin(i);
}

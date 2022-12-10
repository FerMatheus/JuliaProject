#include <stdio.h>
#include <math.h>

int factorial(int a)
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

double squareRootAlt(int number, float aux, float sqrt)
{

    printf("Provide the number: \n");

    scanf("%d", &number);

    // store the half of the given number e.g from 256 => 128
    sqrt = number / 2;
    aux = 0;

    // Iterate until sqrt is different of temp, that is updated on the loop
    while (sqrt != aux)
    {
        // initially 0, is updated with the initial value of 128
        // (on second iteration = 65)
        // and so on
        aux = sqrt;

        // Then, replace values (256 / 128 + 128 ) / 2 = 65
        // (on second iteration 34.46923076923077)
        // and so on
        sqrt = (number / aux + aux) / 2;
    }

    return number, sqrt;
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
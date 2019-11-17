#include <stdio.h>
#include "myMath.h"

int main()
{
    double num;
    printf("testing\n");
    do{
    printf("Please enter a number\n");
    }
    while (scanf("%lf" ,&num)!=1);
    double ans1 = add(Exp((int)num),sub(Pow(num,3),2));
    double ans2 = add(mul(3,num),mul(2,Pow(num,2)));
    double ans3 = div(mul(4,Pow(num,3)),sub(5,mul(2,num)));
    printf("The value of f(x) = e^x+x^3-2 at the point %.4lf is: %.4lf\n",num,ans1);
    printf("The value of f(x) = 3x+2x^2 at the point %.4lf is: %.4lf\n",num,ans2 );
    printf("The value of f(x) = (4x^3)/5-2x at the point %.4lf is: %.4lf\n" ,num,ans3);

//printf("%lf\n", Exp(1));

}
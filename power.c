#include "myMath.h"
#include <stdio.h>

double Pow(double x , int y){
    double sum=1;
    int temp=0;
    if(y<0) {
        temp=y;
        y=-y;
    }
    for (int i = 0; i < y; i++) {
        sum=sum*x;
    } 
    if(temp<0){
        sum=1/sum;
    }

    return sum;
}
double Exp(int x){
    double e = 2.71828;
    double sum = 1;
    int temp=0;
    if(x<0) {
        temp=x;
        x=-x;
    }
    for (int i = 0; i < x; i++) {
        sum=sum*e;
    } 
    if(temp<0){
        sum=1/sum;
    }
    return sum;
}
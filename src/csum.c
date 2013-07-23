#include <stdio.h>

// {BEGIN: sum}
int sum (int array[], int length)
{
    int sum = 0;

    for (int i=0; i!=length; ++i) {
        sum += array[i];
    }

    return sum;
}
// {END}

int main (int argc, char *argv[])
{
    int array[] = {1, 2, 3, 4, 5, 6, 7, 8, 9};
    printf("size=%ld\n", sizeof(array)/sizeof(int));
    printf("sum=%d\n", sum(array, sizeof(array)/sizeof(int)));
    return 0;
}

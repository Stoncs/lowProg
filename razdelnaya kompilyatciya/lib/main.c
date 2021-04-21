#include <stddef.h>
#include <stdio.h>
#include "reverse.h"

static unsigned array[] = {1, 5, 1000, 6, 245, 3, 0};
static const size_t array_length = sizeof(array) / sizeof(array[0]);

int main()
{
    printf("initial: \n");
    for (size_t i = 0; i < array_length; i++) // вывод изначального массива
    {
        printf("%u ", array[i]);
    }

    reverse(array, array_length);

    printf("\nresult: \n");
    for (size_t i = 0; i < array_length; i++) // вывод изменённого массива
    {
        printf("%u ", array[i]);
    }
}
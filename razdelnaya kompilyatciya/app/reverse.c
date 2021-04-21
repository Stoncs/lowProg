#include <stdio.h>
#include "reverse.h"

void reverse(unsigned *array, size_t size)
{
    static unsigned temp = 0;

    for (size_t i = 0; i < size - 1; i++)
    {
        if (i >= size - i - 1)
        {
            return;
        }
        temp = array[size - i - 1];
        array[size - i - 1] = array[i];
        array[i] = temp;
    }
}
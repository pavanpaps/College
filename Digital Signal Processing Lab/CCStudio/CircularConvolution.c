#include <stdio.h>
#include <math.h>
main()
{
    float x[5] = {1, 2, 3, 4, 5};
    float h[5] = {2, 1, 3, 4, 5};
    float y[10];
    int N = 5;
    int k, n, i;
    for (n = 0; n < N; n++)
    {
        y[n] = 0;
        for (k = 0; k < N; k++)
        {
            i = (n - k) % N;
            if (i < 0)
                i = i + N;
            y[n] = y[n] + h[k] * x[i];
        }
        printf("%f\t", y[n]);
    }
}

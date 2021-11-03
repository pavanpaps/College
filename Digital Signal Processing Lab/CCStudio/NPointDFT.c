#include <stdio.h>
#include <math.h>
main()
{
    float y[16];
    float x[4] = {1, 3, 2, 5};
    float w;
    int n, k, k1, N = 8, xlen = 4;
    for (k = 0; k < 2 * N; k = k + 2)
    {
        y[k] = 0;
        y[k + 1] = 0;
        k1 = k / 2;
        for (n = 0; n < xlen; n++)
        {
            w = -2 * 3.14 * k1 * n / N;
            y[k] = y[k] + x[n] * cos(w);
            y[k + 1] = y[k + 1] + x[n] * sin(w);
        }
        printf("%f+j%f \n", y[k], y[k + 1]);
    }
}

#include <stdio.h>
float x[60], y[60];
main()
{
    float a1, a2, b0, b1, b2;
    int i, j, N = 20;
    a1 = -1.1430;
    a2 = 0.4128;
    b0 = 0.0675;
    b1 = 0.1349;
    b2 = 0.0675;
    x[0] = 1;
    for (i = 1; i < N; i++)
        x[i] = 0;
    for (j = 0; j < N; j++)
    {
        y[j] = b0 * x[j];
        if (j > 0)
            y[j] = y[j] + b1 * x[j - 1] - a1 * y[j - 1];
        if ((j - 1) > 0)
            y[j] = y[j] + b2 * x[j - 2] - a2 * y[j - 2];
        printf("%f \t", y[j]);
    }
}

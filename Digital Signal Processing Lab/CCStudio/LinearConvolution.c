#include <stdio.h>
#include <math.h>
main()
{ //the two sequences can be of different lengths, no need to zero pad for this program

	float h[4] = {2, 2, 2, 2};
	float x[4] = {1, 2, 3, 4};
	float y[10];
	int xlen = 4;
	int hlen = 4;
	int N = xlen + hlen - 1;
	int k, n;
	for (n = 0; n < N; n++) //outer  loop for y[n]array
	{
		y[n] = 0;
		for (k = 0; k < hlen; k++) //inner loop for computing each y[n]point
		{
			if (((n - k) >= 0) & ((n - k) < xlen))
				y[n] = y[n] + h[k] * x[n - k]; //computeoutput
		}									   //end of inner forloop
		printf("%f\t", y[n]);
	} //end of outer forloop
}

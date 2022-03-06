

//Bankers Algorithm using Safety method.


#include <stdio.h>

int current[5][5], maximum_claim[5][5], available[5];
int allocation[5] = {0, 0, 0, 0, 0};
int maxres[5], running[5], safe = 0;
int counter = 0, i, j, exec, resources, processes, k = 1;

int main()
{
     printf("\nEnter number of processes: ");
     scanf("%d", &processes);

     for (i = 0; i < processes; i++)
     {
         running[i] = 1;
         counter++;
     }

     printf("\nEnter number of resources: ");
     scanf("%d", &resources);

     printf("\nEnter Claim Vector:");
     for (i = 0; i < resources; i++)
     {
        scanf("%d", &maxres[i]);
     }

     printf("\nEnter Allocated Resource Table:\n");
     for (i = 0; i < processes; i++)
     {
        for(j = 0; j < resources; j++)
        {
            scanf("%d", &current[i][j]);
        }
     }

     printf("\nEnter Maximum Claim Table:\n");
     for (i = 0; i < processes; i++)
     {
         for(j = 0; j < resources; j++)
         {
             scanf("%d", &maximum_claim[i][j]);
         }
     }

     printf("\nThe Claim Vector is: ");
     for (i = 0; i < resources; i++)
     {
        printf("\t%d", maxres[i]);
     }

     printf("\nThe Allocated Resource Table:\n");
     for (i = 0; i < processes; i++)
     {
        for (j = 0; j < resources; j++)
        {
             printf("\t%d", current[i][j]);
        }
        printf("\n");
     }

     printf("\nThe Maximum Claim Table:\n");
     for (i = 0; i < processes; i++)
     {
         for (j = 0; j < resources; j++)
         {
        printf("\t%d", maximum_claim[i][j]);
         }

         printf("\n");

     }

     for (i = 0; i < processes; i++)
     {
         for (j = 0; j < resources; j++)
         {
             allocation[j] += current[i][j];
         }
     }

     printf("\nAllocated resources:");
     for (i = 0; i < resources; i++)
     {
         printf("\t%d", allocation[i]);
     }

     for (i = 0; i < resources; i++)
     {
        available[i] = maxres[i] - allocation[i];
     }

     printf("\nAvailable resources:");
     for (i = 0; i < resources; i++)
     {
         printf("\t%d", available[i]);
     }

     printf("\n");

     while (counter != 0)
        {
            safe = 0;

         for (i = 0; i < processes; i++)
            {
             if (running[i])
              {
                    exec = 1;

                 for (j = 0; j < resources; j++)
                    {
                     if (maximum_claim[i][j] - current[i][j] > available[j])
                        {
                            exec = 0;
                            break;

                        }
                    }

                    if (exec)
                        {
                            printf("\nProcess%d is executing\n", i + 1);
                            running[i] = 0;
                            counter--;
                            safe = 1;


                    for (j = 0; j < resources; j++)
                        {
                            available[j] += current[i][j];
                        }

                        break;


                        }
                }
            }

            if (!safe)
            {
                printf("\nThe processes are in unsafe state.\n");
                break;
            }
            else
            {
                printf("\nThe process is in safe state");
                printf("\nAvailable vector:");


            for (i = 0; i < resources; i++)
                {
                    printf("\t%d", available[i]);
                }

                printf("\n");
            }
        }

        //Banker's Algorithm
void accept(int A[][10],int N[][10],int M[10][10],int W[1][10],int *n,int *m){
	int i,j;
	printf("\n Enter total no. of processes : ");
	scanf("%d",n);
	printf("\n Enter total no. of resources : ");
	scanf("%d",m);
	for(i=0;i<*n;i++){
		printf("\n Process %d\n",i+1);
		for(j=0;j<*m;j++){
			printf(" Allocation for resource %d : ",j+1);
			scanf("%d",&A[i][j]);
			printf(" Maximum for resource %d : ",j+1);
			scanf("%d",&M[i][j]);
		}
	}
	printf("\n Available resources : \n");
	for(i=0;i<*m;i++){
		printf(" Resource %d : ",i+1);
		scanf("%d",&W[0][i]);
	}

	for(i=0;i<*n;i++)
		for(j=0;j<*m;j++)
			N[i][j]=M[i][j]-A[i][j];

	printf("\n Allocation Matrix");
	print(A,*n,*m);
	printf("\n Maximum Requirement Matrix");
	print(M,*n,*m);
	printf("\n Need Matrix");
	print(N,*n,*m);

}

int banker(int A[][10],int N[][10],int W[1][10],int n,int m){
	int j,i,a[10];
	j=safety(A,N,W,n,m,a);
	if(j != 0 ){
		printf("\n\n");
		for(i=0;i<n;i++)
		     printf(" P%d  ",a[i]);
		printf("\n A safety sequence has been detected.\n");
		return 1;
	}else{
		printf("\n Deadlock has occured.\n");
		return 0;
	}
}

        return 0;


}


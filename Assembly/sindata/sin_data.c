#include<stdio.h>
#include<math.h>


int main(){
	float j[92];
	int i;
	int index=0;
	FILE *fp;


	fp=fopen("sindata.txt","w");
	for(i=0;i<=90;i++){
		j[i]=sin(M_PI*i/180.0);
	}
	for(i=0;i<23;i++){
		fprintf(fp,"DCD    ");
		fprintf(fp,"%f,",j[index]);
		fprintf(fp,"%f,",j[index+1]);
		fprintf(fp,"%f,",j[index+2]);
		fprintf(fp,"%f",j[index+3]);
		fprintf(fp,"\n");
		index+=4;
	}
	fclose(fp);
	
	
}




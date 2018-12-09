
__inline int getsum(int x,int y){
 int sum;
 __asm{
 ADD sum,x,y
 
 }
return sum;
}


int num;
int main(void){

int x=56,y=12;

num=getsum(x,y);
while(1){
}


}


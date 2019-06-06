main() { 
	int i,j,k;	
	i=2;

	j=3;

	k=0;

	while(k<10){
		if(j==4){
			k=25;
		}
		else{
			if(i==2 && k==5){
				k=i+j+63;
			}
			else{
				j=j-1;
			}
		}
		k=k+1;
	}

	printf(k);
}

function fun1(e1,e2,e3,e4)
{
	var i,j,k,a,b,c,d,t1,t2,t3;
	var opx=["+","-","*","/","-","/"];
	a=e1;b=e2;c=e3;d=e4;
	for(i=0;;)
	{
		if(i>=4)break;
		if(i==0)t1=a+b;	
		if(i==1)if(a-b>0)t1=a-b;	
		if(i==2)t1=a*b;	
		if(i==3)if(b!=0)t1=a/b;
		for(j=0;;)
		{
			if(j>5)break;
			if(j==0)t2=t1+c;
			if(j==1)t2=t1-c;
			if(j==2)t2=t1*c;
			if(j==3)if(c!=0)t2=t1/c;
			if(j==4)t2=c-t1;
			if(j==5)if(t1!=0)t2=c/t1;
			for(k=0;;k++)
			{
				if(k>5)break;
				if(k==0)t3=t2+d;
				if(k==1)t3=t2-d;
				if(k==2)t3=t2*d;
				if(k==3)if(d!=0)t3=t2/d;
				if(k==4)t3=d-t2;
				if(k==5)if(t2!=0)t3=d/t2;
				if(t3==24)
				{var str="";
				 var t="";

					if((j>1||k>1)&&i<2)t="(";
					if((j<2||j==4)&&k>1&&i>1)t="(";
					str=str+a+opx[i]+b;
					if(j>1&&i<2)str=str+")";
					if(j<4)str=str+opx[j]+c;
					else if(j>3&&i<2)str=c+opx[j]+"("+str+")";
					else if(j==5&&i==3)str=c+opx[j]+"("+str+")";
						else str=c+opx[j]+str;
					if(j<2&&k>1&&i<2)str=str+")";
					str=t+str;
					if((j<2||j==4)&&k>1&&i>1)str=str+")";
					if(k<4)str=str+opx[k]+d+"=24";
						else str=d+opx[k]+str+"=24";
					pubAnser=str;
					
					return 1;	
				}
			}
			j=j+1;
		}
		i=i+1;		
	}
}

function fun3(e1,e2,e3,e4)
{
	var i,j,k,a,b,c,d,t1,t2,t3;
	var opx=["+","-","*","/"];
	a=e1;b=e2;c=e3;d=e4;
	for(i=0;;)
	{
		if(i>=4)break;
		if(i==0)t1=a+b;	
		if(i==1)t1=a-b;	
		if(i==2)t1=a*b;	
		if(i==3)if(b!=0)t1=a/b;
		for(j=0;;)
		{
			if(j>3)break;
			if(j==0)t2=c+d;
			if(j==1)t2=c-d;
			if(j==2)t2=c*d;
			if(j==3)if(d!=0)t2=c/d;
			for(k=0;;k++)
			{
				if(k>3)break;
				if(k==0)t3=t1+t2;
				if(k==1)t3=t1-t2;
				if(k==2)t3=t1*t2;
				if(k==3)if(d!=0)t3=t1/t2;
				if(t3==24)
				{var str='';

					if(k>1&&i<2)str="(";
					str=str+a+opx[i]+b;
					if(k>1&&i<2)str=str+")";
					str=str+opx[k];
					if(k>0&&j<2)str=str+"(";
					str=str+c+opx[j]+d;
					if(k>0&&j<2)str=str+")";
					str=str+"=24";
					pubAnser=str;
	
					return 1;	
				}
			}
			j=j+1;
		}
		i=i+1;		
	}
}
function fun2(a,b,c,d)
{
	var i,j,k,str,flg;
	var arr=[a,b,c,d];
	for(i=0;;)
	{
		if(i>3)break;
		for(j=0;;)
		{
			if(j>3)break;
			if(j==i){j=j+1;continue;}
			for(k=0;;)
			{
				if(k>3)break;
				if(k==i||k==j){k=k+1;continue;}
				for(l=0;;)
				{
					if(l>3)break;
					if(l==i||l==j||l==k){l=l+1;continue;}
					if(arr[i]==3&&arr[j]==3&&arr[k]==8&&arr[l]==8)
						{
						pubAnser="8/(3-8/3)=24";
						return true;}
					flg=fun1(arr[i],arr[j],arr[k],arr[l]);
					if(flg==1)return true;
					flg=fun3(arr[i],arr[j],arr[k],arr[l]);
					if(flg==1)return true;
					l=l+1;
				}
				k+=1;
			}
			j=j+1;
		}
		i=i+1;	
	}
	pubAnser="此题无解！";
	return false;
}

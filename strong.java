import java.util.Scanner;
class strong
{	
	public static void main(String args[])
	{
	  int a,d,sum=0,fact,temp,i;
	  Scanner sc=new Scanner(System.in);
	  System.out.println("enter a number");
	  a=sc.nextInt();
	  temp=a;
	  while(a>0)
 	  {
		fact=1;
	        d=a%10;
		for(i=d;i>0;i--)
		{
		fact=fact*i;
		}
		System.out.println("fact"+fact);
		a=a/10;
		sum=sum+fact;
		}
		if(sum==temp)
		{
		System.out.println("this is strong number "+temp);
		}
	   }
}
public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059";  
public void setup()  
{            
     noLoop();  
}  
public void draw()  
{   
	for(int i=2;i<(e.length() -10);i++){
		String digits = e.substring(i,i+10);
		long dNum = Long.parseLong(digits);
		if(isPrime(dNum)==true){
			System.out.println(dNum);
		}
	}
}  

public boolean isPrime(long num){
  boolean out=true;
  if(num<2){return false;}
  for(long i=2;(i*i)<=num;i++){
    out = ((num % i) == 0 ) ? false : out;
  }
  return out;
}

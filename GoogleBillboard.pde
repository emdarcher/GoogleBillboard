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
		if(isPrime(dNum)){
			System.out.println(dNum);
		}
	}
}  

public boolean isPrime(long num){
  boolean out=false;
  //if(((num & (long)(1<<63))!=0)||(num==1)||(num==0)){
    //checks if minus bit is set or number = 1 or 0
    //return false;
  //}
  if(num<2){return false;}
  //else if(((num & ~((long)0x2))==0)||((num & ~((long)0x3))==0)){ //if num==2 or 3
  //  return true;
  //}
  //else if(((num & (long)(1<<0))!=0) && (num % 3 !=0 )) {
    // if the number is odd continue
    // (checks if bit 0 is set, if it is then it's odd)
    // also checks if not divisible by 3
    for(long i=2;(i*i)<=num;i++){
       out = ((num % i) == 0 ) ? false : true;
    }
  //}
  return out;
}

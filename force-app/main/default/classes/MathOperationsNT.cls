public class MathOperationsNT {
    
    public String name = 'Addition'; //static variable
    
   public static Integer num = 27;//if you dont type access modifier, it is assigned as private by default!
    
    public Integer add(Integer a, Integer b){
		return a+b; 
    } 
     
    public Double add(Double a, Double b){
		return a+b;    
    }
    
     public Integer add(Integer a, Integer b, Integer c){
		return a+b+c;    
    }
    
    public Double add(Double a, Integer b){
		return a+b; 
        //data type must be in larger one!
    }
     public Double add(Integer a, Double b){
		return a+b; 
    }
    
    public Decimal add(Decimal a, Integer b){
        return a+b;
    }

}
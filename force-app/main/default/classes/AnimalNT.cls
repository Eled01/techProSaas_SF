public virtual class AnimalNT {
    
    public String type = 'Mammal or Not!';
    public Decimal weight = 1.33;
    
    public void eat(){
        System.debug('Animals eat...!');
    }
    
    public void drink(){
        System.debug('Animals drink');
    }
       
}
//to define this class as parent use "virtual" keyword
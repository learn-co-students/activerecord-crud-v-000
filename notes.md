Movie                                                                           
  inherits from ActiveRecord::Base                                              
  Movie.new                                                                     
    has a title (FAILED - 1)                                                    
    has a release date (FAILED - 2)                                             
    has a director (FAILED - 3)                                                 
    has a lead actor/actress (FAILED - 4)                                       
    has an in theaters flag (FAILED - 5)                                        
  ::new                                                                         
    can be instantiated without any attributes (FAILED - 6)                     
    can be instantiated with a hash of attributes (FAILED - 7)                  
  #save
    can be saved to the database (FAILED - 8)                                   
  basic CRUD                                                                    
    creating                                                                    
      can be instantiated and then saved (FAILED - 9)                           
      can be created with a hash of attributes (FAILED - 10)                    
      can be created in a block (FAILED - 11)                                   
    reading                                                                     
      can get the first item in the database (FAILED - 12)                      
      can get the last item in the databse (FAILED - 13)                        
      can get size of the database (FAILED - 14)                                
      can retrive the first item from the database by id (FAILED - 15)          
      can retrieve from the database using different attributes (FAILED - 16)   
      can use a where clause and be sorted (FAILED - 17)                                          
    updating                                                                    
      can be found, updated, and saved (FAILED - 18)                            
      can be updated using #update (FAILED - 19)                                
      can update all records at once (FAILED - 20)                              
    destroying                                                                  
      can destroy a single item (FAILED - 21)                                   
      can destroy all items at once (FAILED - 22)    

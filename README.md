X-SUNIT PROJECT


Using postman plugin https://chrome.google.com/webstore/detail/postman/fhbjgbiflinjbdggehcddcbncdddomop?hl=pt-BR

To see the list of all survivors do:
   
    1 - go to http://localhost:3000/survivors
    2 - select the option GET
    3 - press send

To see info of a specific survivor do:
   
    1 - go to http://localhost:3000/survivors/id
        change the id by the number corresponding to the survivor's id 
    2 - select the option GET
    3 - press send

To add a new survivor do:
  
    1 - go to http://localhost:3000/survivors
    2 - select the option POST
    3 - in the body field fill in like this:
          {
          "name": "  "      ,
          "age":            ,
          "gender": "  "    ,
          "latitude": "  "  ,
          "longitude": "  " ,     
        }
        add the info on the blanks, the name,gender, latitude and longitude fields, must be enclosed in quotation marks
    4 - press send  

To delete a survivor do:
   
    1 - go to http://localhost:3000/survivors/id
    change the id for the number corresponding to the survivor's id
    2 - select option DELETE
    3 - press send
  
To update a survivor's location do:
    
    1 - go to http://localhost:3000/survivors/id
    change the id by the number corresponding to the survivor's id
    2 - select option PATCH
    3 - in the body field fill in like this:
      {
        "latitude": "  "  ,
        "longitude": "  " ,     
      }
      add the info on the blanks
    4 - press send

To see the list of abduction reports do:
    
    1 - go to http://localhost:3000/abduction_reports/
    2 - press GET
    
    ***only the survivor's id and the amount of people that reported his abduction will be shown

To report the abdction of an survivor do:
   
    1 - before anything you have to know the survivo's id, 
        for that you can follow the first instruction to see see all survivors and their respective ids
    2 - go to http://localhost:3000/abduction_reports/id
        change the id by the number corresponding to the survivor's id
    3 - if no one has reported before in the body field fill in like this:
            *** To know if someone reported the abduction of the survivor go to the previous instruction
        {
          "id":  ,
          "amount": ,     
        }
        add 1 to the amount fiel
        
        if someone has already reported do:
        {
          "id":  ,
          "amount": ,     
        }
        add 1 to the number that was on the amount fiel and replace it  
      4 - press send   
      
 To know the total of survivors, the percentage of the survivors non abducted and the percentage od survivors abducted do:
      
      1 - go to http://localhost:3000/situation
      2 - press send
          
 This os all folks!!! :)         
        
        
        
        
        
        

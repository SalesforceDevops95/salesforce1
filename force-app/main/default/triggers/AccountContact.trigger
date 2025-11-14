trigger AccountContact on Account (after insert) 
{
    List<contact> conList = new List<Contact>();
    for(Account acc : Trigger.new)
    {
        
        Contact con = new Contact();
        con.LastName = acc.Name;
        con.AccountId = acc.Id;
        conList.add(con);
    }
    

}
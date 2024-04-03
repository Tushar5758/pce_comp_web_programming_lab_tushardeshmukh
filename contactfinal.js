function check() 
{
    var name=document.contact.uname.value;
    var fname = document.contact.uname;
    var number = document.contact.uphone.value;
    var fnumber=document.contact.uphone;
    var mail=document.contact.umail.value;
    var fmail=document.contact.umail;
    var message = document.contact.message.value;
    var correctname=/^[a-zA-Z ]*$/;
    var count=0;

    var correctmail= /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
    /*
    function countdigit()
    {
        count=0;
        for(i=1;i<=number.length;i++)
        {
            if (!isNaN(parseInt(number[i]))) 
            {
                count++;
            }
        }
        return count;
    }*/
    
    if(mail=="")
    {
        document.getElementById("valid3").style.visibility="visible";
        document.getElementById("valid6").style.visibility="hidden";
        /*fmail.focus();*/
        event.preventDefault();
        
    }
    else if(!correctmail.test(mail))
    {
        document.getElementById("valid3").style.visibility="hidden";
        document.getElementById("valid6").style.visibility="visible";

        
        event.preventDefault();
        
    }
   else
    {
        document.getElementById("valid3").style.visibility="hidden";
        document.getElementById("valid6").style.visibility="hidden";

    }
    if(name=="")
    {
        document.getElementById("valid1").style.visibility="visible";
        document.getElementById("valid6").style.visibility="hidden";

        event.preventDefault();
        fname.focus();
    }
    else if (!correctname.test(name))
    {
        document.getElementById("valid4").style.visibility="visible";
        document.getElementById("valid1").style.visibility="hidden";

        event.preventDefault();
    }
    else
    {
        document.getElementById("valid4").style.visibility="hidden";
        document.getElementById("valid1").style.visibility="hidden";

    }
    
    if(number=="")
    {
        document.getElementById("valid2").style.visibility="visible";
        event.preventDefault();

        return false;


    }
    else if(number.length!=10 ||isNaN(number))
    {
        document.getElementById("valid7").style.visibility="visible";
        document.getElementById("valid2").style.visibility="hidden";

        
        event.preventDefault();
        fnumber.focus();
        return false;
    }
    else
    {
        document.getElementById("valid7").style.visibility="hidden";
        document.getElementById("valid2").style.visibility="hidden";
    }
    
    return true;

    
}

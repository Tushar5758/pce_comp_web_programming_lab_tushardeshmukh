function search()
{
    var input=document.getElementById("search1").value.toLowerCase();
    var content=document.getElementById("allcontents").innerHTML.toLowerCase();
    if(content.includes(input))
    {
        document.getElementById("notfound").innerHTML= "--- "+input +" is found---";
    }
    else
    {
        document.getElementById("notfound").innerHTML="--- "+input +" not found---";
    }

}
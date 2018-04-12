package demoproject

class Registration{
String  name
    String Password

//String city
//String state
//String zipcode
//String email
//Date dataCreated
//Date lastUpdated
    static mapping = {
        autoTimestamp false
    }






    static constraints = {
    }
    static hasMany = [regristration:Registration]
}

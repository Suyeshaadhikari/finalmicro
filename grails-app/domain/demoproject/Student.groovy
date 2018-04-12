package demoproject

class Student {
    String firstName
    String lastName
    Date dateOfBirth
    Department department


    static constraints  = {

        firstName(nullable: true)
        lastName(nullable: true)
        dateOfBirth(nullable: true)
    }







}

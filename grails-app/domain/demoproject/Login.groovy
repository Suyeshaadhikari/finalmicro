package demoproject

class Login {
    String userName
    String password
    Boolean admin
    static constraints = {
        userName(nullable: true)
        password(nullable: true)


    }

}
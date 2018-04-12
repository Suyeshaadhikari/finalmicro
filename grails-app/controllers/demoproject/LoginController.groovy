package demoproject

class LoginController {

    def index() {
        render view: "login"
        redirect (action: 'login',controller:'login' )


    }

    def save(params) {
        println "params = $params"
        loginService.(params)
        redirect(action: 'index')
    }

    def login() {
        println "params 2222= $params"
        redirect (controller: 'furniture',action:'index' ,params: ['isAdmin':params.isAdmin])
    }


    def beforeLogin(){
        render view: "login"

    }

    def logout(){
        render(view: "login")
//    redirect(controller: 'll',action:'llll' )
    }

    def checkPassword(){
        println"params===>>>>>>>login<<<< "+params
        Login credentials= Login.findByUserNameAndPassword(params.username,params.password)
        println("sbjffkjnxscn"+credentials)
        if(credentials) {
            println"here"
            Boolean isAdmin = credentials.admin
            render isAdmin
        }else{
            render "NoRecord"
        }
    }

}







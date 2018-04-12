package demoproject

import java.text.DateFormat
import java.text.SimpleDateFormat

class RaceController {
    def raceService

    def form() {
        //render"Hello Deerwalk"
    }

    def addStudent() {
        def allDepartment=Department.findAll()?.code
        println "aaa"+allDepartment
        render template: "addRace" ,model :[allDepartment:allDepartment]

    }

    def addDepartment() {
        render view: "department"

    }

    def save() {
        println"here"
        println "123params $params"
        DateFormat df = new SimpleDateFormat("MM/dd/yyyy");
        // for edit
        if (params?.studentId) {
            println("here-=------"+params.get('studentId'))
            Student student = Student.findById(params.get('studentId'))
            println "department =  "+ Department.findByCode(params.department)
            println "{student?.class} = ${student?.class}"
            println "student = $student"
            student.firstName = params.get('firstName')
            student.lastName = params.get('lastName')
            student.dateOfBirth=new Date().parse(params.get('dateOfBirth'))
            student.department = Department.findById(params?.get('departmentId'))
            student.save(failOnError: true, flush: true)
        } else {
            // add
            println "=====params = $params"
            def saveStudent = raceService.saveStudent(params)

        }

        redirect(action: 'index')

    }






    def index() {
        println"log;;;"
        List<Student> getAllStudent = Student.findAll()
        List<Department> getAllDepartment = Department.findAll()
        println "getAllStudent = $getAllStudent"
        render view: 'index', model: [student: getAllStudent,department:getAllDepartment]




    }



    def editStudent() {
        println "params = $params"
        println("params == " + params)
        def student = Student.findById(Long.parseLong(params?.id))
        def department = Department.findByCode(params.code)
        def allDepartment=Department.findAll()?.code
        println("params=="+params)
        println "student = $student"
        render view: '_addRace', model: [student: student,department: department ,allDepartment: allDepartment]


    }

    def editDepartment(){

        println "params = $params"
        def department=Department.findById(params?.id)
        println("params=="+params)
        render view: 'department',model: [department: department]



    }

    def delete() {
        println("params=$params")
        def studentToDelete = Student.findById(params?.id)
        if (studentToDelete) {
            studentToDelete.delete(flush: true)
            flash.message = "Successfully Deleted!"
            flash.messageType = "success"
        } else {
            flash.message = "Cannot delete student."
            flash.messageType = "error"
        }

        redirect(action: index())

        def departmentToDelete=Department.findById(params?.id)
        if(departmentToDelete){
            departmentToDelete.delete(flush: true)
            flash.message="Deleted successfully!"
            flash.messageType="success"
        }else{
            flash.message="sorry cannot delete department!"
            flash.messageType="error"
        }

    }

    def saveDepartment(){
        println "SaveDepa =sadsadsadsadsa "
        println "params of savedepartment = $params"
        raceService.saveDepartment(params)
        redirect(view: "index")
    }
    def saveStudent(){
        raceService.saveStudent(params)
        redirect(view:"index")
    }

 def Department(){
     List<Department> department = Department.createCriteria().list {
//         eq('name','bachelor in computer engineering')
         ilike("name", "%bachelor in computer %")
     }

     println"department list "+department
 }


    def logout() {
        redirect (action: 'logout',controller:'race' )




}

}





package demoproject

import grails.transaction.Transactional

@Transactional
class RaceService {

    def saveStudent(params) {
        println "params = $params"
        Student student = new Student()
        student.firstName=params?.firstName
        student.lastName=params?.lastName
        student.dateOfBirth=new Date().parse("MM-dd-yyyy",params.dateOfBirth)
        student.department= Department.findByCode(params.department)

        println "race = $student"
        student.save(failOnError: true,flush: true)
        return student

    }

    def saveDepartment(params){
        Department d1=Department.findById(params?.departmentId)
        d1.name=params?.departmentName
        d1.code=params?.departmentCode

        d1.save(failOnError: true,flush: true)


    }



}

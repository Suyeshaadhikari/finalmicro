package demoproject

class FurnitureController {


    def index() {
        println"params index0"+params
    def furnitureList = Furniture.findAll();
        render(view: 'index',model: ['FurnitureList':furnitureList,isAdmin:params.isAdmin])
    }

    def addFurniture(){
        render(view: 'addFurniture',model: [])
    }
    def editFurniture(){

        def specific= Furniture.get(params.id)
        [f:specific]
    }
    def update(){

    }

    def save(){
        Furniture newFurniture = new Furniture()
        Details details = new Details()
        details.description=params?.description
        details.ownersName =params?.ownerName
        details.condition=params?.condition
        details.phoneNo=params?.phoneNo
        .save(flush: true,failOnError: true)
        Image image=new Image()
        image.location=params?.image
        image.save(flush: true,failOnError: true)
        newFurniture?.name = params?.name
        newFurniture?.publishedDate = new Date()
        newFurniture?.price =params.int('Price')
        newFurniture?.details = details
        newFurniture?.image=image
        println "params = $params"
        newFurniture.save(flush: true, failOnError: true)
        def furnitureList = Furniture.findAll();
        render(view: 'index',model: ['FurnitureList':furnitureList])

    }
}

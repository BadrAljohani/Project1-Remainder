enum Operation: Int {
    case completed = 0
    case pending
}

struct Task {
    var titel : String
    var time :Int
    var comment : String
    var operation : Operation
    
    mutating func editTask ( newTitel: String ,newtime: Int , newcomment : String , newOperation : Operation ){
        self.titel = newTitel
        self.time = newtime
        self.comment = newcomment
        self.operation = newOperation
    }
}

struct List {
    var title: String
    var items: [Task] = []
    
    mutating func addItem (newItem : Task) {
        self.items.append(newItem)

    }

    mutating func deleteItem (index: Int){
        if (self.items.count > index) {
            self.items.remove(at: index)
        } else {
            print("Can't delete item")
        }
    }
    mutating func updateItem( itemIndex: Int, newItem: Task){
        self.items[itemIndex] = newItem
    }
    
    mutating func sortByStatus() {
        items = items.sorted { $0.operation.rawValue < $1.operation.rawValue }
    }
}

class Remainder {
    var lists : [List] = []
        
    func createNewList(list: List){
        self.lists.append(list)
        print("List \(list.title) created successfully")
    }
    func deleteList (index : Int){
        self.lists.remove(at: 0)
        print("List Deleted Done")
    }
    
    func showAll (){
        for showLists in lists  {
            print(showLists.title, "\n\nThe Number of missions :\(showLists.items.count)")
            for item in showLists.items {
                print (item.titel, item.time , item.comment , item.operation)
            }
        }
    }
}
var T1 = Task( titel: "Go To Work",time: 8, comment: "print The New Document With You",  operation: .completed);
var T2 = Task( titel: "Order from a restaurant",time: 17, comment: "Don't forget to order a margarita", operation: .pending)
var T3 = Task( titel: "Push exercise",time: 20, comment: "Take Your Supplements",  operation: .pending)

var T4 = Task( titel: "Meeting",time: 10, comment: "you have a meeting today With sami",  operation: .completed)
var T5 = Task( titel: "My Car",time: 18, comment: "wach you car", operation: .completed)
var T6 = Task( titel: "pull exercise",time: 21, comment: "Take Your Supplements",  operation: .completed)

var T7 = Task( titel: "Fligh",time: 6, comment: "trip to italy",  operation: .completed)
var T8 = Task( titel: "new customer",time: 12, comment: "0545455 his phonenumber", operation: .pending)
var T9 = Task( titel: "legs exercise",time: 20, comment: "Go to the cold jacuzzi",  operation: .completed)

var Textra1 = Task( titel: "break time",time: 13, comment: "you can eat lunch",  operation: .completed)
var Texrta2 = Task( titel: "break time",time: 14, comment: "you can eat lunch",  operation: .completed)



//var List1 = List(title: "Work")
//List1.addItem(newItem: T1)
//List1.addItem(newItem: T2)
//List1.addItem(newItem: T7)


//var List2 = List(title: "GYM")
//List2.addItem(newItem: T3)
//List2.addItem(newItem: T6)
//List2.addItem(newItem: T9)

//                              ((((((    addItem    )))))
var myLists = Remainder()
var list1 = List(title: "Personal",items: [ T2,T5,T7])
var list2 = List(title: "Work",items: [ T1,T4,T8])
var list3 = List(title: "GYM",items: [ T3,T6,T9])

//                                  ((((((    sort    )))))
list1.sortByStatus()
list2.sortByStatus()
list3.sortByStatus()

//                               ((((((    createNewList    )))))
myLists.createNewList(list: list1)
myLists.createNewList(list: list2)
myLists.createNewList(list: list3)

//                               ((((((    deleteItem    )))))
//myLists.lists[1].deleteItem(index: 1)
//myLists.lists[1].deleteItem(index: 0)

//                              ((((((    updateItem    )))))
myLists.lists[1].updateItem(itemIndex: 1, newItem: Textra1)
myLists.lists[1].updateItem(itemIndex: 2, newItem: Texrta2)

//                              ((((((    deleteList    )))))
//myLists.lists[0].items.remove(at: 0)

//                              ((((((    showAll    )))))
myLists.showAll()



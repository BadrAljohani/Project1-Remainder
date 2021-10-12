import UIKit


enum Operation {
    case completed
    case pending
}

struct Task {
    var titel : String
    var time :Int
    var comment : String
    var operation : Operation
    
    mutating func editTask (  newTitel: String ,newtime: Int , newcomment : String , newOperation : Operation ){
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
        print("added Done")
    }
}
class Remainder {
    var lists : [List] = []
    
    func filterList(list: List){
        list.items.filter({ return $0.operation == .completed})
    }

//    func deletItem (index : Int ){
//        lists[Task].remove(at: 0)
//        print("removed Done",lists.count)
//   }
//    func getTask(byId: Int) ->Task? {
//        let task = theList.first { $0.time == byId }
//            return (task)
//    }
//    func readItme() {
//        print ("INformation List : \(theList)")
//    }
//}
}

var T1 = Task( titel: "Go To Work",time: 8, comment: "print The New Document With You",  operation: .completed)
var T2 = Task( titel: "Break Lunch",time: 12, comment: "call your frind Ahmed", operation: .pending)
var T3 = Task( titel: "GYM",time: 20, comment: "Take Your Supplements",  operation: .completed)

var T4 = Task( titel: "Meeting",time: 10, comment: "you have a meeting today With sami",  operation: .completed)
var T5 = Task( titel: "My Car",time: 18, comment: "wach you car", operation: .pending)
var T6 = Task( titel: "GYM",time: 21, comment: "Take Your Supplements",  operation: .completed)

var T7 = Task( titel: "Fligh",time: 6, comment: "trip to italy",  operation: .completed)
var T8 = Task( titel: "driver",time: 12, comment: "0545455 his phonenumber", operation: .completed)
var T9 = Task( titel: "restaurant reservation",time: 20, comment: "Don't forget to order a margarita",  operation: .completed)

var myLists = Remainder()

myLists.lists.append(List(title: "Day1", items: [ T1,T2,T3]))
myLists.lists.append(List(title: "Day2", items: [ T4,T5,T6]))
myLists.lists.append(List(title: "Day3", items: [ T7,T8,T9]))
print(myLists.lists[0])

myLists.lists[0].items.remove(at: 0)
//myLists.deletItem(index: 0)

for list in myLists.lists {
    print("List Title: \(list.title) (\(list.items.count))")
}





//mylist.readItme()
//var editableTask = mylist.getTask(byId: 01)
//editableTask?.editTask(newId: 02, newTitel: "Dohor", newDay: "sunday", newTime: "1pm", newOperation: .completed)
//print(editableTask ?? "not Found")
//print(mylist)
//mylist.filterItem()

//var myLists = Remainder()
//myLists.lists.append(List(title: "Work"))
//myLists.lists[0].addItem(newItem: Task(time: 6, titel: "you", comment: "hello",  operation: .completed))
//myLists.deletItem(index: 0)

//for list in myLists.lists {
//    print("List Title: \(list.title) (\(list.items.count)")
//}



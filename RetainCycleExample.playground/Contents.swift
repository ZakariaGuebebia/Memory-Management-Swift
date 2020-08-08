import Foundation

/* These two classes have a strong reference to each other.
 Run this Playground. The deinit functions will NOT run
 because there is a retain cycle happening here.*/

class Person {
    var car: Car?
    
    deinit {
        print ("Deallocating Person")
    }
}

class Car {
    var owner: Person?
    
    deinit {
        print ("Deallocating Car")
    }
}

var zack: Person? = Person()
var maserati: Car? = Car()

zack?.car = maserati
maserati?.owner = zack

zack = nil
maserati = nil

var steps = 0
/*func addstep(){
 steps += 1
 print(steps)
 }*/

func addstep(value: inout Int){
    value += 1
    print(value)
}

addstep(value: &steps)
addstep(value: &steps)
addstep(value: &steps)
addstep(value: &steps)

/*:
 Similarly, if you want to regularly provide progress updates to your user, you can put your control flow statements that check on progress into a function. Write a function called `progressUpdate` after the declaration of `goal` below. The function should print "You're off to a good start." if `steps` is less than 10% of `goal`, "You're almost halfway there!" if `steps` is less than half of `goal`, "You're over halfway there!" if `steps` is less than 90% of `goal`, "You're almost there!" if `steps` is less than `goal`, and "You beat your goal!" otherwise. Call the function and observe the printout. Remember, you can convert numbers using the appropriate Int or Double initializer.
 */
let goal = 10000
func progressUpdate(usersteps:Int, goalsteps:Int){
    let completion = (Float(usersteps) / Float(goalsteps)) * 100
    
    if completion < 10{
        print("get good kid")
    }else if completion < 50{
        print("almost half good kid")
    }else if completion < 90{
        print("more than half good kid")
    }else if completion < 100{
        print("good almost gotten")
    }else{
        print("you got good kid")
    }
}

progressUpdate(usersteps: 69990, goalsteps: goal)
//: [Previous](@previous)  |  page 2 of 6  |  [Next: Exercise - Parameters and Argument Labels](@next)

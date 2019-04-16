/*:
 ## Exercise - Return Values and Tuples
 
 Write a function called `greeting` that takes a `String` argument called name, and returns a `String` that greets the name that was passed into the function. I.e. if you pass in "Dan" the return value might be "Hi, Dan! How are you?" Use the function and print the result.
 */
func introduction(_ name:String) -> String{
    let greeting = "Yo what's gwanning \(name)"
    return greeting
}
let slang = introduction("dylan")
print(slang)

/*:
 Write a function that takes two `Int` arguments, and returns an `Int`. The function should multiply the two arguments, add 2, then return the result. Use the function and print the result.
 */
func multiply(_ int1: Double, by int2: Double) -> Double{
    let result = int1*int2 + 2
    return result
    
}
var multiplication = multiply(5, by: 5)
print(multiplication)

//: [Previous](@previous)  |  page 5 of 6  |  [Next: App Exercise - Separating Functions](@next)

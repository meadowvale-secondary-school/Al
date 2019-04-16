/*:
 ## Exercise - Parameters and Argument Labels
 
 Write a new introduction function called `introduction`. It should take two `String` parameters, `name` and `home`, and one `Int` parameter, `age`. The function should print a brief introduction. I.e. if "Mary," "California," and 32 were passed into the function, it might print "Mary, 32, is from California." Call the function and observe the printout.
 */
func introduction(name: String, home:String, age: Int){
    print("Yo what's gwanning \(name), I heard you're \(age) now. You should move to the 6, \(home) doesn't have has many soundcloud rappers ")
}
introduction(name: "Nicole", home: "Mississauga", age: 17)
/*:
 Write a function called `almostAddition` that takes two `Int` arguments. The first argument should not require an argument label. The function should add the two arguments together, subtract 2, then print the result. Call the function and observe the printout.
 */
func almostAddition(_ int1: Int, int2: Int){
    let result:Int = int1 + int2 - 2
    print(result)

}
almostAddition(5, int2: 5)
/*:
 Write a function called `multiply` that takes two `Double` arguments. The function should multiply the two arguments and print the result. The first argument should not require a label, and the second argument should have an external label, "by", that differs from the internal label. Call the function and observe the printout.
 */
func multiply(_ int1: Double, by int2: Double){
    let result = int1*int2
    print(result)
    
}
multiply(5, by: 5)

//: [Previous](@previous)  |  page 3 of 6  |  [Next: App Exercise - Progress Updates](@next)

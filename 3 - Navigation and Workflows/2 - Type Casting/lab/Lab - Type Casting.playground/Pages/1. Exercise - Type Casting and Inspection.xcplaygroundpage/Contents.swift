/*:
 ## Exercise - Type Casting and Inspection
 
 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
var list1: [Any] = ["",true,37,"dsds",4.4,3,false,999.999]
print(list1)
/*:
 Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
 */
for item in list1{
    if let num = item as? Int{
        print("The integer has a value of \(num)")
    }
    if let str = item as? String{
        print("The string has a value of \(str)")
    }
    if let deci = item as? Double{
        print("The double has a value of \(deci)")
    }
    if let boolean = item as? Bool{
        print("The boolean has a value of \(boolean)")
    }
}

/*:
 Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
 */
let dictionary1: [String:Any] = ["a": "ah", "b": 2, "c": false, "d": 3.1]
for (key,value) in dictionary1{
    print("Key: \(key) \nValue: \(value)\n")
}
/*:
 Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
 */
var total:Double = 0

for (key,value) in dictionary1{
    if let num = value as? Int{
        total += Double(num)
    }
    if let deci = value as? Double{
        total += deci
    }
    if let boolean = value as? Bool {
        if boolean {
            total += 2
        } else {
            total -= 3
        }
    }
}
 print(total)
/*:
 Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
 */
var total2:Double = 0
for (key,value) in dictionary1{
    if let num = value as? Int{
        total2 += Double(num)
    }
    if let deci = value as? Double{
        total2 += deci
    }
    if let str = value as? String{
        if let strnum = Double(str){
            total += Double(strnum)
        }
    }
}

//: page 1 of 2  |  [Next: App Exercise - Workout Types](@next)

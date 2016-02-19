import Regex

let greeting = Regex("hello (world|universe)")
if greeting.matches("hello universe!") {
    print("wow, you're friendly")
}

let a = Regex("a", options: .IgnoreCase)
let b = a.allMatches("aA").map { $0.matchedString } 
print("\(b)")


let parens = Regex("()", options: .IgnoreMetacharacters)
let parensMatch = parens.matches("()") 
print("\(parensMatch)")


let foo = Regex("^foo", options: .AnchorsMatchLines)
let results = foo.allMatches("foo\nbar\nfoo\n")

for m in results {
    print("\(m.matchedString)")
}
 



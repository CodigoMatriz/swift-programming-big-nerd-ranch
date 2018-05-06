//: Playground - noun: a place where people can play

import Cocoa

var statusCode: Int = 404


/*
 * 5.1 Matching an error string to a status code
 */

var errorString: String
switch statusCode {
case 400:
    errorString = "Bad Request"

case 401:
    errorString = "Not Authorized"

case 403:
    errorString = "Forbidden"

case 404:
    errorString = "Not Found"

default:
    errorString = "None"
}


/*
 * 5.2 Swtich cases can have multiple values
 */

errorString = "The request failed"
switch statusCode {
case 400, 401, 403, 404:
    errorString = "There was something wrong with the request."
    fallthrough // This command makes it so that the next case is triggered, it "falls through"

    // In other languages, you would have to add a break control statement
    // to stop the switch statemnet from automatically falling through.
    // Swift is the opposite, it breaks on match and must explicilty declare a fallthrough
default:
    errorString += " Please review the request and try again."
}


/*
 * 5.3 Switch cases can have single values, multiple values, or ranges of values
 */

errorString = "The request failed with the error:"
switch statusCode {
case 100, 101:
    errorString += " Informational, 1xx"
case 204:
    errorString += " Successful but no content, 204"
case 300...307: // Using the ellipses (...), triggers the syntax to range match
    errorString += " Redirection 3xx"
case 400...417:
    errorString += " Client error, 4xx"
case 500...505:
    errorString += " Server error, 5xx"
default:
    errorString = "Unknown. Please review the request and try again"
}


/*
 * 5.4 Using value binding
 */

errorString = "The request failed with the error:"
switch statusCode {
case 100, 101:
    errorString += " Informational, \(statusCode)"
case 204:
    errorString += " Successful but no content, \(statusCode)"
case 300...307: // Using the ellipses (...), triggers the syntax to range match
    errorString += " Redirection \(statusCode)"
case 400...417:
    errorString += " Client error, \(statusCode)"
case 500...505:
    errorString += " Server error, \(statusCode)"
case let unknownCode: // Create temporary constant that takes the value of the expression
    errorString = "\(unknownCode) is not a known error code."
}


/*
 * 5.5 Reverting to the default case
 */

errorString = "The request failed with the error:"
switch statusCode {
case 100, 101:
    errorString += " Informational, \(statusCode)"
case 204:
    errorString += " Successful but no content, \(statusCode)"
case 300...307: // Using the ellipses (...), triggers the syntax to range match
    errorString += " Redirection \(statusCode)"
case 400...417:
    errorString += " Client error, \(statusCode)"
case 500...505:
    errorString += " Server error, \(statusCode)"
default:
    errorString = "\(statusCode) is not a known error code."
}


/*
 * 5.6 Using where to create a filter
 */
statusCode =  200
errorString = "The request failed with the error:"
switch statusCode {
case 100, 101:
    errorString += " Informational, \(statusCode)"
case 204:
    errorString += " Successful but no content, \(statusCode)"
case 300...307: // Using the ellipses (...), triggers the syntax to range match
    errorString += " Redirection \(statusCode)"
case 400...417:
    errorString += " Client error, \(statusCode)"
case 500...505:
    errorString += " Server error, \(statusCode)"
case let unknownCode where (unknownCode >= 200 && unknownCode < 300) || unknownCode > 505:
    errorString = "\(unknownCode) is not a known error code."
default:
    errorString = "Unexpected error encountered."
}


/*
 * 5.7 Creating a tuple
 * Grouping two or more values that the developer considers to be logically related
 * The values are grouped as a single, coumpoung variable; resulting in an ordered list of elements
 */

statusCode =  418
errorString = "The request failed with the error:"
switch statusCode {
case 100, 101:
    errorString += " Informational, \(statusCode)"
case 204:
    errorString += " Successful but no content, \(statusCode)"
case 300...307: // Using the ellipses (...), triggers the syntax to range match
    errorString += " Redirection \(statusCode)"
case 400...417:
    errorString += " Client error, \(statusCode)"
case 500...505:
    errorString += " Server error, \(statusCode)"
case let unknownCode where (unknownCode >= 200 && unknownCode < 300) || unknownCode > 505:
    errorString = "\(unknownCode) is not a known error code."
default:
    errorString = "Unexpected error encountered."
}

let error = (statusCode, errorString);

/*
 * 5.8 Accessing the elements of a tuple
 */
error.0
error.1


/*
 * 5.9 Naming tuple's elements
 */

statusCode =  418
errorString = "The request failed with the error:"
switch statusCode {
case 100, 101:
    errorString += " Informational, \(statusCode)"
case 204:
    errorString += " Successful but no content, \(statusCode)"
case 300...307: // Using the ellipses (...), triggers the syntax to range match
    errorString += " Redirection \(statusCode)"
case 400...417:
    errorString += " Client error, \(statusCode)"
case 500...505:
    errorString += " Server error, \(statusCode)"
case let unknownCode where (unknownCode >= 200 && unknownCode < 300) || unknownCode > 505:
    errorString = "\(unknownCode) is not a known error code."
default:
    errorString = "Unexpected error encountered."
}

let error_named_indices = (code: statusCode, error: errorString);
error_named_indices.code
error_named_indices.error


/*
 * 5.10 Pattern matching in tuples
 */

let firstErrorCode = 404
let secondErrorCode = 200
let errorCodes = (firstErrorCode, secondErrorCode)

switch errorCodes {
case (404, 404):
    print("No items found.")
case (404, _): // The _ used is a wildcard, which will return true for any value
    print("First item not found")
case (_, 404):
    print("Second item not found")
default:
    print("All items found")
}


/*
 * 5.11 Single-case switch
 */

let age = 25
switch age {
case 18...35:
    print("Cool demographic")
default:
    break;
}


/*
 * 5.12 if-case
 */

if case 18...35 = age {
    print("Cool demographics")
}


/*
 * 5.12 if-case with multiple conditions
 */

if case 18...35 = age, age >= 21 {
    print("In cool demographic and of drinking age")
}

// Result Keyword

// Using Result in Swift 5

/*
Refactor: Restructure (the source code of an application or piece of software)
so as to improve operation without altering functionality.

Asynchronously: Not existing or occuring at the same time.
*/

/*
If your code runs asynchronously, you can't just throw an error and force 
the initiator of the asynchronous work to handle this error. Consider the 
following non-functional example:
*/

/*
In function signature:
"loadData" - function name
"from" - Custom argument label
"url" and "completion" - Parameter name
"(Data?) -> Void" - Closure
*/

/*
func loadData(from url: URL, completion: (Data?) -> Void) throws {
  //Trailing closure passed here as the data task's completion handler.  
  URLSession.shared.dataTask(with: url) { data, response, error in
    if let error = error {
      throw error
    }

    if let data = data {
      completion(data)
    }
  }.resume()
}
*/

/*
Swift won't compile this code because the closure that's passed as 
the data task's completion handler isn't marked as throwing, this 
code doesn't make a ton of sense. Let's examine what the call site 
for this code would potentially look like:
*/

/*
do {
  try loadData(from: aURL) { data in
    print("fetched data")
  }

  print("This will be executed before any data is fetched from the network.")
} catch {
  print(error)
}
*/

/*
This isn't useful at all. The idea of using try and throwing errors is 
that the code in the do block immediately moves to the catch when an 
error occurs. Not that all code in the do is executed before any errors 
are thrown, because the data task in loadData(from:completion:) runs 
asynchronously. In reality, the error that's potentially thrown in the 
data task's completion handler never actually makes it out of the 
completion handler's scope. So to summarize this paragraph, it's safe 
to say that errors thrown in an asynchronous environment never make it 
to the call-site.

Because of this, Swift's error throwing doesn't lend itself very well 
for asynchronous work. Luckily, that's exactly where Swift's Result type 
shines.
*/


/*
A Result in Swift is an enum with a success and failure case. 
Each has an associated value that will hold either the success 
value or an error if the result is a failure.

Let's look at Result's definition real quick:
*/

/*

/// A value that represents either a success or a failure, including an
/// associated value in each case.
@frozen
public enum Result<Success, Failure: Error> {
  /// A success, storing a `Success` value.
  case success(Success)

  /// A failure, storing a `Failure` value.
  case failure(Failure)
}

*/


// Let's refactor that data task from before using Result so it compiles 
// and can be used:

/*

/*
"loadData" - function name
"from" - custom argument label in function signature.
"url" and "completion" - parameter name
"URL" - Data Type
"(Result<Data?, URLError>) -> Void" - closure in the function signature.
"Result<Data?, URLError>" - Passing Result object to closure in function signature.
Here, Result object in function signature can pass one or two values as one
parameter "Data" is optional.
*/
func loadData(from url: URL, completion: (Result<Data?, URLError>) -> Void) throws {
  /*
  "dataTask" calling such function which has closure as last parameter.
  The function which is called by "dataTask" that will return these 
  three values "data, response, error" to the closure.
  */
  URLSession.shared.dataTask(with: url) { data, response, error in
    if let urlError = error as? URLError {
      /*
      Here, "dataTask" running asynchronously when throws error, the error
      is returned to closure through "Result" object.
      */
      completion(.failure(urlError))
    }

    if let data = data {
      completion(.success(data))
    }
  }.resume()
}

/*
The closure has been passed separately during function call because
the function has closure as last parameter in the function signature.
*/
loadData(from: aURL) { result in
  // we can use the result here
}

*/


/*
-we can now communicate errors in a clean manner to callers of 
loadData(from:completion:).
-Because Result is an enum, Result objects are created using dot syntax.
-The full syntax here would be Result.failure(urlError) and Result.success(data).
-Because Swift knows that you're calling completion with a Result, 
you can omit the Result enum.
-Because the completion closure in this code takes a single Result argument, 
we can express the result of our work with a single object.
-This is convenient because this means that we don't have to check for both 
failure and success.
-And we also make it absolutely clear that a failed operation can't also 
have a success value.
*/

/*
enum ConversionFailure: Error {
  case invalidData
}

func convertToImage(_ data: Data, completionHandler: @escaping (Result<UIImage, ConversionFailure>) -> Void) {
  DispatchQueue.global(qos: .userInitiated).async {
    if let image = UIImage(data: data) {
      completionHandler(.success(image))
    } else {
      completionHandler(.failure(ConversionFailure.invalidData))
    }
  }
}
*/

/*
-In this code, I've defined a completion handler that takes 
Result<UIImage, ConversionFailure> as its single argument.
-Note that the ConversionFailure enum conforms to Error.
-All failure cases for Result must conform to this protocol.
-The function I defined takes data and a completion handler.  
-Because converting data to an image might take some time, 
this work is done off the main thread using 
DispatchQueue.global(qos: .userInitiated).async. 
-If the data is converted to an image successfully, the completion 
handler is called with .success(image) to provide the caller with 
a successful result that wraps the converted image. 
-If the conversion fails, the completion handler is called with 
.failure(ConversionFailure.invalidData) to inform the caller about 
the failed image conversion.
*/

//Calling code that uses Result
/*
Similar to how you need to do a little bit of work to extract a value 
from an optional, you need to do a little bit of work to extract the 
success or failure values from a Result.
*/

/*
let invalidData = "invalid!".data(using: .utf8)!
convertToImage(invalidData) { result in
  switch result {
  case .success(let image):
    print("we have an image!")
  case .failure(let error):
    print("we have an error! \(error)")
  }
}
*/

/*
This example uses a switch and Swift's powerful pattern maching capabilities 
to check whether result is .success(let image) or .failure(let error). 
Another way of dealing with a Result is using its built in get method:
*/

/*
let invalidData = "invalid!".data(using: .utf8)!
convertToImage(invalidData) { result in
  do {
    let image = try result.get()
    print("we have an image!")
  } catch {
    print("we have an error \(error)")
  }
}
*/

/*
The get method that's defined of Result is a throwing method. If the result 
is successful, get() will not throw an error and it simply returns the 
associated success value. In this case that's an image. If the result isn't 
success, get() throws an error. The error that's thrown by get() is the 
associated value of the Result object's .failure case.


Both ways of extracting a value from a Result object have a roughly equal 
amount of code, but if you're not interested in handling failures, the 
get() method can be a lot cleaner:
*/

/*
convertToImage(invalidData) { result in
  guard let image = try? result.get() else {
    return
  }

  print("we have an image")
}
*/

/*
In addition to extracting results from Result, you can also map over it 
to transform a result's success value:
*/

/*
convertToImage(invalidData) { result in
  let newResult = result.map { uiImage in
    return uiImage.cgImage
  }
}
*/

/*
When you use map on a Result, it creates a new Result with a different 
success type. In this case, success is changed from UIImage to CGImage. 
It's also possible to change a Result's error:
*/

/*
struct WrappedError: Error {
  let cause: Error
}

convertToImage(invalidData) { result in
  let newResult = result.mapError { conversionFailure in
    return WrappedError(cause: conversionFailure)
  }
}
*/

/*
This example changes the result's error from ConversionError to WrappedError 
using mapError(_:).

There are several other methods available on Result, but I think this should 
set you up for the most common usages of Result. That said, I highly recommend 
looking at the documentation for Result to see what else you can do with it.
*/

/*
The errors thrown in an asynchronous environment never make it to the call-site 
(The statement that called the function).

Because of this, Swift's error throwing doesn't lend itself very well for 
asynchronous work. Luckily, that's exactly where Swift's Result type shines.
*/

/*
A Result in Swift is an enum with a success and failure case.

Each has an associated value that will hold either the success value 
or an error if the result is a failure.
*/


/*
@frozen
public enum Result<Success, Failure: Error> {
  /*
  "success" is an enum case and "Success" is a
  type of associated value.
  */
  case success(Success)

  /*
  "failure" is an enum case and "Failure" is a
  type of associated value.
  */
  case failure(Failure)
}
*/

/*
func loadData(from url: URL, completion: (Result<Data?, URLError>) -> Void) throws {
  URLSession.shared.dataTask(with: url) { data, response, error in
    if let urlError = error as? URLError {
      /*
      -Result is an enum, Result objects are created using dot syntax.
      The full syntax here would be Result.failure(urlError) and Result.success(data).
      Because Swift knows that you're calling completion with a Result, 
      you can omit the Result enum.
      -And we also make it absolutely clear that a failed operation can't 
      also have a success value. 
      */
      completion(.failure(urlError))
    }

    if let data = data {
      completion(.success(data))
    }
  }.resume()
}

/*
-We can now communicate errors in a clean manner to callers of 
loadData(from:completion:).
-Because the completion closure in this code takes a single Result argument, 
we can express the result of our work with a single object.
-This is convenient because this means that we don't have to check for 
both failure and success.
*/
loadData(from: aURL) { result in
  // we can use the result here
}
*/

//--------------------------------------------------------------------------------------------------

/*

//All failure cases for Result must conform to Error protocol.

public enum Result<Success, Failure: Error> {
  /*"success" is an enum case or "Result" object and
  "Success" is a type of associated value.
  */
  case success(Success)

  /*"failure" is an enum case or "Result" object and
  "Failure" is a type of associated value.
  */
  case failure(Failure)
}

*/

/*

/*
-We have created "ConversionFailure" enum to define it as
the associated value for "failure" case.
-The ConversionFailure enum conforms to Error. 
*/
enum ConversionFailure: Error {
  case invalidData
}

*/


/*

/*
-"func" keyword to define function
-"convertToImage" - Function name
-"_" in function signature - The underscore before parameter name is called no argument label.
It means to pass the argument to data, no argument label is required.
-"data" and "completionHandler" - Parameter name
-"Data" - It is data type.
-"(Result<UIImage, ConversionFailure>) -> Void" : Closure
-"Result<UIImage, ConversionFailure>" : Passing "Result" object to closure.
-"UIImage" : Type of the image which holds the success value of Result.
-"ConversionFailure" : Type of the error which holds the failure value of Result.
-"completionHandler" in the function signature that takes Result<UIImage, ConversionFailure> 
as its single argument. 
-The function defined takes data and a completionHandler. 
*/
func convertToImage(_ data: Data, completionHandler: @escaping (Result<UIImage, ConversionFailure>) -> Void) 
{
  /*
  -Converting data to an image might take some time, this work is done off the main thread 
  using DispatchQueue.global(qos: .userInitiated).async.
  */
  DispatchQueue.global(qos: .userInitiated).async {
    
    /*
    If the data is converted to an image successfully, the completion handler is called 
    with .success(image) to provide the caller with a successful result that wraps the 
    converted image.
    */
    if let image = UIImage(data: data) {
      //"image": It is associated value for enum case "success" of enum Result.
      completionHandler(.success(image))
    } 
    /*
    If the conversion fails, the completion handler is called with .failure(ConversionFailure.invalidData) 
    to inform the caller about the failed image conversion.
    */
    else 
    {
      //"ConversionFailure.invalidData": It is associated value for enum case "failure" of enum Result.
      completionHandler(.failure(ConversionFailure.invalidData))
    }
  }
}

*/


/*

let invalidData = "invalid!".data(using: .utf8)!
//"result" parameter in the trailing closure hold any one "Result" enum object i.e. "success" or "failure".
convertToImage(invalidData) { result in
  /*
  This example uses a switch and Swift's powerful pattern maching capabilities to 
  check whether result is .success(let image) or .failure(let error).
  */
  switch result {
  case .success(let image):
    print("we have an image!")
  case .failure(let error):
    print("we have an error! \(error)")
  }
}


*/


/*

//Another way of dealing with a Result is using its built in get method:

let invalidData = "invalid!".data(using: .utf8)!
convertToImage(invalidData) { result in
  do {
    /*
    -The get method that's defined of Result is a throwing method.
    -If the result is successful, get() will not throw an error and 
    it simply returns the associated success value. In this case that's an image. 
    -If the result isn't success, get() throws an error. The error that's thrown by 
    get() is the associated value of the Result object's .failure case.
    */
    let image = try result.get()
    print("we have an image!")
  } catch {
    print("we have an error \(error)")
  }
}

*/


//If you're not interested in handling failures, the get() method can be a lot cleaner:

/*
convertToImage(invalidData) { result in
  guard let image = try? result.get() else {
    return
  }

  print("we have an image")
}
*/

//---------------------------------------------------------------------------------------------

/*
In addition to extracting results from Result, you can also map over it 
to transform a result's success value:
*/

/*
convertToImage(invalidData) { result in
  let newResult = result.map { uiImage in
    return uiImage.cgImage
  }
}
*/

/*
When you use map on a Result, it creates a new Result with a different success type. 
In this case, success is changed from UIImage to CGImage. It's also possible to 
change a Result's error:
*/

/*
struct WrappedError: Error {
  let cause: Error
}

convertToImage(invalidData) { result in
  let newResult = result.mapError { conversionFailure in
    return WrappedError(cause: conversionFailure)
  }
}
*/

//This example changes the result's error from ConversionError to WrappedError using mapError(_:).

//---------------------------------------------------------------------------------------------

//Wrapping a throwing function call in a Result type.

/*
There is a cool way to initialize a Result with a throwing function call with the 
Result(catching:) initializer of Result. Let's look at an example of how this can 
be used in a network call:
*/

/*

/*
Result<MyModel, Error> : "MyModel" and "Error" are types of associated values of
"success" and "failure" enum case. 
*/
func loadData(from url: URL, _ completion: @escaping (Result<MyModel, Error>) -> Void) {
  URLSession.shared.dataTask(with: url) 
  /* 
  -Trailing closure passed to "dataTask" function.
  -Closure is like a function without "func" keyword and function name.
  So, here "data, response, error" are parameters in closure like function.
  */
  { 
    data, response, error in
    guard let data = data else 
    {
      if let error = error 
      {
        completion(.failure(error))
        return
      }

      fatalError("Data and error should never both be nil")
    }

    let decoder = JSONDecoder()

    /*
    The Result(catching:) initializer takes a closure. 
    Any errors that are thrown within that closure are 
    caught and used to create a Result.failure. 

    If no errors are thrown in the closure, 
    the returned object is used to create a Result.success.
    */
    let result = Result
    //Result initialiser
    (
      //Result initialiser has catching parameter so here catching used as argument label.
      catching: 
      //The closure is passed to Result initialiser.
      {
        try decoder.decode(MyModel.self, from: data)
      }
    )

    completion(result)
  }
}

*/

/*
Link for Result keyword:

https://www.donnywals.com/using-result-in-swift-5/#:~:text=A%20Result%20in%20Swift%20is%20an%20enum%20with,Let%27s%20look%20at%20Result%20%27s%20definition%20real%20quick%3A
*/

//---------------------------------------------------------------------------------------------
var language = "Swift"
var firstRelease: Int? = 2014
var website: String? = "swift.org"
var designer: String? = "Chris Lattner"
var shouldDisplayMessage = true

// Refactor the code below to use a single if let statement

if let firstRelease = firstRelease,
  let website = website,
  let designer = designer,
  shouldDisplayMessage {
                let message = 
                    """
                    \(language) was first released in \(firstRelease).  
                    Its website can be found at \(website).
                    It was designed by \(designer).
                    """
                print(message)
                }

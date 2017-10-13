enum ServerResponse {
    case result(String, String)
    case failure(String)
}
 
let success = ServerResponse.result("6:00 am", "8:09 pm")
let failure = ServerResponse.failure("Out of cheese.")
 
switch success {
case let .result(sunris, sunset):
    print("Sunrise is at \(sunris) and sunset is at \(sunset).")
case let .failure(message):
    print("Failure...  \(message)")
}

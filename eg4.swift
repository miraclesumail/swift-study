func submit() {
    guard let name = nameField.text else {
        show("No name to submit")
        return
    }

    guard let address = addressField.text else {
        show("No address to submit")
        return
    }

    guard let phone = phoneField.text else {
        show("No phone to submit")
        return
    }

    sendToServer(name, address: address, phone: phone)
}

func sendToServer(name: String, address: String, phone: String) {
  ...
}

guard let name = nameField.text where name.characters.count > 3 && name.characters.count <= 16, 
let range = name.rangeOfCharacterFromSet(NSCharacterSet.whitespaceAndNewlineCharacterSet()) 
where range.startIndex == range.endIndex else {
    show("name failed validation")
    return
}
// 判断name的长度是否在 3-16之间  并且没有空格

submit(name)

func tappedSubmitButton() {
    guard let name = nameField.text where isValid(name) else {
        show("name failed validation")
        return
    }

    submit(name)
}

func isValid(name: String) -> Bool {
    // check the name is between 4 and 16 characters
    if !(4...16 ~= name.characters.count) {
        return false
    }

    // check that name doesn't contain whitespace or newline characters
    let range = name.rangeOfCharacterFromSet(.whitespaceAndNewlineCharacterSet())
    if let range = range where range.startIndex != range.endIndex {
        return false
    }

    return true
}

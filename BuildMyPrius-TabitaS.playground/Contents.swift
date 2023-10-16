/* create a playground that allows users to select the model, color, packages and accessories of the Toyota Prius */
class Car {
    var model = ""
    var color = ""
    var packages: [String] = []
    var accessories: [String] = []

    func customize(model: String, color: String, packages: [String], accessories: [String]) {
        self.model = model
        self.color = color
        self.packages = packages
        self.accessories = accessories
    }

    func viewDetails() {
        print("Model: \(model)")
        print("Color: \(color)")
        print("Packages: \(packages)")
        print("Accessories: \(accessories)")
    }
}

// Create instances of the Car class
let prius1: Car = Car()
let prius2: Car = Car()

// Customize prius1 and prius2
prius1.customize(model: "Prius 2016 LE", color: "Blue", packages: ["Tech Package: TOP MOUNT MULTI INFORMATION DISPLAY", "Safety Package:BLINDSPOT MONITOR WITH CROSS TRAFFIC ALERT"], accessories: ["Floor Mats", "Roof Rack"])
prius2.customize(model: "Prius 2016 AWD", color: "White", packages: ["Tech Package: 7-inch LCD - TOUCHSCREEN, SIX SPEAKERS, WITH WIRELESS APPLE CARPLAY"], accessories: [" HYBRID SYSTEM NET POWER: 196 hp"])

// Display specifications and details for prius1
print("Prius 2016 LE has the following specifications:")
prius1.viewDetails()

// Display specifications and details for prius2
print("\nPrius 2016 AWD the following specifications:")
prius2.viewDetails()

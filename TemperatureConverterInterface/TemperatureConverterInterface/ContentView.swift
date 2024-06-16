import SwiftUI

struct ContentView: View {
    @State private var celsius: String = ""
    @State private var fahrenheit: String = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Temperature Conversor")
                .font(.title)
                .fontWeight(.bold)
                .padding(10)
            
            TextField("Enter the temperature in Celsius", text: $celsius)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(10)
                .keyboardType(.decimalPad)
            
            Button(action: convertTemperature) {
                Text("Convert")
                    .font(.title2)
                    .padding(10)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(15)
            }
            
            Text(fahrenheit)
                .font(.title)
                .padding()
        }
        .padding()
    }
    
    func convertTemperature() {
        if let celsiusValue = Double(celsius) {
            let fahrenheitValue = (celsiusValue * 9 / 5) + 32
            fahrenheit = "\(fahrenheitValue)ºF"
        } else {
            fahrenheit = "Please enter a valid value."
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

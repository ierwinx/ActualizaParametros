import SwiftUI

struct Vista1: View {
    
    @State var incremento = 0
    
    var body: some View {
        VStack {
            Text("El valor es \(incremento)").padding()
            
            Button("Incrementar") {
                incremento += 1
            }
            .padding(.top, 15)
            .padding(.bottom, 15)
            .padding(.trailing, 40)
            .padding(.leading, 40)
            .foregroundColor(.red)
            .overlay(RoundedRectangle(cornerRadius: 25)
                     .stroke(Color.red, lineWidth: 2))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Vista1().previewDevice("iPhone 13 mini")
    }
}

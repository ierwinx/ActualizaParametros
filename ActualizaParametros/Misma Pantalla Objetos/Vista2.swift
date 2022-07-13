import SwiftUI

struct Vista2: View {
    
    @StateObject var usuario = Usuario()
    
    var body: some View {
        VStack {
            Text("Hello, \(usuario.miNombre)! tienes \(usuario.miEdad) años")
            
            TextField("Nombre", text: $usuario.miNombre)
                .padding()
                .textFieldStyle(.roundedBorder)
            
            TextField("Edad", value: $usuario.miEdad, formatter: NumberFormatter())
                .padding()
                .textFieldStyle(.roundedBorder)
                .keyboardType(UIKeyboardType.decimalPad)
            
            Spacer()
                        
        }
    }
}

struct Vista2_Previews: PreviewProvider {
    static var previews: some View {
        Vista2()
    }
}

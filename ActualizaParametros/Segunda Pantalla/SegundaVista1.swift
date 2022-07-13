import SwiftUI

struct SegundaVista1: View {
    
    @Binding var nombre: String
    @Binding var edad: Int
    
    var body: some View {
        VStack {
            Text("Datos Usuario")
            
            TextField("Nombre", text: $nombre)
                .padding()
                .textFieldStyle(.roundedBorder)
            
            TextField("Edad", value: $edad, formatter: NumberFormatter())
                .padding()
                .textFieldStyle(.roundedBorder)
                .keyboardType(UIKeyboardType.decimalPad)

            Spacer()
            
            Button("Cambiar información") {
                nombre = nombre
                edad = edad
            }
            .padding()
            .foregroundColor(.white)
            .background(.black)
            
            Text("")
                .padding(.top, 10)
        }
    }
}

struct SegundaVista1_Previews: PreviewProvider {
    static var previews: some View {
        SegundaVista1(nombre: .constant("Erwin"), edad: .constant(30))
    }
}

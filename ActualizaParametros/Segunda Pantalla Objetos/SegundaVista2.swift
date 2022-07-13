import SwiftUI

struct SegundaVista2: View {
    
    @ObservedObject var usuario: Usuario
    
    var body: some View {
        VStack {
            Text("")
            
            TextField("Nombre", text: $usuario.miNombre)
                .padding()
                .textFieldStyle(.roundedBorder)
            
            TextField("Edad", value: $usuario.miEdad, formatter: NumberFormatter())
                .padding()
                .textFieldStyle(.roundedBorder)
                .keyboardType(UIKeyboardType.decimalPad)

            Spacer()
            
            Button("Cambiar información") {
                usuario.miNombre = usuario.miNombre
                usuario.miEdad = usuario.miEdad
            }
            .padding()
            .foregroundColor(.white)
            .background(.black)
            
            Text("")
                .padding(.top, 10)
        }
        .navigationTitle("Datos Usuario")
    }
}

struct SegundaVista2_Previews: PreviewProvider {
    static var previews: some View {
        SegundaVista2(usuario: Usuario())
    }
}

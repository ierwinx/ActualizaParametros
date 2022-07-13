import SwiftUI

struct TerceraVista3: View {
    
    @EnvironmentObject var usuario: Usuario
    
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
                usuario.miNombre = "Erwin Luz Leon"
                usuario.miEdad = 31
            }
            .padding()
            .foregroundColor(.white)
            .background(.red)
            
            Text("")
                .padding(.top, 10)

        }
        .navigationTitle("Vista 3")
    }
}

struct TerceraVista3_Previews: PreviewProvider {
    static var previews: some View {
        TerceraVista3().environmentObject(Usuario())
    }
}

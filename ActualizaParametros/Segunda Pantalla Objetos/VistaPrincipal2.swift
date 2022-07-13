import SwiftUI

struct VistaPrincipal2: View {
    
    @StateObject var usuario = Usuario()
    @State var iSelection: Int?
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Hello, \(usuario.miNombre)! tienes \(usuario.miEdad) años")
                
                Spacer()
                
                NavigationLink(destination: SegundaVista2(usuario: usuario), tag: 1, selection: $iSelection) {
                    Button("Editar") {
                        iSelection = 1
                    }
                    .padding(.top, 15)
                    .padding(.bottom, 15)
                    .padding(.trailing, 40)
                    .padding(.leading, 40)
                    .foregroundColor(.white)
                    .background(.red)
                }
                
                Text("").padding(.top, 10)
            }
            .navigationTitle("Pase de datos")
        }
    }
}

struct VistaPrincipal2_Previews: PreviewProvider {
    static var previews: some View {
        VistaPrincipal2()
    }
}

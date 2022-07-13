import SwiftUI

struct VistaPrincipal3: View {
    
    @EnvironmentObject var usuario: Usuario
    @State var iSelection: Int?
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Hello, \(usuario.miNombre)! tienes \(usuario.miEdad) años")
                
                NavigationLink(destination: SegundaVista3(), tag: 1, selection: $iSelection) {
                    Button("Vista 2") {
                        iSelection = 1
                    }
                    .padding(.top, 15)
                    .padding(.bottom, 15)
                    .padding(.trailing, 40)
                    .padding(.leading, 40)
                    .foregroundColor(.white)
                    .background(.red)
                }
                
            }
            .navigationTitle("Vista 1")
        }
    }
}

struct VistaPrincipal3_Previews: PreviewProvider {
    static var previews: some View {
        VistaPrincipal3().environmentObject(Usuario())
    }
}

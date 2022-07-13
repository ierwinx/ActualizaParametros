import SwiftUI

struct VistaPrincipal1: View {
    
    @State var miNombre = "Erwin Leon"
    @State var miEdad = 31
    
    @State var iSelection: Int?
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Hello, \(miNombre)! tienes \(miEdad) años")
                
                Spacer()
                
                NavigationLink(destination: SegundaVista1(nombre: $miNombre, edad: $miEdad), tag: 1, selection: $iSelection) {
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

struct VistaPrincipal1_Previews: PreviewProvider {
    static var previews: some View {
        VistaPrincipal1()
    }
}

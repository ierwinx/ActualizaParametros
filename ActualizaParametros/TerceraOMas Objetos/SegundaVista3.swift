import SwiftUI

struct SegundaVista3: View {
    
    @State var iSelection: Int?
    
    var body: some View {
        VStack {
            Text("Estas en la vista 2")
                
            NavigationLink(destination: TerceraVista3(), tag: 1, selection: $iSelection) {
                
                Button("Vista 3") {
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
        .navigationTitle("Vista 2")
    }
}

struct SegundaVista3_Previews: PreviewProvider {
    static var previews: some View {
        SegundaVista3()
    }
}

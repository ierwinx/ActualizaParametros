import SwiftUI

struct SegundaVista3: View {
    
    @Binding var bShow: Bool
    @State var bShow2: Bool = false
    
    var body: some View {
        VStack {
            Text("Estas en la vista 2")
            
            NavigationLink(destination: TerceraVista3(bShow: $bShow), isActive: $bShow2) {
                
                Button("Vista 3") {
                    bShow2 = true
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
        SegundaVista3(bShow: .constant(false))
    }
}

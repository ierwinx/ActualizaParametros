import SwiftUI

@main
struct ActualizaParametrosApp: App {
    var body: some Scene {
        WindowGroup {
            VistaPrincipal3().environmentObject(Usuario())
        }
    }
}

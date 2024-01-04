import SwiftUI
import CoreBluetooth

struct ScanView: View {
    @ObservedObject var viewModel: ScanViewModel
    @State var shouldShowDetail = false
    @State var peripheralList = [Peripheral]()
    
    var body: some View{
        VStack{
            List(peripheralList), id: 
        }
    }
}

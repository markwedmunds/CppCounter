import SwiftUI
import Combine

class CounterViewModel: ObservableObject {
  private let counter = CounterWrapper()
  
  @Published var value: Int32 = 0
  
  func increment() {
    counter.increment()
    value = counter.getValue()
  }
}

struct ContentView: View {
  @StateObject private var viewModel = CounterViewModel()
  
  var body: some View {
    VStack(spacing: 20) {
      Text("Count: \(viewModel.value)")
        .font(.largeTitle)
      
      Button("Increment") {
        viewModel.increment()
      }
      .padding()
      .background(Color.blue)
      .foregroundColor(.white)
      .cornerRadius(8)
    }
    .padding()
  }
}


#Preview {
  ContentView()
}

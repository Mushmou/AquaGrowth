struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    var body: some View {
        NavigationView{
            VStack {
                Spacer()
                Text("AquaGrowth")
                    .font(.system(size: 50))
                    .bold()
                TextField("Email", text: $viewModel.email)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(.white.opacity(0.05))
                    .cornerRadius(10)
                SecureField("Password", text: $viewModel.password)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(.white.opacity(0.05))
                    .cornerRadius(10)
                Button("Log in"){
                    viewModel.login()
                }
                .bold()
                .padding()
                .frame(width: 300, height: 50)
                .foregroundColor(.white)
                .background(.green.opacity(20))
                .cornerRadius(10)
                Spacer()
                VStack{
                    Text("Don't have an account?")
                    NavigationLink("Create an account", destination: RegisterView())
                }
            }
        }
    }
}

#Preview {
    LoginView()
}

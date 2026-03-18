import AuthenticationServices
import SwiftUI

struct OnboardingScreen: View {
    @Environment(AuthService.self) private var auth
    @State private var showSignIn: Bool = false
    @State private var showCreateAccount: Bool = false

    var body: some View {
        ZStack {
            LinearGradient(
                colors: [
                    Color(red: 10/255, green: 12/255, blue: 16/255),
                    Color(red: 16/255, green: 18/255, blue: 24/255),
                    Color(red: 10/255, green: 12/255, blue: 16/255)
                ],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()

            VStack(spacing: 0) {
                Spacer()

                heroSection

                Spacer()

                authButtons

                guestOption
                    .padding(.bottom, 24)
            }
            .padding(.horizontal, 28)
        }
        .sheet(isPresented: $showSignIn) {
            SignInSheet(auth: auth, onDismiss: { showSignIn = false })
        }
        .sheet(isPresented: $showCreateAccount) {
            CreateAccountSheet(auth: auth, onDismiss: { showCreateAccount = false })
        }
    }

    private var heroSection: some View {
        VStack(spacing: 20) {
            Image("AppLogo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80, height: 80)
                .clipShape(.rect(cornerRadius: 16))

            VStack(spacing: 8) {
                Text("MANIFY")
                    .font(.system(size: 38, weight: .black))
                    .foregroundStyle(ManifyTheme.goldGradient)
                    .tracking(5)

                Text("Become a Real Man")
                    .font(.title3.weight(.semibold))
                    .foregroundStyle(ManifyTheme.textPrimary)

                Text("Build real-world masculine competence\nthrough daily training.")
                    .font(.subheadline)
                    .foregroundStyle(ManifyTheme.textSecondary)
                    .multilineTextAlignment(.center)
                    .padding(.top, 4)
            }
        }
    }

    private var authButtons: some View {
        VStack(spacing: 12) {
            SignInWithAppleButton(.continue) { request in
                request.requestedScopes = [.fullName, .email]
            } onCompletion: { result in
                auth.signInWithApple(result: result)
            }
            .signInWithAppleButtonStyle(.white)
            .frame(height: 52)
            .clipShape(.rect(cornerRadius: 12))

            Button {
                showCreateAccount = true
            } label: {
                HStack(spacing: 10) {
                    Image(systemName: "envelope.fill")
                        .font(.subheadline)
                    Text("Create Account")
                        .font(.headline.weight(.semibold))
                }
                .foregroundStyle(ManifyTheme.bg)
                .frame(maxWidth: .infinity)
                .frame(height: 52)
                .background(ManifyTheme.goldGradient)
                .clipShape(.rect(cornerRadius: 12))
            }

            Button {
                showSignIn = true
            } label: {
                Text("Sign In")
                    .font(.headline.weight(.semibold))
                    .foregroundStyle(ManifyTheme.textPrimary)
                    .frame(maxWidth: .infinity)
                    .frame(height: 52)
                    .background(Color.white.opacity(0.08))
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.white.opacity(0.12), lineWidth: 1)
                    )
                    .clipShape(.rect(cornerRadius: 12))
            }
        }
        .padding(.bottom, 16)
    }

    private var guestOption: some View {
        Button {
            auth.continueAsGuest()
        } label: {
            Text("Use app without account")
                .font(.footnote)
                .foregroundStyle(ManifyTheme.textSecondary.opacity(0.7))
        }
    }

}

private struct CreateAccountSheet: View {
    var auth: AuthService
    var onDismiss: () -> Void
    @State private var displayName: String = ""
    @State private var emailInput: String = ""
    @State private var passwordInput: String = ""
    @State private var confirmPassword: String = ""

    var body: some View {
        NavigationStack {
            VStack(spacing: 24) {
                VStack(spacing: 8) {
                    Text("Create Account")
                        .font(.title2.weight(.bold))
                        .foregroundStyle(ManifyTheme.textPrimary)

                    Text("Join the ranks.")
                        .font(.subheadline)
                        .foregroundStyle(ManifyTheme.textSecondary)
                }
                .padding(.top, 8)

                VStack(spacing: 14) {
                    TextField("Your Name", text: $displayName)
                        .textFieldStyle(.roundedBorder)
                        .textContentType(.name)

                    TextField("Email", text: $emailInput)
                        .textFieldStyle(.roundedBorder)
                        .textContentType(.emailAddress)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.never)

                    SecureField("Password", text: $passwordInput)
                        .textFieldStyle(.roundedBorder)
                        .textContentType(.newPassword)

                    SecureField("Confirm Password", text: $confirmPassword)
                        .textFieldStyle(.roundedBorder)
                        .textContentType(.newPassword)
                }

                if let error = auth.errorMessage {
                    Text(error)
                        .font(.caption)
                        .foregroundStyle(ManifyTheme.danger)
                        .multilineTextAlignment(.center)
                }

                Button {
                    guard passwordInput == confirmPassword else {
                        auth.errorMessage = "Passwords do not match."
                        return
                    }
                    auth.createAccount(emailInput: emailInput, password: passwordInput, displayName: displayName)
                } label: {
                    HStack {
                        if auth.isLoading {
                            ProgressView().tint(ManifyTheme.bg)
                        } else {
                            Text("Create Account")
                                .font(.headline.weight(.bold))
                        }
                    }
                    .foregroundStyle(ManifyTheme.bg)
                    .frame(maxWidth: .infinity)
                    .padding(16)
                    .background(ManifyTheme.goldGradient)
                    .clipShape(.rect(cornerRadius: 12))
                }
                .disabled(auth.isLoading)

                Spacer()
            }
            .padding(.horizontal, 24)
            .background(ManifyTheme.bg.ignoresSafeArea())
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button {
                        onDismiss()
                    } label: {
                        Image(systemName: "xmark")
                            .font(.subheadline.weight(.medium))
                            .foregroundStyle(ManifyTheme.textSecondary)
                    }
                }
            }
            .toolbarColorScheme(.dark, for: .navigationBar)
        }
        .onAppear { auth.errorMessage = nil }
    }
}

private struct SignInSheet: View {
    var auth: AuthService
    var onDismiss: () -> Void
    @State private var emailInput: String = ""
    @State private var passwordInput: String = ""

    var body: some View {
        NavigationStack {
            VStack(spacing: 24) {
                VStack(spacing: 8) {
                    Text("Sign In")
                        .font(.title2.weight(.bold))
                        .foregroundStyle(ManifyTheme.textPrimary)

                    Text("Welcome back.")
                        .font(.subheadline)
                        .foregroundStyle(ManifyTheme.textSecondary)
                }
                .padding(.top, 8)

                SignInWithAppleButton(.signIn) { request in
                    request.requestedScopes = [.fullName, .email]
                } onCompletion: { result in
                    auth.signInWithApple(result: result)
                    onDismiss()
                }
                .signInWithAppleButtonStyle(.white)
                .frame(height: 48)
                .clipShape(.rect(cornerRadius: 10))

                HStack {
                    Rectangle().fill(Color.white.opacity(0.1)).frame(height: 1)
                    Text("or")
                        .font(.caption)
                        .foregroundStyle(ManifyTheme.textSecondary)
                    Rectangle().fill(Color.white.opacity(0.1)).frame(height: 1)
                }

                VStack(spacing: 14) {
                    TextField("Email", text: $emailInput)
                        .textFieldStyle(.roundedBorder)
                        .textContentType(.emailAddress)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.never)

                    SecureField("Password", text: $passwordInput)
                        .textFieldStyle(.roundedBorder)
                        .textContentType(.password)
                }

                if let error = auth.errorMessage {
                    Text(error)
                        .font(.caption)
                        .foregroundStyle(ManifyTheme.danger)
                        .multilineTextAlignment(.center)
                }

                Button {
                    auth.signInWithEmail(emailInput: emailInput, password: passwordInput)
                } label: {
                    HStack {
                        if auth.isLoading {
                            ProgressView().tint(ManifyTheme.bg)
                        } else {
                            Text("Sign In")
                                .font(.headline.weight(.bold))
                        }
                    }
                    .foregroundStyle(ManifyTheme.bg)
                    .frame(maxWidth: .infinity)
                    .padding(16)
                    .background(ManifyTheme.goldGradient)
                    .clipShape(.rect(cornerRadius: 12))
                }
                .disabled(auth.isLoading)

                Spacer()
            }
            .padding(.horizontal, 24)
            .background(ManifyTheme.bg.ignoresSafeArea())
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button {
                        onDismiss()
                    } label: {
                        Image(systemName: "xmark")
                            .font(.subheadline.weight(.medium))
                            .foregroundStyle(ManifyTheme.textSecondary)
                    }
                }
            }
            .toolbarColorScheme(.dark, for: .navigationBar)
        }
        .onAppear { auth.errorMessage = nil }
    }
}

import AuthenticationServices
import SwiftUI

struct MyAccountScreen: View {
    @Environment(AuthService.self) private var auth
    @Environment(MembershipService.self) private var membership
    @Environment(ProgressStore.self) private var progressStore
    @Environment(NotificationService.self) private var notifications
    @State private var showPaywall: Bool = false
    @State private var showEditUsername: Bool = false
    @State private var showSignIn: Bool = false
    @State private var showCreateAccount: Bool = false
    @State private var editedUsername: String = ""
    @State private var showSignOutConfirm: Bool = false

    var body: some View {
        NavigationStack {
            List {
                profileSection
                if auth.isGuest && !auth.isAuthenticated {
                    guestPromptSection
                }
                statsSection
                membershipSection
                preferencesSection
                if auth.isAuthenticated {
                    accountSection
                }
            }
            .scrollContentBackground(.hidden)
            .background(ManifyTheme.bg.ignoresSafeArea())
            .navigationTitle("My Account")
            .navigationBarTitleDisplayMode(.large)
            .toolbarColorScheme(.dark, for: .navigationBar)
            .sheet(isPresented: $showPaywall) {
                PaywallScreen()
            }
            .sheet(isPresented: $showEditUsername) {
                editUsernameSheet
            }
            .sheet(isPresented: $showSignIn) {
                SignInSheetAccount(auth: auth, onDismiss: { showSignIn = false })
            }
            .sheet(isPresented: $showCreateAccount) {
                CreateAccountSheetAccount(auth: auth, onDismiss: { showCreateAccount = false })
            }
            .alert("Sign Out", isPresented: $showSignOutConfirm) {
                Button("Sign Out", role: .destructive) {
                    auth.signOut()
                }
                Button("Cancel", role: .cancel) {}
            } message: {
                Text("Your local progress will be preserved.")
            }
        }
    }

    private var profileSection: some View {
        Section {
            HStack(spacing: 14) {
                Image(systemName: auth.isAuthenticated ? "person.crop.circle.fill" : "person.crop.circle.badge.questionmark.fill")
                    .font(.system(size: 44))
                    .foregroundStyle(auth.isAuthenticated ? ManifyTheme.gold : ManifyTheme.textSecondary)

                VStack(alignment: .leading, spacing: 4) {
                    Text(auth.username)
                        .font(.headline.weight(.bold))
                        .foregroundStyle(ManifyTheme.textPrimary)

                    if let email = auth.email {
                        Text(email)
                            .font(.caption)
                            .foregroundStyle(ManifyTheme.textSecondary)
                    }

                    if auth.isGuest && !auth.isAuthenticated {
                        Text("Using app without account")
                            .font(.caption)
                            .foregroundStyle(ManifyTheme.warning)
                    } else if let provider = auth.authProvider {
                        HStack(spacing: 4) {
                            Image(systemName: provider == "apple" ? "apple.logo" : "envelope.fill")
                                .font(.caption2)
                            Text("Signed in with \(provider.capitalized)")
                                .font(.caption)
                        }
                        .foregroundStyle(ManifyTheme.textSecondary)
                    }
                }

                Spacer()
            }
            .listRowBackground(ManifyTheme.panel)
        }
    }

    @ViewBuilder
    private var guestPromptSection: some View {
        Section {
            VStack(alignment: .leading, spacing: 12) {
                HStack(spacing: 8) {
                    Image(systemName: "exclamationmark.shield.fill")
                        .foregroundStyle(ManifyTheme.gold)
                    Text("Create an account to save your progress")
                        .font(.subheadline.weight(.semibold))
                        .foregroundStyle(ManifyTheme.textPrimary)
                }

                Text("Backup your streak, sync across devices, and restore purchases.")
                    .font(.caption)
                    .foregroundStyle(ManifyTheme.textSecondary)

                SignInWithAppleButton(.continue) { request in
                    request.requestedScopes = [.fullName, .email]
                } onCompletion: { result in
                    auth.signInWithApple(result: result)
                }
                .signInWithAppleButtonStyle(.white)
                .frame(height: 44)
                .clipShape(.rect(cornerRadius: 10))

                Button {
                    showCreateAccount = true
                } label: {
                    HStack(spacing: 8) {
                        Image(systemName: "envelope.fill")
                            .font(.caption)
                        Text("Create Account")
                            .font(.subheadline.weight(.semibold))
                    }
                    .foregroundStyle(ManifyTheme.bg)
                    .frame(maxWidth: .infinity)
                    .frame(height: 44)
                    .background(ManifyTheme.goldGradient)
                    .clipShape(.rect(cornerRadius: 10))
                }

                Button {
                    showSignIn = true
                } label: {
                    Text("Already have an account? Sign In")
                        .font(.caption.weight(.medium))
                        .foregroundStyle(ManifyTheme.gold)
                        .frame(maxWidth: .infinity)
                }
            }
            .listRowBackground(ManifyTheme.panel)
        } header: {
            Text("Account")
                .foregroundStyle(ManifyTheme.textSecondary)
        }
    }

    private var statsSection: some View {
        Section {
            HStack {
                Label("Rank", systemImage: progressStore.currentRank.icon)
                    .font(.subheadline)
                    .foregroundStyle(ManifyTheme.textPrimary)
                Spacer()
                Text(progressStore.currentRank.displayName)
                    .font(.subheadline.weight(.semibold))
                    .foregroundStyle(ManifyTheme.gold)
            }
            .listRowBackground(ManifyTheme.panel)

            HStack {
                Label("Total XP", systemImage: "star.fill")
                    .font(.subheadline)
                    .foregroundStyle(ManifyTheme.textPrimary)
                Spacer()
                Text("\(progressStore.totalXP)")
                    .font(.subheadline.weight(.semibold))
                    .foregroundStyle(ManifyTheme.textPrimary)
            }
            .listRowBackground(ManifyTheme.panel)

            HStack {
                Label("Streak", systemImage: "flame.fill")
                    .font(.subheadline)
                    .foregroundStyle(ManifyTheme.textPrimary)
                Spacer()
                Text("\(progressStore.currentStreak) days")
                    .font(.subheadline.weight(.semibold))
                    .foregroundStyle(ManifyTheme.warning)
            }
            .listRowBackground(ManifyTheme.panel)

            HStack {
                Label("Membership", systemImage: "shield.checkered")
                    .font(.subheadline)
                    .foregroundStyle(ManifyTheme.textPrimary)
                Spacer()
                Text(membership.isPremium ? "Manly Membership" : "Free")
                    .font(.subheadline.weight(.semibold))
                    .foregroundStyle(membership.isPremium ? ManifyTheme.gold : ManifyTheme.textSecondary)
            }
            .listRowBackground(ManifyTheme.panel)
        } header: {
            Text("Progress")
                .foregroundStyle(ManifyTheme.textSecondary)
        }
    }

    private var membershipSection: some View {
        Section {
            if membership.isPremium {
                HStack(spacing: 12) {
                    Image(systemName: "shield.checkered")
                        .font(.title2)
                        .foregroundStyle(ManifyTheme.gold)

                    VStack(alignment: .leading, spacing: 2) {
                        Text("Manly Membership")
                            .font(.subheadline.weight(.semibold))
                            .foregroundStyle(ManifyTheme.textPrimary)
                        Text("Active — Lifetime Access")
                            .font(.caption)
                            .foregroundStyle(ManifyTheme.success)
                    }
                }
                .listRowBackground(ManifyTheme.panel)
            } else {
                Button {
                    showPaywall = true
                } label: {
                    HStack(spacing: 12) {
                        Image(systemName: "shield.checkered")
                            .font(.title2)
                            .foregroundStyle(ManifyTheme.gold)

                        VStack(alignment: .leading, spacing: 2) {
                            Text("Upgrade to Manly Membership")
                                .font(.subheadline.weight(.semibold))
                                .foregroundStyle(ManifyTheme.textPrimary)
                            Text("Unlock full access — $10 one-time")
                                .font(.caption)
                                .foregroundStyle(ManifyTheme.textSecondary)
                        }

                        Spacer()

                        Image(systemName: "chevron.right")
                            .font(.caption)
                            .foregroundStyle(ManifyTheme.textSecondary)
                    }
                }
                .listRowBackground(ManifyTheme.panel)
            }

            Button {
                Task { await membership.restorePurchases() }
            } label: {
                HStack {
                    Label("Restore Purchases", systemImage: "arrow.clockwise")
                        .font(.subheadline)
                        .foregroundStyle(ManifyTheme.textPrimary)

                    Spacer()

                    if membership.isLoading {
                        ProgressView()
                            .tint(ManifyTheme.textSecondary)
                    }
                }
            }
            .listRowBackground(ManifyTheme.panel)

            if let error = membership.purchaseError {
                Text(error)
                    .font(.caption)
                    .foregroundStyle(ManifyTheme.danger)
                    .listRowBackground(ManifyTheme.panel)
            }
        } header: {
            Text("Membership")
                .foregroundStyle(ManifyTheme.textSecondary)
        }
    }

    private var preferencesSection: some View {
        Section {
            Toggle(isOn: Binding(
                get: { notifications.notificationsEnabled },
                set: { notifications.notificationsEnabled = $0 }
            )) {
                Label("Streak Reminders", systemImage: "bell.fill")
                    .font(.subheadline)
                    .foregroundStyle(ManifyTheme.textPrimary)
            }
            .tint(ManifyTheme.gold)
            .listRowBackground(ManifyTheme.panel)

            if notifications.notificationsEnabled {
                Picker(selection: Binding(
                    get: { notifications.reminderWindow },
                    set: { notifications.reminderWindow = $0 }
                )) {
                    ForEach(ReminderWindow.allCases, id: \.self) { window in
                        Text(window.rawValue).tag(window)
                    }
                } label: {
                    Label("Reminder Window", systemImage: "clock.fill")
                        .font(.subheadline)
                        .foregroundStyle(ManifyTheme.textPrimary)
                }
                .listRowBackground(ManifyTheme.panel)
            }
        } header: {
            Text("Preferences")
                .foregroundStyle(ManifyTheme.textSecondary)
        }
    }

    @ViewBuilder
    private var accountSection: some View {
        Section {
            Button {
                editedUsername = auth.username
                showEditUsername = true
            } label: {
                HStack {
                    Label("Change Username", systemImage: "pencil")
                        .font(.subheadline)
                        .foregroundStyle(ManifyTheme.textPrimary)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .font(.caption)
                        .foregroundStyle(ManifyTheme.textSecondary)
                }
            }
            .listRowBackground(ManifyTheme.panel)

            Button {
                showSignOutConfirm = true
            } label: {
                Label("Sign Out", systemImage: "rectangle.portrait.and.arrow.right")
                    .font(.subheadline)
                    .foregroundStyle(ManifyTheme.danger)
            }
            .listRowBackground(ManifyTheme.panel)
        } header: {
            Text("Account")
                .foregroundStyle(ManifyTheme.textSecondary)
        }
    }

    private var editUsernameSheet: some View {
        NavigationStack {
            VStack(spacing: 24) {
                Text("Change Username")
                    .font(.title3.weight(.bold))
                    .foregroundStyle(ManifyTheme.textPrimary)
                    .padding(.top, 8)

                TextField("Username", text: $editedUsername)
                    .textFieldStyle(.roundedBorder)

                Button {
                    auth.updateUsername(editedUsername)
                    showEditUsername = false
                } label: {
                    Text("Save")
                        .font(.headline.weight(.bold))
                        .foregroundStyle(ManifyTheme.bg)
                        .frame(maxWidth: .infinity)
                        .padding(16)
                        .background(ManifyTheme.goldGradient)
                        .clipShape(.rect(cornerRadius: 12))
                }

                Spacer()
            }
            .padding(.horizontal, 24)
            .background(ManifyTheme.bg.ignoresSafeArea())
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button {
                        showEditUsername = false
                    } label: {
                        Image(systemName: "xmark")
                            .font(.subheadline.weight(.medium))
                            .foregroundStyle(ManifyTheme.textSecondary)
                    }
                }
            }
            .toolbarColorScheme(.dark, for: .navigationBar)
        }
    }

}

private struct CreateAccountSheetAccount: View {
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

                SignInWithAppleButton(.continue) { request in
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

private struct SignInSheetAccount: View {
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

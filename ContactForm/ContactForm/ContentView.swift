//
//  ContentView.swift
//  ContactForm
//
//  Created by cal on 11/2/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var emailAddress = ""
    @State private var phoneNumber = ""
    @State private var message = "Write your message here..."
    @State private var includeLogs = false
    @State private var subject = "Help"
    
    @State private var preferredContactMethod = ContactMethod.email
    
    private var subjectOptions = ["Help", "Suggestion", "Bug Report", "Feedback"]
    
    enum ContactMethod {
        case email, phone
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("How can we reach you?")) {
                    Picker("Contact Method", selection: $preferredContactMethod) {
                        Text("Email").tag(ContactMethod.email)
                        Text("Phone").tag(ContactMethod.phone)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    switch preferredContactMethod {
                    case .email:
                        TextField("Email Address", text: $emailAddress)
                    case .phone:
                        TextField("Phone Number", text: $phoneNumber)
                    }
                }
                Section(header: Text("What can we help you with")) {
                    Picker("Subject", selection: $subject) {
                        ForEach(subjectOptions, id: \.self) { subject in
                            Text(subject)
                        }
                    }
                }
                Section(header: Text("Briefly describe what's going on.")) {
                    TextEditor(text: $message)
                }
                Section(footer: Text("This information will be sent anonymously")) {
                    Toggle("Include Logs", isOn:$includeLogs)
                }
                Button("Submit") {
                    print("Submit button tapped")
                }
            }
            .navigationTitle("Contact Us")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

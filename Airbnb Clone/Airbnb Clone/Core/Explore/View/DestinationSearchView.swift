//
//  DestinationSearchView.swift
//  Airbnb Clone
//
//  Created by Fenuku kekeli on 10/22/23.
//

import SwiftUI

enum DestinationSearchOptions {
    case location
    case dates
    case guests
}

struct DestinationSearchView: View {
    @Binding var show: Bool
    @ObservedObject var viewModel: ExploreViewModel
    @State private var selectedoption: DestinationSearchOptions = .location
    @State private var startDate = Date()
    @State private var endDate = Date()
    @State private var numGuests = 0
    var body: some View {
        VStack{
            HStack {
                Button {
                    withAnimation(.snappy) {
                        viewModel.updateListingsForLocationl()
                        show.toggle()
                    }
                } label: {
                    Image(systemName: "xmark.circle")
                        .imageScale(.large)
                        .foregroundStyle(.black)
                }
                Spacer()
                
                if !viewModel.searchLocation.isEmpty {
                    Button("Clear") {
                        viewModel.searchLocation = ""
                        viewModel.updateListingsForLocationl()
                    }
                    .foregroundStyle(.black)
                    .font (.subheadline)
                    .fontWeight(.semibold)
                }
            }
            .padding()
            
            VStack(alignment: .leading) {
                
                if selectedoption == .location {
                    Text ("Where to?")
                        . font(.title2)
                        .fontWeight (.semibold)
                    HStack{
                        Image (systemName: "magnifyingglass")
                            .imageScale (.small)
                        TextField ("Search destinations", text: $viewModel.searchLocation)
                            .font (.subheadline)
                            .onSubmit {
                                viewModel.updateListingsForLocationl()
                                show.toggle()
                            }
                    }
                    .frame(height: 44)
                    .padding(.horizontal)
                    .overlay {
                        RoundedRectangle (cornerRadius: 8)
                            .stroke(lineWidth: 1.0)
                            .foregroundStyle(Color(.systemGray4))
                    }
                } else {
                    CollapsedPickerView(title: "Where", description:"Add destination")
                }
            }
      
            .modifier(CollapsibleDestinationViewModifier())
            .frame(height: selectedoption == .location ? 120 : 64)
            
            .onTapGesture {
                withAnimation(.snappy) { selectedoption = .location }
            }
//
            
            VStack (alignment: .leading){
                if selectedoption == .dates {
                    Text("When's your trip?")
                        .font(. title2)
                        .fontWeight(.semibold)
                    VStack{
                        DatePicker("From", selection: $startDate, displayedComponents: .date)
                        Divider()
                        DatePicker("To", selection: $endDate, displayedComponents: .date)
                    }
                    .foregroundStyle(.gray)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                } else {
                    CollapsedPickerView(title: "when", description: "Add dates")
                }
            }
            .modifier(CollapsibleDestinationViewModifier())
            .frame(height: selectedoption == .dates ? 180 : 64)
     
            .onTapGesture {
                withAnimation(.snappy) {  selectedoption = .dates }
            }
            
            
            
            
            VStack (alignment: .leading){
                if selectedoption == .guests {
                    
                    Text ("Who's coming")
                        .font(.title)
                        .fontWeight(.semibold)
                    
                    Stepper {
                        
                  Text("\(numGuests) Adults")
                    } onIncrement: {
                          numGuests += 1
                    } onDecrement: {
                    guard numGuests > 0 else { return }
                          numGuests -= 1
                        
                    }
                    
                } else {
                    CollapsedPickerView(title: "who", description: "Add guest")
                }
            }
            .modifier(CollapsibleDestinationViewModifier())
            .frame(height: selectedoption == .guests ? 120 : 64)
           
            .onTapGesture {
                withAnimation(.snappy) {  selectedoption = .guests }
            }
            Spacer()
        }
        
    }
}
#Preview {
    DestinationSearchView(show: .constant (false), viewModel: ExploreViewModel(service:  ExploreService()))
}


struct CollapsibleDestinationViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
           
            .background(.white)
            .clipShape (RoundedRectangle (cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
    }
}

struct CollapsedPickerView: View {
    let title: String
    let description: String
  
    var body: some View {
        VStack{
            HStack{
                Text (title)
                    .foregroundStyle(.gray)
                Spacer ()
                Text(description)
            }
            .fontWeight(.semibold)
            .font (. subheadline)
        }

    }
}

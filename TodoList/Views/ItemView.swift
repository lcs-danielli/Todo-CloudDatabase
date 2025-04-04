//
//  ItemView.swift
//  TodoList
//
//  Created by Russell Gordon on 2024-04-08.
//

import SwiftUI

struct ItemView: View {
    
    @Binding var currentItem: TodoItem
    
    @Binding var viewModel: TodoListViewModel
    
    var body: some View {
        Label(
            title: {
                TextField("", text: $currentItem.title, axis: .vertical)
                    .onSubmit {
                        viewModel.update(todo: currentItem)
                    }
            }, icon: {
                Image(systemName: currentItem.done == true ? "checkmark.circle" : "circle")
                    // Tap to mark as done
                    .onTapGesture {
                        currentItem.done.toggle()
                    }
                
            }
        )
    }
}

#Preview {
    
    @Previewable @State var previewsViewModel = TodoListViewModel()
    
    List {
        ItemView(currentItem: .constant(firstItem), viewModel: $previewsViewModel)
        ItemView(currentItem: .constant(secondItem), viewModel: $previewsViewModel)
    }
}

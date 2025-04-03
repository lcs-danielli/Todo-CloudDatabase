//
//  Supabase.swift
//  TodoList
//
//  Created by 李泽宇 on 2025-04-03.
//
import Foundation

import Supabase
 
let supabase = SupabaseClient(
  supabaseURL: URL(string: "https://bqffepynjwdopfiokygr.supabase.co")!,
  supabaseKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJxZmZlcHluandkb3BmaW9reWdyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDM2MDg2MTUsImV4cCI6MjA1OTE4NDYxNX0.YFjUyPBgObERbOLHTqCq2CKyGdzW7hRqbu1kppJYBpw"
)


//
//  ContentView.swift
//  BMISwiftUI
//
//  Created by Apple on 2022/8/6.
//

import SwiftUI
struct ContentView: View {
    
    @State private var weightText: String = ""
    @State private var heightText: String = ""
    @State private var bmi: Double = 0
    @State private var classification: String = ""
    
    var body: some View {
        VStack{
            Text("BMI Calculator")
                .font(.largeTitle)
                .foregroundColor(Color.red)
            TextField("Enter Weight (in kilograms)", text: $weightText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .border(Color.blue)
               
            
            TextField("Enter Height (in centermeters)", text: $heightText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .border(Color.blue)
            Button{
//                let weight = Double(self.weightText)!
//                let height = Double(self.heightText)!
                var weight: Double = 0
                var height: Double = 0
                if let weightDouble = Double(self.weightText){
                    weight = weightDouble
                }
                if let heightDouble = Double(self.heightText){
                    height = heightDouble
                }
                
                self.bmi = weight/(height/100 * height/100)
                
                if self.bmi < 18.5{
                    self.classification = "Underweight"
                }
                else if self.bmi < 24.9{
                    self.classification = "Healthy weight"
                }
                else if self.bmi < 29.9{
                    self.classification = "Overweight"
                }
                else {
                    self.classification = "Obese"
                }
                    
                
            }label:{
            Text("Calculator BMI")
                .padding()
                .foregroundColor(.white)
                .background(Color.blue)
                
            }
            VStack{
            Text("BMI:\(bmi, specifier: "%.1f")")
                .font(.title)
                .padding()
            Text("\(classification)")
                
            }
        }.padding()
    }
}
struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ZStack{
            Color(.black)
            ContentView().environment(\.colorScheme,.dark)
            
        }
       
    }
}

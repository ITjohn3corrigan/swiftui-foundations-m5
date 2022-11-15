//
//  ContentModel.swift
//  LearningApp
//
//  Created by Corrigan, John on 10/6/22.
//

import Foundation
class ContentModel: ObservableObject {
    @Published var modules = [Module]()
    var styleData: Data?
    
    init(){
      getLocalData()
    }
    
    func getLocalData() {
        //parse the local json file
        
        let jsonUrl = Bundle.main.url(forResource: "data", withExtension: "json")
        
        do {
            //get a url to the json file
            let jsonData = try Data(contentsOf: jsonUrl!)
            
            let jsonDecoder = JSONDecoder()
            let modules  =  try jsonDecoder.decode([Module].self, from: jsonData)
            
            //assign parsed modules to module property
            self.modules = modules
            
        } catch{
            print("couldn't parse local data")
        }
        //parse the style data
        let styleUrl = Bundle.main.url(forResource: "style", withExtension: "html")
        do{
            let styleData = try Data(contentsOf: styleUrl!)
            self.styleData = styleData
        }catch{
            print("couldn't parse style data")
        }

    }
}

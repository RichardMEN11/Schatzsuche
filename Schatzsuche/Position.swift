//
//  Position.swift
//  Schatzsuche
//
//  Created by Richard Menning on 11.08.18.
//  Copyright © 2018 Richard Menning. All rights reserved.
//

import Foundation

struct Position: Codable, CustomStringConvertible {
    var name: String
    var time: Date
    var lat: Double
    var long: Double
    
    var description: String {
        return name + "\(time) \(lat) \(long)"
    }
    
    init(_ name: String, _ time: Date, _ lat: Double, _ long: Double) {
        self.name = name
        self.time = time
        self.lat = lat
        self.long = long
    }
    
    static func saveArray(_ data: [Position]){
        if data.count == 0 { return }
        
        let encoder = JSONEncoder()
        if let url = docURL(for: "positions.json") {
            do {
                let jsonData = try encoder.encode(data)
                try jsonData.write(to: url)
            } catch {
                print(error)
            }
        }
    }
    
    static func readArray() -> [Position] {
        let decoder = JSONDecoder()
        if let url = docURL(for: "positions.json") {
            do {
                let jsonData = try Data(contentsOf: url)
                return try decoder.decode([Position].self, from: jsonData)
            } catch {
                print(error)
            }
        }
        //wenn es nicht klappt wird ein leeres Array zurück gegeben
        return [Position]()
    }
    
    private static func docURL(for filename: String) -> URL? {
       
        
        return nil
    }

}

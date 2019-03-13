//
//  CountryModel.swift
//

import Foundation
struct CountryModel: Codable {
    var title:String?
    var rows:[CountryDetailModel] = [CountryDetailModel]()
    
}
struct CountryDetailModel: Codable {
    var title:String?
    var description:String?
    var imageHref:String?
    
}


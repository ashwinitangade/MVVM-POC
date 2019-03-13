//
//  CountryDetailApiClient.swift
//


import Foundation

class CountryDetailApiClient  {
   var client:APIClient
    init(client: APIClient) {
        self.client = client
    }
    //If user pass nothing then default api service class object is pass otherwise user can mock class object to get data from json file
    convenience  init() {
        self.init(client: APIService())
    }
    
    func fetchCountryData(resource : JCAPIResource,completion: @escaping (APIResponse<CountryModel, APIError>) -> Void) {
        client.fetch(with: resource , decode: { json -> CountryModel? in
            guard let user = json as? CountryModel else { return  nil }
            return user
        }, completion: completion)
    }
}

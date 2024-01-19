//
//  NetworkManager.swift
//  Cinergy
//
//  Created by Jinu on 19/01/2024.
//

import Foundation
import NetworkLayer
import Combine


protocol NetworkManager {
    func makeRequest<T: Codable>(with builder: AppRequestBuilder, type: T.Type) -> AnyPublisher<T, APIError>

}

class NetworkManagerImplimentation: NetworkManager {
    
    private let network: AppNetworkProtocol
    init(network: AppNetworkProtocol) {
        self.network = network
    }
    
    func makeRequest<T: Codable>(with builder: AppRequestBuilder, type: T.Type) -> AnyPublisher<T, APIError> {
        return network.makeRequest(with: builder, type: type)
    }
    
    
}

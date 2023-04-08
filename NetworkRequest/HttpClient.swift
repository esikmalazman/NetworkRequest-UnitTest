//
//  HttpClient.swift
//  NetworkRequest
//
//  Created by Ikmal Azman on 08/04/2023.
//

import Foundation


/// Dependency Injection, we will use to design object

/// `HttpClient`, class responsible to make Http related request
///
/// `Requirements`
/// 1. Sumbit the request with the same URL as the assigned one
/// 2. Submit the request
final class HttpClient {
    typealias completeClosure = (_ data : Data?, _ error : Error?) -> Void
    
    func get(url : URL, completion : @escaping completeClosure ) {
        let request = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            completion(data, error)
        }
        task.resume()
    }
}

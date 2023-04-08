@testable import NetworkRequest
import Foundation

final class MockURLSession : URLSessionContract {
    
    private(set) var capturedURL : URL?
    
    func dataTask(with request: URLRequest, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
        self.capturedURL = request.url
        
        return FakeDataTask()
    }
}

final class FakeDataTask : URLSessionDataTask {
    override func resume() {}
}

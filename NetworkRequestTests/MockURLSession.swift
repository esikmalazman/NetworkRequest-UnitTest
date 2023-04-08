@testable import NetworkRequest
import Foundation

final class MockURLSession : URLSessionContract {
    
    private(set) var capturedURL : URL?
    var capturedCompletionHandler : ((Data?, URLResponse?, Error?) -> Void)?
    var fakeDataTask = FakeDataTask()
    
    func dataTask(with request: URLRequest, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
        self.capturedURL = request.url
        self.capturedCompletionHandler = completionHandler
        return fakeDataTask
    }
}

final class FakeDataTask : URLSessionDataTask {
    override func resume() {}
}

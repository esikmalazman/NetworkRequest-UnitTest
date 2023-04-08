@testable import NetworkRequest
import XCTest


final class HttpClientTests: XCTestCase {

    var httpClient  : HttpClient!
    let session = MockURLSession()

    override func setUp() {
        super.setUp()
        httpClient = HttpClient(session: session)
    }

    override func tearDown() {
        httpClient = nil
        super.tearDown()
    }

    // MARK:  Test First Requirement
    // Http should submit the request same URL as the assign one

    func test_get_request_withURL() {
        // Arrage
        // Given a url “https://mockurl”
        guard let url = URL(string: "httpsL//mockurl") else {
           fatalError("URL is not valid")
        }

        // Act
        // Submit a Http GET request
        httpClient.get(url: url) { data, error in

        }

        // Assert
        // Submitted URL should equal “https://mockurl”
    }
}

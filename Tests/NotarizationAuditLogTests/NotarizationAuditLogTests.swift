import XCTest
@testable import NotarizationAuditLog

final class NotarizationAuditLogTests: XCTestCase {

    func testExample() {
        let decoder: JSONDecoder = JSONDecoder()
        let fileName = "example"

        let dataURL = Bundle(for: NotarizationAuditLogTests.self).url(forResource: fileName, withExtension: "log") ?? URL(fileURLWithPath: "Tests/NotarizationAuditLogTests/\(fileName).log")

        do {
            let data = try Data(contentsOf: dataURL)
            let log = try decoder.decode(NotarizationAuditLog.self, from: data)
            print("\(log)")
        } catch {
            XCTFail("\(error)")
        }
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}

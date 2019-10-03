
public struct NotarizationAuditLog: Codable {
    public var jobId: String
    public var status: String
    public var statusSummary: String
    public var statusCode: Int?
    public var logFormatVersion: Int
    public var archiveFilename: String
    public var uploadDate: String
    public var sha256: String?
    public var ticketContents :[NotarizationTicket]?
    public var issues: [NotarizationIssue]?
}

public struct NotarizationTicket: Codable {
    public var path: String
    public var digestAlgorithm: String
    public var cdhash: String
    public var arch: String
}

public struct NotarizationIssue: Codable {
    public var severity: String
    public var path: String
    public var message: String
    public var docUrl: String?
    public var architecture: String?
}

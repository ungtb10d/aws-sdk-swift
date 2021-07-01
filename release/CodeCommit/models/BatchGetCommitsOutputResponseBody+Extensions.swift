// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct BatchGetCommitsOutputResponseBody: Equatable {
    public let commits: [Commit]?
    public let errors: [BatchGetCommitsError]?
}

extension BatchGetCommitsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case commits
        case errors
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let commitsContainer = try containerValues.decodeIfPresent([Commit?].self, forKey: .commits)
        var commitsDecoded0:[Commit]? = nil
        if let commitsContainer = commitsContainer {
            commitsDecoded0 = [Commit]()
            for structure0 in commitsContainer {
                if let structure0 = structure0 {
                    commitsDecoded0?.append(structure0)
                }
            }
        }
        commits = commitsDecoded0
        let errorsContainer = try containerValues.decodeIfPresent([BatchGetCommitsError?].self, forKey: .errors)
        var errorsDecoded0:[BatchGetCommitsError]? = nil
        if let errorsContainer = errorsContainer {
            errorsDecoded0 = [BatchGetCommitsError]()
            for structure0 in errorsContainer {
                if let structure0 = structure0 {
                    errorsDecoded0?.append(structure0)
                }
            }
        }
        errors = errorsDecoded0
    }
}
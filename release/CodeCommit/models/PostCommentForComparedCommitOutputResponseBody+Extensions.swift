// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct PostCommentForComparedCommitOutputResponseBody: Equatable {
    public let repositoryName: String?
    public let beforeCommitId: String?
    public let afterCommitId: String?
    public let beforeBlobId: String?
    public let afterBlobId: String?
    public let location: Location?
    public let comment: Comment?
}

extension PostCommentForComparedCommitOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case afterBlobId
        case afterCommitId
        case beforeBlobId
        case beforeCommitId
        case comment
        case location
        case repositoryName
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let repositoryNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .repositoryName)
        repositoryName = repositoryNameDecoded
        let beforeCommitIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .beforeCommitId)
        beforeCommitId = beforeCommitIdDecoded
        let afterCommitIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .afterCommitId)
        afterCommitId = afterCommitIdDecoded
        let beforeBlobIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .beforeBlobId)
        beforeBlobId = beforeBlobIdDecoded
        let afterBlobIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .afterBlobId)
        afterBlobId = afterBlobIdDecoded
        let locationDecoded = try containerValues.decodeIfPresent(Location.self, forKey: .location)
        location = locationDecoded
        let commentDecoded = try containerValues.decodeIfPresent(Comment.self, forKey: .comment)
        comment = commentDecoded
    }
}
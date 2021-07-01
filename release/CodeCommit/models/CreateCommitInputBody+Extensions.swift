// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateCommitInputBody: Equatable {
    public let repositoryName: String?
    public let branchName: String?
    public let parentCommitId: String?
    public let authorName: String?
    public let email: String?
    public let commitMessage: String?
    public let keepEmptyFolders: Bool
    public let putFiles: [PutFileEntry]?
    public let deleteFiles: [DeleteFileEntry]?
    public let setFileModes: [SetFileModeEntry]?
}

extension CreateCommitInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case authorName
        case branchName
        case commitMessage
        case deleteFiles
        case email
        case keepEmptyFolders
        case parentCommitId
        case putFiles
        case repositoryName
        case setFileModes
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let repositoryNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .repositoryName)
        repositoryName = repositoryNameDecoded
        let branchNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .branchName)
        branchName = branchNameDecoded
        let parentCommitIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .parentCommitId)
        parentCommitId = parentCommitIdDecoded
        let authorNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .authorName)
        authorName = authorNameDecoded
        let emailDecoded = try containerValues.decodeIfPresent(String.self, forKey: .email)
        email = emailDecoded
        let commitMessageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .commitMessage)
        commitMessage = commitMessageDecoded
        let keepEmptyFoldersDecoded = try containerValues.decode(Bool.self, forKey: .keepEmptyFolders)
        keepEmptyFolders = keepEmptyFoldersDecoded
        let putFilesContainer = try containerValues.decodeIfPresent([PutFileEntry?].self, forKey: .putFiles)
        var putFilesDecoded0:[PutFileEntry]? = nil
        if let putFilesContainer = putFilesContainer {
            putFilesDecoded0 = [PutFileEntry]()
            for structure0 in putFilesContainer {
                if let structure0 = structure0 {
                    putFilesDecoded0?.append(structure0)
                }
            }
        }
        putFiles = putFilesDecoded0
        let deleteFilesContainer = try containerValues.decodeIfPresent([DeleteFileEntry?].self, forKey: .deleteFiles)
        var deleteFilesDecoded0:[DeleteFileEntry]? = nil
        if let deleteFilesContainer = deleteFilesContainer {
            deleteFilesDecoded0 = [DeleteFileEntry]()
            for structure0 in deleteFilesContainer {
                if let structure0 = structure0 {
                    deleteFilesDecoded0?.append(structure0)
                }
            }
        }
        deleteFiles = deleteFilesDecoded0
        let setFileModesContainer = try containerValues.decodeIfPresent([SetFileModeEntry?].self, forKey: .setFileModes)
        var setFileModesDecoded0:[SetFileModeEntry]? = nil
        if let setFileModesContainer = setFileModesContainer {
            setFileModesDecoded0 = [SetFileModeEntry]()
            for structure0 in setFileModesContainer {
                if let structure0 = structure0 {
                    setFileModesDecoded0?.append(structure0)
                }
            }
        }
        setFileModes = setFileModesDecoded0
    }
}
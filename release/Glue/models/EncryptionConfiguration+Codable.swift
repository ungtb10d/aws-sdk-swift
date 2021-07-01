// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension EncryptionConfiguration: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case cloudWatchEncryption = "CloudWatchEncryption"
        case jobBookmarksEncryption = "JobBookmarksEncryption"
        case s3Encryption = "S3Encryption"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let cloudWatchEncryption = cloudWatchEncryption {
            try encodeContainer.encode(cloudWatchEncryption, forKey: .cloudWatchEncryption)
        }
        if let jobBookmarksEncryption = jobBookmarksEncryption {
            try encodeContainer.encode(jobBookmarksEncryption, forKey: .jobBookmarksEncryption)
        }
        if let s3Encryption = s3Encryption {
            var s3EncryptionContainer = encodeContainer.nestedUnkeyedContainer(forKey: .s3Encryption)
            for s3encryptionlist0 in s3Encryption {
                try s3EncryptionContainer.encode(s3encryptionlist0)
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let s3EncryptionContainer = try containerValues.decodeIfPresent([S3Encryption?].self, forKey: .s3Encryption)
        var s3EncryptionDecoded0:[S3Encryption]? = nil
        if let s3EncryptionContainer = s3EncryptionContainer {
            s3EncryptionDecoded0 = [S3Encryption]()
            for structure0 in s3EncryptionContainer {
                if let structure0 = structure0 {
                    s3EncryptionDecoded0?.append(structure0)
                }
            }
        }
        s3Encryption = s3EncryptionDecoded0
        let cloudWatchEncryptionDecoded = try containerValues.decodeIfPresent(CloudWatchEncryption.self, forKey: .cloudWatchEncryption)
        cloudWatchEncryption = cloudWatchEncryptionDecoded
        let jobBookmarksEncryptionDecoded = try containerValues.decodeIfPresent(JobBookmarksEncryption.self, forKey: .jobBookmarksEncryption)
        jobBookmarksEncryption = jobBookmarksEncryptionDecoded
    }
}
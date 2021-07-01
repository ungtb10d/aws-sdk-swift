// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension PackageVersionDescription: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case displayName
        case format
        case homePage
        case licenses
        case namespace
        case packageName
        case publishedTime
        case revision
        case sourceCodeRepository
        case status
        case summary
        case version
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let displayName = displayName {
            try encodeContainer.encode(displayName, forKey: .displayName)
        }
        if let format = format {
            try encodeContainer.encode(format.rawValue, forKey: .format)
        }
        if let homePage = homePage {
            try encodeContainer.encode(homePage, forKey: .homePage)
        }
        if let licenses = licenses {
            var licensesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .licenses)
            for licenseinfolist0 in licenses {
                try licensesContainer.encode(licenseinfolist0)
            }
        }
        if let namespace = namespace {
            try encodeContainer.encode(namespace, forKey: .namespace)
        }
        if let packageName = packageName {
            try encodeContainer.encode(packageName, forKey: .packageName)
        }
        if let publishedTime = publishedTime {
            try encodeContainer.encode(publishedTime.timeIntervalSince1970, forKey: .publishedTime)
        }
        if let revision = revision {
            try encodeContainer.encode(revision, forKey: .revision)
        }
        if let sourceCodeRepository = sourceCodeRepository {
            try encodeContainer.encode(sourceCodeRepository, forKey: .sourceCodeRepository)
        }
        if let status = status {
            try encodeContainer.encode(status.rawValue, forKey: .status)
        }
        if let summary = summary {
            try encodeContainer.encode(summary, forKey: .summary)
        }
        if let version = version {
            try encodeContainer.encode(version, forKey: .version)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let formatDecoded = try containerValues.decodeIfPresent(PackageFormat.self, forKey: .format)
        format = formatDecoded
        let namespaceDecoded = try containerValues.decodeIfPresent(String.self, forKey: .namespace)
        namespace = namespaceDecoded
        let packageNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .packageName)
        packageName = packageNameDecoded
        let displayNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .displayName)
        displayName = displayNameDecoded
        let versionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .version)
        version = versionDecoded
        let summaryDecoded = try containerValues.decodeIfPresent(String.self, forKey: .summary)
        summary = summaryDecoded
        let homePageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .homePage)
        homePage = homePageDecoded
        let sourceCodeRepositoryDecoded = try containerValues.decodeIfPresent(String.self, forKey: .sourceCodeRepository)
        sourceCodeRepository = sourceCodeRepositoryDecoded
        let publishedTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .publishedTime)
        publishedTime = publishedTimeDecoded
        let licensesContainer = try containerValues.decodeIfPresent([LicenseInfo?].self, forKey: .licenses)
        var licensesDecoded0:[LicenseInfo]? = nil
        if let licensesContainer = licensesContainer {
            licensesDecoded0 = [LicenseInfo]()
            for structure0 in licensesContainer {
                if let structure0 = structure0 {
                    licensesDecoded0?.append(structure0)
                }
            }
        }
        licenses = licensesDecoded0
        let revisionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .revision)
        revision = revisionDecoded
        let statusDecoded = try containerValues.decodeIfPresent(PackageVersionStatus.self, forKey: .status)
        status = statusDecoded
    }
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateApplicationInput: Equatable {
    /// <p>The name of the author publishing the app.</p><p>Minimum length=1. Maximum length=127.</p><p>Pattern "^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$";</p>
    public let author: String?
    /// <p>The description of the application.</p><p>Minimum length=1. Maximum length=256</p>
    public let description: String?
    /// <p>A URL with more information about the application, for example the location of your GitHub repository for the application.</p>
    public let homePageUrl: String?
    /// <p>Labels to improve discovery of apps in search results.</p><p>Minimum length=1. Maximum length=127. Maximum number of labels: 10</p><p>Pattern: "^[a-zA-Z0-9+\\-_:\\/@]+$";</p>
    public let labels: [String]?
    /// <p>A local text file that contains the license of the app that matches the spdxLicenseID value of your application.
    ///  The file has the format file://&lt;path>/&lt;filename>.</p><p>Maximum size 5 MB</p><p>You can specify only one of licenseBody and licenseUrl; otherwise, an error results.</p>
    public let licenseBody: String?
    /// <p>A link to the S3 object that contains the license of the app that matches the spdxLicenseID value of your application.</p><p>Maximum size 5 MB</p><p>You can specify only one of licenseBody and licenseUrl; otherwise, an error results.</p>
    public let licenseUrl: String?
    /// <p>The name of the application that you want to publish.</p><p>Minimum length=1. Maximum length=140</p><p>Pattern: "[a-zA-Z0-9\\-]+";</p>
    public let name: String?
    /// <p>A local text readme file in Markdown language that contains a more detailed description of the application and how it works.
    ///  The file has the format file://&lt;path>/&lt;filename>.</p><p>Maximum size 5 MB</p><p>You can specify only one of readmeBody and readmeUrl; otherwise, an error results.</p>
    public let readmeBody: String?
    /// <p>A link to the S3 object in Markdown language that contains a more detailed description of the application and how it works.</p><p>Maximum size 5 MB</p><p>You can specify only one of readmeBody and readmeUrl; otherwise, an error results.</p>
    public let readmeUrl: String?
    /// <p>The semantic version of the application:</p><p>
    ///  <a href="https://semver.org/">https://semver.org/</a>
    ///  </p>
    public let semanticVersion: String?
    /// <p>A link to the S3 object that contains the ZIP archive of the source code for this version of your application.</p><p>Maximum size 50 MB</p>
    public let sourceCodeArchiveUrl: String?
    /// <p>A link to a public repository for the source code of your application, for example the URL of a specific GitHub commit.</p>
    public let sourceCodeUrl: String?
    /// <p>A valid identifier from <a href="https://spdx.org/licenses/">https://spdx.org/licenses/</a>.</p>
    public let spdxLicenseId: String?
    /// <p>The local raw packaged AWS SAM template file of your application.
    ///  The file has the format file://&lt;path>/&lt;filename>.</p><p>You can specify only one of templateBody and templateUrl; otherwise an error results.</p>
    public let templateBody: String?
    /// <p>A link to the S3 object containing the packaged AWS SAM template of your application.</p><p>You can specify only one of templateBody and templateUrl; otherwise an error results.</p>
    public let templateUrl: String?

    public init (
        author: String? = nil,
        description: String? = nil,
        homePageUrl: String? = nil,
        labels: [String]? = nil,
        licenseBody: String? = nil,
        licenseUrl: String? = nil,
        name: String? = nil,
        readmeBody: String? = nil,
        readmeUrl: String? = nil,
        semanticVersion: String? = nil,
        sourceCodeArchiveUrl: String? = nil,
        sourceCodeUrl: String? = nil,
        spdxLicenseId: String? = nil,
        templateBody: String? = nil,
        templateUrl: String? = nil
    )
    {
        self.author = author
        self.description = description
        self.homePageUrl = homePageUrl
        self.labels = labels
        self.licenseBody = licenseBody
        self.licenseUrl = licenseUrl
        self.name = name
        self.readmeBody = readmeBody
        self.readmeUrl = readmeUrl
        self.semanticVersion = semanticVersion
        self.sourceCodeArchiveUrl = sourceCodeArchiveUrl
        self.sourceCodeUrl = sourceCodeUrl
        self.spdxLicenseId = spdxLicenseId
        self.templateBody = templateBody
        self.templateUrl = templateUrl
    }
}

extension CreateApplicationInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateApplicationInput(author: \(String(describing: author)), description: \(String(describing: description)), homePageUrl: \(String(describing: homePageUrl)), labels: \(String(describing: labels)), licenseBody: \(String(describing: licenseBody)), licenseUrl: \(String(describing: licenseUrl)), name: \(String(describing: name)), readmeBody: \(String(describing: readmeBody)), readmeUrl: \(String(describing: readmeUrl)), semanticVersion: \(String(describing: semanticVersion)), sourceCodeArchiveUrl: \(String(describing: sourceCodeArchiveUrl)), sourceCodeUrl: \(String(describing: sourceCodeUrl)), spdxLicenseId: \(String(describing: spdxLicenseId)), templateBody: \(String(describing: templateBody)), templateUrl: \(String(describing: templateUrl)))"}
}
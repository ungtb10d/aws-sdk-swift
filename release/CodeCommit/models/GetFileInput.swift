// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetFileInput: Equatable {
    /// <p>The fully quaified reference that identifies the commit that contains the file. For
    ///             example, you can specify a full commit ID, a tag, a branch name, or a reference such as
    ///             refs/heads/master. If none is provided, the head commit is used.</p>
    public let commitSpecifier: String?
    /// <p>The fully qualified path to the file, including the full name and extension of the
    ///             file. For example, /examples/file.md is the fully qualified path to a file named file.md
    ///             in a folder named examples.</p>
    public let filePath: String?
    /// <p>The name of the repository that contains the file.</p>
    public let repositoryName: String?

    public init (
        commitSpecifier: String? = nil,
        filePath: String? = nil,
        repositoryName: String? = nil
    )
    {
        self.commitSpecifier = commitSpecifier
        self.filePath = filePath
        self.repositoryName = repositoryName
    }
}

extension GetFileInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetFileInput(commitSpecifier: \(String(describing: commitSpecifier)), filePath: \(String(describing: filePath)), repositoryName: \(String(describing: repositoryName)))"}
}
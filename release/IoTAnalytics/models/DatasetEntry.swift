// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The reference to a data set entry.</p>
public struct DatasetEntry: Equatable {
    /// <p>The presigned URI of the data set item.</p>
    public let dataURI: String?
    /// <p>The name of the data set item.</p>
    public let entryName: String?

    public init (
        dataURI: String? = nil,
        entryName: String? = nil
    )
    {
        self.dataURI = dataURI
        self.entryName = entryName
    }
}

extension DatasetEntry: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DatasetEntry(dataURI: \(String(describing: dataURI)), entryName: \(String(describing: entryName)))"}
}
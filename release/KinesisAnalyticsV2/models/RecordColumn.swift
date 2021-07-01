// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>For a SQL-based Kinesis Data Analytics application, describes the mapping of each
///       data element in the streaming source to the corresponding column in the in-application
///       stream.</p>
///          <p>Also used to describe the format of the reference data source.</p>
public struct RecordColumn: Equatable {
    /// <p>A reference to the data element in the streaming input or the reference data
    ///       source.</p>
    public let mapping: String?
    /// <p>The name of the column that is created in the in-application input stream or reference
    ///       table.</p>
    public let name: String?
    /// <p>The type of column created in the in-application input stream or reference table.</p>
    public let sqlType: String?

    public init (
        mapping: String? = nil,
        name: String? = nil,
        sqlType: String? = nil
    )
    {
        self.mapping = mapping
        self.name = name
        self.sqlType = sqlType
    }
}

extension RecordColumn: CustomDebugStringConvertible {
    public var debugDescription: String {
        "RecordColumn(mapping: \(String(describing: mapping)), name: \(String(describing: name)), sqlType: \(String(describing: sqlType)))"}
}
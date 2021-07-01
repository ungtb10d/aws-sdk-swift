// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A <i>logical table</i> is a unit that joins and that data
///             transformations operate on. A logical table has a source, which can be either a physical
///             table or result of a join. When a logical table points to a physical table, the logical
///             table acts as a mutable copy of that physical table through transform operations.</p>
public struct LogicalTable: Equatable {
    /// <p>A display name for the logical table.</p>
    public let alias: String?
    /// <p>Transform operations that act on this logical table.</p>
    public let dataTransforms: [TransformOperation]?
    /// <p>Source of this logical table.</p>
    public let source: LogicalTableSource?

    public init (
        alias: String? = nil,
        dataTransforms: [TransformOperation]? = nil,
        source: LogicalTableSource? = nil
    )
    {
        self.alias = alias
        self.dataTransforms = dataTransforms
        self.source = source
    }
}

extension LogicalTable: CustomDebugStringConvertible {
    public var debugDescription: String {
        "LogicalTable(alias: \(String(describing: alias)), dataTransforms: \(String(describing: dataTransforms)), source: \(String(describing: source)))"}
}
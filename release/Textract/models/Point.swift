// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The X and Y coordinates of a point on a document page. The X and Y
///          values that are returned are ratios of the overall document page size. For example, if the
///          input document is 700 x 200 and the operation returns X=0.5 and Y=0.25, then the point is
///          at the (350,50) pixel coordinate on the document page.</p>
///
///          <p>An array of <code>Point</code> objects, <code>Polygon</code>, is returned
///          by <a>DetectDocumentText</a>. <code>Polygon</code> represents a fine-grained
///          polygon around detected text. For more information, see Geometry in the Amazon Textract
///          Developer Guide. </p>
public struct Point: Equatable {
    /// <p>The value of the X coordinate for a point on a <code>Polygon</code>.</p>
    public let x: Float
    /// <p>The value of the Y coordinate for a point on a <code>Polygon</code>.</p>
    public let y: Float

    public init (
        x: Float = 0.0,
        y: Float = 0.0
    )
    {
        self.x = x
        self.y = y
    }
}

extension Point: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Point(x: \(String(describing: x)), y: \(String(describing: y)))"}
}
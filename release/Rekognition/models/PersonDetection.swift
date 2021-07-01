// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Details and path tracking information for a single time a person's path is tracked in a video.
///             Amazon Rekognition operations that track people's paths return an array of <code>PersonDetection</code> objects
///             with elements for each time a person's path is tracked in a video. </p>
///
///          <p>For more information, see GetPersonTracking in the Amazon Rekognition Developer Guide. </p>
public struct PersonDetection: Equatable {
    /// <p>Details about a person whose path was tracked in a video.</p>
    public let person: PersonDetail?
    /// <p>The time, in milliseconds from the start of the video, that the person's path was tracked.</p>
    public let timestamp: Int

    public init (
        person: PersonDetail? = nil,
        timestamp: Int = 0
    )
    {
        self.person = person
        self.timestamp = timestamp
    }
}

extension PersonDetection: CustomDebugStringConvertible {
    public var debugDescription: String {
        "PersonDetection(person: \(String(describing: person)), timestamp: \(String(describing: timestamp)))"}
}
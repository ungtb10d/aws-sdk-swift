// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Details describing an incident record.</p>
public struct IncidentRecordSummary: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the incident.</p>
    public let arn: String?
    /// <p>The time the incident was created.</p>
    public let creationTime: Date?
    /// <p>Defines the impact to customers and applications.</p>
    public let impact: Int?
    /// <p>What caused Incident Manager to create the incident.</p>
    public let incidentRecordSource: IncidentRecordSource?
    /// <p>The time the incident was resolved.</p>
    public let resolvedTime: Date?
    /// <p>The current status of the incident.</p>
    public let status: IncidentRecordStatus?
    /// <p>The title of the incident. This value is either provided by the response plan or
    ///          overwritten on creation.</p>
    public let title: String?

    public init (
        arn: String? = nil,
        creationTime: Date? = nil,
        impact: Int? = nil,
        incidentRecordSource: IncidentRecordSource? = nil,
        resolvedTime: Date? = nil,
        status: IncidentRecordStatus? = nil,
        title: String? = nil
    )
    {
        self.arn = arn
        self.creationTime = creationTime
        self.impact = impact
        self.incidentRecordSource = incidentRecordSource
        self.resolvedTime = resolvedTime
        self.status = status
        self.title = title
    }
}

extension IncidentRecordSummary: CustomDebugStringConvertible {
    public var debugDescription: String {
        "IncidentRecordSummary(arn: \(String(describing: arn)), creationTime: \(String(describing: creationTime)), impact: \(String(describing: impact)), incidentRecordSource: \(String(describing: incidentRecordSource)), resolvedTime: \(String(describing: resolvedTime)), status: \(String(describing: status)), title: \(String(describing: title)))"}
}
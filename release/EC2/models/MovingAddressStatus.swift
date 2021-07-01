// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes the status of a moving Elastic IP address.</p>
public struct MovingAddressStatus: Equatable {
    /// <p>The status of the Elastic IP address that's being moved to the EC2-VPC platform, or restored to the EC2-Classic platform.</p>
    public let moveStatus: MoveStatus?
    /// <p>The Elastic IP address.</p>
    public let publicIp: String?

    public init (
        moveStatus: MoveStatus? = nil,
        publicIp: String? = nil
    )
    {
        self.moveStatus = moveStatus
        self.publicIp = publicIp
    }
}

extension MovingAddressStatus: CustomDebugStringConvertible {
    public var debugDescription: String {
        "MovingAddressStatus(moveStatus: \(String(describing: moveStatus)), publicIp: \(String(describing: publicIp)))"}
}
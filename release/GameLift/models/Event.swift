// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Log entry describing an event that involves GameLift resources (such as a fleet). In
///             addition to tracking activity, event codes and messages can provide additional
///             information for troubleshooting and debugging problems.</p>
///         <p>
///             <b>Related actions</b>
///          </p>
///         <p>
///             <a>DescribeFleetEvents</a>
///          </p>
public struct Event: Equatable {
    /// <p>The type of event being logged. </p>
    ///         <p>
    ///             <b>Fleet creation events (ordered by fleet creation activity):</b>
    ///          </p>
    ///         <ul>
    ///             <li>
    ///                 <p>FLEET_CREATED -- A fleet resource was successfully created with a status of
    ///                         <code>NEW</code>. Event messaging includes the fleet ID.</p>
    ///             </li>
    ///             <li>
    ///                 <p>FLEET_STATE_DOWNLOADING -- Fleet status changed from <code>NEW</code> to
    ///                         <code>DOWNLOADING</code>. The compressed build has started downloading to a
    ///                     fleet instance for installation.</p>
    ///             </li>
    ///             <li>
    ///                 <p> FLEET_BINARY_DOWNLOAD_FAILED -- The build failed to download to the fleet
    ///                     instance.</p>
    ///             </li>
    ///             <li>
    ///                 <p>FLEET_CREATION_EXTRACTING_BUILD – The game server build was successfully
    ///                     downloaded to an instance, and the build files are now being extracted from the
    ///                     uploaded build and saved to an instance. Failure at this stage prevents a fleet
    ///                     from moving to <code>ACTIVE</code> status. Logs for this stage display a list of
    ///                     the files that are extracted and saved on the instance. Access the logs by using
    ///                     the URL in <i>PreSignedLogUrl</i>.</p>
    ///             </li>
    ///             <li>
    ///                 <p>FLEET_CREATION_RUNNING_INSTALLER – The game server build files were
    ///                     successfully extracted, and the GameLift is now running the build's install
    ///                     script (if one is included). Failure in this stage prevents a fleet from moving
    ///                     to <code>ACTIVE</code> status. Logs for this stage list the installation steps
    ///                     and whether or not the install completed successfully. Access the logs by using
    ///                     the URL in <i>PreSignedLogUrl</i>. </p>
    ///             </li>
    ///             <li>
    ///                 <p>FLEET_CREATION_VALIDATING_RUNTIME_CONFIG -- The build process was successful,
    ///                     and the GameLift is now verifying that the game server launch paths, which are
    ///                     specified in the fleet's runtime configuration, exist. If any listed launch path
    ///                     exists, GameLift tries to launch a game server process and waits for the process
    ///                     to report ready. Failures in this stage prevent a fleet from moving to
    ///                         <code>ACTIVE</code> status. Logs for this stage list the launch paths in the
    ///                     runtime configuration and indicate whether each is found. Access the logs by
    ///                     using the URL in <i>PreSignedLogUrl</i>.
    ///
    ///                 </p>
    ///             </li>
    ///             <li>
    ///                 <p>FLEET_STATE_VALIDATING -- Fleet status changed from
    ///                         <code>DOWNLOADING</code> to <code>VALIDATING</code>.</p>
    ///             </li>
    ///             <li>
    ///                 <p> FLEET_VALIDATION_LAUNCH_PATH_NOT_FOUND -- Validation of the runtime
    ///                     configuration failed because the executable specified in a launch path does not
    ///                     exist on the instance.</p>
    ///             </li>
    ///             <li>
    ///                 <p>FLEET_STATE_BUILDING -- Fleet status changed from <code>VALIDATING</code>
    ///                     to <code>BUILDING</code>.</p>
    ///             </li>
    ///             <li>
    ///                 <p>FLEET_VALIDATION_EXECUTABLE_RUNTIME_FAILURE -- Validation of the runtime
    ///                     configuration failed because the executable specified in a launch path failed to
    ///                     run on the fleet instance.</p>
    ///             </li>
    ///             <li>
    ///                 <p>FLEET_STATE_ACTIVATING -- Fleet status changed from <code>BUILDING</code>
    ///                     to <code>ACTIVATING</code>. </p>
    ///             </li>
    ///             <li>
    ///                 <p> FLEET_ACTIVATION_FAILED - The fleet failed to successfully complete one of
    ///                     the steps in the fleet activation process. This event code indicates that the
    ///                     game build was successfully downloaded to a fleet instance, built, and
    ///                     validated, but was not able to start a server process. Learn more at
    ///                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-debug.html#fleets-creating-debug-creation"> Debug Fleet
    ///                         Creation Issues</a>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                 <p>FLEET_STATE_ACTIVE -- The fleet's status changed from
    ///                         <code>ACTIVATING</code> to <code>ACTIVE</code>. The fleet is now ready to
    ///                     host game sessions.</p>
    ///             </li>
    ///          </ul>
    ///         <p>
    ///             <b>VPC peering events:</b>
    ///          </p>
    ///         <ul>
    ///             <li>
    ///                 <p>FLEET_VPC_PEERING_SUCCEEDED -- A VPC peering connection has been
    ///                     established between the VPC for an GameLift fleet and a VPC in your AWS
    ///                     account.</p>
    ///             </li>
    ///             <li>
    ///                 <p>FLEET_VPC_PEERING_FAILED -- A requested VPC peering connection has failed.
    ///                     Event details and status information (see <a>DescribeVpcPeeringConnections</a>) provide additional detail. A
    ///                     common reason for peering failure is that the two VPCs have overlapping CIDR
    ///                     blocks of IPv4 addresses. To resolve this, change the CIDR block for the VPC in
    ///                     your AWS account. For more information on VPC peering failures, see <a href="https://docs.aws.amazon.com/AmazonVPC/latest/PeeringGuide/invalid-peering-configurations.html">https://docs.aws.amazon.com/AmazonVPC/latest/PeeringGuide/invalid-peering-configurations.html</a>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                 <p>FLEET_VPC_PEERING_DELETED -- A VPC peering connection has been successfully
    ///                     deleted.</p>
    ///             </li>
    ///          </ul>
    ///         <p>
    ///             <b>Spot instance events:</b>
    ///          </p>
    ///         <ul>
    ///             <li>
    ///                 <p> INSTANCE_INTERRUPTED -- A spot instance was interrupted by EC2 with a
    ///                     two-minute notification.</p>
    ///             </li>
    ///          </ul>
    ///         <p>
    ///             <b>Other fleet events:</b>
    ///          </p>
    ///         <ul>
    ///             <li>
    ///                 <p>FLEET_SCALING_EVENT -- A change was made to the fleet's capacity settings
    ///                     (desired instances, minimum/maximum scaling limits). Event messaging includes
    ///                     the new capacity settings.</p>
    ///             </li>
    ///             <li>
    ///                 <p>FLEET_NEW_GAME_SESSION_PROTECTION_POLICY_UPDATED -- A change was made to
    ///                     the fleet's game session protection policy setting. Event messaging includes
    ///                     both the old and new policy setting. </p>
    ///             </li>
    ///             <li>
    ///                 <p>FLEET_DELETED -- A request to delete a fleet was initiated.</p>
    ///             </li>
    ///             <li>
    ///                 <p> GENERIC_EVENT -- An unspecified event has occurred.</p>
    ///             </li>
    ///          </ul>
    public let eventCode: EventCode?
    /// <p>A unique identifier for a fleet event.</p>
    public let eventId: String?
    /// <p>Time stamp indicating when this event occurred. Format is a number expressed in Unix time as milliseconds (for example <code>"1469498468.057"</code>).</p>
    public let eventTime: Date?
    /// <p>Additional information related to the event.</p>
    public let message: String?
    /// <p>Location of stored logs with additional detail that is related to the event. This
    ///             is useful for debugging issues. The URL is valid for 15 minutes. You can also access
    ///             fleet creation logs through the GameLift console.</p>
    public let preSignedLogUrl: String?
    /// <p>A unique identifier for an event resource, such as a fleet ID.</p>
    public let resourceId: String?

    public init (
        eventCode: EventCode? = nil,
        eventId: String? = nil,
        eventTime: Date? = nil,
        message: String? = nil,
        preSignedLogUrl: String? = nil,
        resourceId: String? = nil
    )
    {
        self.eventCode = eventCode
        self.eventId = eventId
        self.eventTime = eventTime
        self.message = message
        self.preSignedLogUrl = preSignedLogUrl
        self.resourceId = resourceId
    }
}

extension Event: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Event(eventCode: \(String(describing: eventCode)), eventId: \(String(describing: eventId)), eventTime: \(String(describing: eventTime)), message: \(String(describing: message)), preSignedLogUrl: \(String(describing: preSignedLogUrl)), resourceId: \(String(describing: resourceId)))"}
}
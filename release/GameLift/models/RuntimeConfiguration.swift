// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A collection of server process configurations that describe the set of processes to
///             run on each instance in a fleet. Server processes run either an executable in a custom
///             game build or a Realtime Servers script. GameLift launches the configured processes, manages their
///             life cycle, and replaces them as needed. Each instance checks regularly for an updated
///             runtime configuration. </p>
///         <p>A GameLift instance is limited to 50 processes running concurrently. To calculate the
///             total number of processes in a runtime configuration, add the values of the
///                 <code>ConcurrentExecutions</code> parameter for each <a>ServerProcess</a>. Learn more about <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-multiprocess.html"> Running Multiple
///                 Processes on a Fleet</a>.</p>
///         <p>
///             <b>Related actions</b>
///          </p>
///         <p>
///             <a>DescribeRuntimeConfiguration</a> | <a>UpdateRuntimeConfiguration</a>
///          </p>
public struct RuntimeConfiguration: Equatable {
    /// <p>The maximum amount of time (in seconds) allowed to launch a new game session and have
    ///             it report ready to host players. During this time, the game session is in status
    ///                 <code>ACTIVATING</code>. If the game session does not become active before the
    ///             timeout, it is ended and the game session status is changed to
    ///             <code>TERMINATED</code>.</p>
    public let gameSessionActivationTimeoutSeconds: Int?
    /// <p>The number of game sessions in status <code>ACTIVATING</code> to allow on an instance.
    ///             This setting limits the instance resources that can be used for new game activations at
    ///             any one time.</p>
    public let maxConcurrentGameSessionActivations: Int?
    /// <p>A collection of server process configurations that identify what server processes to
    ///             run on each instance in a fleet.</p>
    public let serverProcesses: [ServerProcess]?

    public init (
        gameSessionActivationTimeoutSeconds: Int? = nil,
        maxConcurrentGameSessionActivations: Int? = nil,
        serverProcesses: [ServerProcess]? = nil
    )
    {
        self.gameSessionActivationTimeoutSeconds = gameSessionActivationTimeoutSeconds
        self.maxConcurrentGameSessionActivations = maxConcurrentGameSessionActivations
        self.serverProcesses = serverProcesses
    }
}

extension RuntimeConfiguration: CustomDebugStringConvertible {
    public var debugDescription: String {
        "RuntimeConfiguration(gameSessionActivationTimeoutSeconds: \(String(describing: gameSessionActivationTimeoutSeconds)), maxConcurrentGameSessionActivations: \(String(describing: maxConcurrentGameSessionActivations)), serverProcesses: \(String(describing: serverProcesses)))"}
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Information about a root volume replacement task.</p>
public struct ReplaceRootVolumeTask: Equatable {
    /// <p>The time the task completed.</p>
    public let completeTime: String?
    /// <p>The ID of the instance for which the root volume replacement task was created.</p>
    public let instanceId: String?
    /// <p>The ID of the root volume replacement task.</p>
    public let replaceRootVolumeTaskId: String?
    /// <p>The time the task was started.</p>
    public let startTime: String?
    /// <p>The tags assigned to the task.</p>
    public let tags: [Tag]?
    /// <p>The state of the task. The task can be in one of the following states:</p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <code>pending</code> - the replacement volume is being created.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>in-progress</code> - the original volume is being detached and the
    ///           replacement volume is being attached.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>succeeded</code> - the replacement volume has been successfully attached
    ///           to the instance and the instance is available.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>failing</code> - the replacement task is in the process of failing.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>failed</code> - the replacement task has failed but the original root
    ///           volume is still attached.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>failing-detached</code> - the replacement task is in the process of failing.
    ///           The instance might have no root volume attached.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>failed-detached</code> - the replacement task has failed and the instance
    ///           has no root volume attached.</p>
    ///             </li>
    ///          </ul>
    public let taskState: ReplaceRootVolumeTaskState?

    public init (
        completeTime: String? = nil,
        instanceId: String? = nil,
        replaceRootVolumeTaskId: String? = nil,
        startTime: String? = nil,
        tags: [Tag]? = nil,
        taskState: ReplaceRootVolumeTaskState? = nil
    )
    {
        self.completeTime = completeTime
        self.instanceId = instanceId
        self.replaceRootVolumeTaskId = replaceRootVolumeTaskId
        self.startTime = startTime
        self.tags = tags
        self.taskState = taskState
    }
}

extension ReplaceRootVolumeTask: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ReplaceRootVolumeTask(completeTime: \(String(describing: completeTime)), instanceId: \(String(describing: instanceId)), replaceRootVolumeTaskId: \(String(describing: replaceRootVolumeTaskId)), startTime: \(String(describing: startTime)), tags: \(String(describing: tags)), taskState: \(String(describing: taskState)))"}
}
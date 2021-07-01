// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateTriggerInput: Equatable {
    /// <p>The actions initiated by this trigger when it fires.</p>
    public let actions: [Action]?
    /// <p>A description of the new trigger.</p>
    public let description: String?
    /// <p>The name of the trigger.</p>
    public let name: String?
    /// <p>A predicate to specify when the new trigger should fire.</p>
    ///          <p>This field is required when the trigger type is <code>CONDITIONAL</code>.</p>
    public let predicate: Predicate?
    /// <p>A <code>cron</code> expression used to specify the schedule (see <a href="https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html">Time-Based Schedules for Jobs and Crawlers</a>. For example, to run
    ///       something every day at 12:15 UTC, you would specify:
    ///       <code>cron(15 12 * * ? *)</code>.</p>
    ///          <p>This field is required when the trigger type is SCHEDULED.</p>
    public let schedule: String?
    /// <p>Set to <code>true</code> to start <code>SCHEDULED</code> and <code>CONDITIONAL</code>
    ///       triggers when created. True is not supported for <code>ON_DEMAND</code> triggers.</p>
    public let startOnCreation: Bool
    /// <p>The tags to use with this trigger. You may use tags to limit access to the trigger.
    ///       For more information about tags in AWS Glue, see
    ///       <a href="https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html">AWS Tags in AWS
    ///         Glue</a> in the developer guide. </p>
    public let tags: [String:String]?
    /// <p>The type of the new trigger.</p>
    public let type: TriggerType?
    /// <p>The name of the workflow associated with the trigger.</p>
    public let workflowName: String?

    public init (
        actions: [Action]? = nil,
        description: String? = nil,
        name: String? = nil,
        predicate: Predicate? = nil,
        schedule: String? = nil,
        startOnCreation: Bool = false,
        tags: [String:String]? = nil,
        type: TriggerType? = nil,
        workflowName: String? = nil
    )
    {
        self.actions = actions
        self.description = description
        self.name = name
        self.predicate = predicate
        self.schedule = schedule
        self.startOnCreation = startOnCreation
        self.tags = tags
        self.type = type
        self.workflowName = workflowName
    }
}

extension CreateTriggerInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateTriggerInput(actions: \(String(describing: actions)), description: \(String(describing: description)), name: \(String(describing: name)), predicate: \(String(describing: predicate)), schedule: \(String(describing: schedule)), startOnCreation: \(String(describing: startOnCreation)), tags: \(String(describing: tags)), type: \(String(describing: type)), workflowName: \(String(describing: workflowName)))"}
}
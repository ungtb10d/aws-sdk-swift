// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeExecutionOutputResponse: Equatable {
    /// <p>The Amazon Resource Name (ARN) that identifies the execution.</p>
    public let executionArn: String?
    /// <p>The string that contains the JSON input data of the execution. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>
    public let input: String?
    /// <p>Provides details about execution input or output.</p>
    public let inputDetails: CloudWatchEventsExecutionDataDetails?
    /// <p>The name of the execution.</p>
    ///          <p>A name must <i>not</i> contain:</p>
    ///          <ul>
    ///             <li>
    ///                <p>white space</p>
    ///             </li>
    ///             <li>
    ///                <p>brackets <code>< > { } [ ]</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                <p>wildcard characters <code>? *</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                <p>special characters <code>" # % \ ^ | ~ ` $ & , ; : /</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>)</p>
    ///             </li>
    ///          </ul>
    ///          <p>To enable logging with CloudWatch Logs, the name should only contain  0-9, A-Z, a-z, - and _.</p>
    public let name: String?
    /// <p>The JSON output data of the execution. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>
    ///          <note>
    ///             <p>This field is set only if the execution succeeds. If the execution fails, this field is
    ///         null.</p>
    ///          </note>
    public let output: String?
    /// <p>Provides details about execution input or output.</p>
    public let outputDetails: CloudWatchEventsExecutionDataDetails?
    /// <p>The date the execution is started.</p>
    public let startDate: Date?
    /// <p>The Amazon Resource Name (ARN) of the executed stated machine.</p>
    public let stateMachineArn: String?
    /// <p>The current status of the execution.</p>
    public let status: ExecutionStatus?
    /// <p>If the execution has already ended, the date the execution stopped.</p>
    public let stopDate: Date?
    /// <p>The AWS X-Ray trace header that was passed to the execution.</p>
    public let traceHeader: String?

    public init (
        executionArn: String? = nil,
        input: String? = nil,
        inputDetails: CloudWatchEventsExecutionDataDetails? = nil,
        name: String? = nil,
        output: String? = nil,
        outputDetails: CloudWatchEventsExecutionDataDetails? = nil,
        startDate: Date? = nil,
        stateMachineArn: String? = nil,
        status: ExecutionStatus? = nil,
        stopDate: Date? = nil,
        traceHeader: String? = nil
    )
    {
        self.executionArn = executionArn
        self.input = input
        self.inputDetails = inputDetails
        self.name = name
        self.output = output
        self.outputDetails = outputDetails
        self.startDate = startDate
        self.stateMachineArn = stateMachineArn
        self.status = status
        self.stopDate = stopDate
        self.traceHeader = traceHeader
    }
}

extension DescribeExecutionOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeExecutionOutputResponse(executionArn: \(String(describing: executionArn)), input: \(String(describing: input)), inputDetails: \(String(describing: inputDetails)), name: \(String(describing: name)), output: \(String(describing: output)), outputDetails: \(String(describing: outputDetails)), startDate: \(String(describing: startDate)), stateMachineArn: \(String(describing: stateMachineArn)), status: \(String(describing: status)), stopDate: \(String(describing: stopDate)), traceHeader: \(String(describing: traceHeader)))"}
}
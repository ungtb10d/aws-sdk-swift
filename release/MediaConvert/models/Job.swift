// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Each job converts an input file into an output file or files. For more information, see the User Guide at https://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
public struct Job: Equatable {
    /// Accelerated transcoding can significantly speed up jobs with long, visually complex content.
    public let accelerationSettings: AccelerationSettings?
    /// Describes whether the current job is running with accelerated transcoding. For jobs that have Acceleration (AccelerationMode) set to DISABLED, AccelerationStatus is always NOT_APPLICABLE. For jobs that have Acceleration (AccelerationMode) set to ENABLED or PREFERRED, AccelerationStatus is one of the other states. AccelerationStatus is IN_PROGRESS initially, while the service determines whether the input files and job settings are compatible with accelerated transcoding. If they are, AcclerationStatus is ACCELERATED. If your input files and job settings aren't compatible with accelerated transcoding, the service either fails your job or runs it without accelerated transcoding, depending on how you set Acceleration (AccelerationMode). When the service runs your job without accelerated transcoding, AccelerationStatus is NOT_ACCELERATED.
    public let accelerationStatus: AccelerationStatus?
    /// An identifier for this resource that is unique within all of AWS.
    public let arn: String?
    /// The tag type that AWS Billing and Cost Management will use to sort your AWS Elemental MediaConvert costs on any billing report that you set up.
    public let billingTagsSource: BillingTagsSource?
    /// The time, in Unix epoch format in seconds, when the job got created.
    public let createdAt: Date?
    /// A job's phase can be PROBING, TRANSCODING OR UPLOADING
    public let currentPhase: JobPhase?
    /// Error code for the job
    public let errorCode: Int
    /// Error message of Job
    public let errorMessage: String?
    /// Optional list of hop destinations.
    public let hopDestinations: [HopDestination]?
    /// A portion of the job's ARN, unique within your AWS Elemental MediaConvert resources
    public let id: String?
    /// An estimate of how far your job has progressed. This estimate is shown as a percentage of the total time from when your job leaves its queue to when your output files appear in your output Amazon S3 bucket. AWS Elemental MediaConvert provides jobPercentComplete in CloudWatch STATUS_UPDATE events and in the response to GetJob and ListJobs requests. The jobPercentComplete estimate is reliable for the following input containers: Quicktime, Transport Stream, MP4, and MXF. For some jobs, the service can't provide information about job progress. In those cases, jobPercentComplete returns a null value.
    public let jobPercentComplete: Int
    /// The job template that the job is created from, if it is created from a job template.
    public let jobTemplate: String?
    /// Provides messages from the service about jobs that you have already successfully submitted.
    public let messages: JobMessages?
    /// List of output group details
    public let outputGroupDetails: [OutputGroupDetail]?
    /// Relative priority on the job.
    public let priority: Int
    /// When you create a job, you can specify a queue to send it to. If you don't specify, the job will go to the default queue. For more about queues, see the User Guide topic at https://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
    public let queue: String?
    /// The job's queue hopping history.
    public let queueTransitions: [QueueTransition]?
    /// The number of times that the service automatically attempted to process your job after encountering an error.
    public let retryCount: Int
    /// The IAM role you use for creating this job. For details about permissions, see the User Guide topic at the User Guide at https://docs.aws.amazon.com/mediaconvert/latest/ug/iam-role.html
    public let role: String?
    /// JobSettings contains all the transcode settings for a job.
    public let settings: JobSettings?
    /// Enable this setting when you run a test job to estimate how many reserved transcoding slots (RTS) you need. When this is enabled, MediaConvert runs your job from an on-demand queue with similar performance to what you will see with one RTS in a reserved queue. This setting is disabled by default.
    public let simulateReservedQueue: SimulateReservedQueue?
    /// A job's status can be SUBMITTED, PROGRESSING, COMPLETE, CANCELED, or ERROR.
    public let status: JobStatus?
    /// Specify how often MediaConvert sends STATUS_UPDATE events to Amazon CloudWatch Events. Set the interval, in seconds, between status updates. MediaConvert sends an update at this interval from the time the service begins processing your job to the time it completes the transcode or encounters an error.
    public let statusUpdateInterval: StatusUpdateInterval?
    /// Information about when jobs are submitted, started, and finished is specified in Unix epoch format in seconds.
    public let timing: Timing?
    /// User-defined metadata that you want to associate with an MediaConvert job. You specify metadata in key/value pairs.
    public let userMetadata: [String:String]?

    public init (
        accelerationSettings: AccelerationSettings? = nil,
        accelerationStatus: AccelerationStatus? = nil,
        arn: String? = nil,
        billingTagsSource: BillingTagsSource? = nil,
        createdAt: Date? = nil,
        currentPhase: JobPhase? = nil,
        errorCode: Int = 0,
        errorMessage: String? = nil,
        hopDestinations: [HopDestination]? = nil,
        id: String? = nil,
        jobPercentComplete: Int = 0,
        jobTemplate: String? = nil,
        messages: JobMessages? = nil,
        outputGroupDetails: [OutputGroupDetail]? = nil,
        priority: Int = 0,
        queue: String? = nil,
        queueTransitions: [QueueTransition]? = nil,
        retryCount: Int = 0,
        role: String? = nil,
        settings: JobSettings? = nil,
        simulateReservedQueue: SimulateReservedQueue? = nil,
        status: JobStatus? = nil,
        statusUpdateInterval: StatusUpdateInterval? = nil,
        timing: Timing? = nil,
        userMetadata: [String:String]? = nil
    )
    {
        self.accelerationSettings = accelerationSettings
        self.accelerationStatus = accelerationStatus
        self.arn = arn
        self.billingTagsSource = billingTagsSource
        self.createdAt = createdAt
        self.currentPhase = currentPhase
        self.errorCode = errorCode
        self.errorMessage = errorMessage
        self.hopDestinations = hopDestinations
        self.id = id
        self.jobPercentComplete = jobPercentComplete
        self.jobTemplate = jobTemplate
        self.messages = messages
        self.outputGroupDetails = outputGroupDetails
        self.priority = priority
        self.queue = queue
        self.queueTransitions = queueTransitions
        self.retryCount = retryCount
        self.role = role
        self.settings = settings
        self.simulateReservedQueue = simulateReservedQueue
        self.status = status
        self.statusUpdateInterval = statusUpdateInterval
        self.timing = timing
        self.userMetadata = userMetadata
    }
}

extension Job: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Job(accelerationSettings: \(String(describing: accelerationSettings)), accelerationStatus: \(String(describing: accelerationStatus)), arn: \(String(describing: arn)), billingTagsSource: \(String(describing: billingTagsSource)), createdAt: \(String(describing: createdAt)), currentPhase: \(String(describing: currentPhase)), errorCode: \(String(describing: errorCode)), errorMessage: \(String(describing: errorMessage)), hopDestinations: \(String(describing: hopDestinations)), id: \(String(describing: id)), jobPercentComplete: \(String(describing: jobPercentComplete)), jobTemplate: \(String(describing: jobTemplate)), messages: \(String(describing: messages)), outputGroupDetails: \(String(describing: outputGroupDetails)), priority: \(String(describing: priority)), queue: \(String(describing: queue)), queueTransitions: \(String(describing: queueTransitions)), retryCount: \(String(describing: retryCount)), role: \(String(describing: role)), settings: \(String(describing: settings)), simulateReservedQueue: \(String(describing: simulateReservedQueue)), status: \(String(describing: status)), statusUpdateInterval: \(String(describing: statusUpdateInterval)), timing: \(String(describing: timing)), userMetadata: \(String(describing: userMetadata)))"}
}
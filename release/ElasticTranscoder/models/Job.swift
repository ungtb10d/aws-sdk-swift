// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A section of the response body that provides information about the job that is created.</p>
public struct Job: Equatable {
    /// <p>The Amazon Resource Name (ARN) for the job.</p>
    public let arn: String?
    /// <p>The identifier that Elastic Transcoder assigned to the job. You use this value to get settings for the job or to delete the job.</p>
    public let id: String?
    /// <p>A section of the request or response body that provides information about the file that is being transcoded.</p>
    public let input: JobInput?
    /// <p>Information about the files that you're transcoding. If you specified multiple files for this
    ///             job, Elastic Transcoder stitches the files together to make one output.</p>
    public let inputs: [JobInput]?
    /// <p>If you specified one output for a job, information about that output. If you
    /// 		specified multiple outputs for a job, the Output object lists information about the first
    /// 		output. This duplicates the information that is listed for the first output in the Outputs object.</p>
    ///          <important>
    ///             <p>Outputs recommended instead.</p>
    ///          </important>
    /// 		       <p>A section of the request or response
    ///             body that provides information about the transcoded (target) file. </p>
    public let output: JobOutput?
    /// <p>The value, if any, that you want Elastic Transcoder to prepend to the names of all files that this job
    ///             creates, including output files, thumbnails, and playlists. We recommend that you add a
    ///             / or some other delimiter to the end of the <code>OutputKeyPrefix</code>.</p>
    public let outputKeyPrefix: String?
    /// <p>Information about the output files. We recommend that you use the <code>Outputs</code>
    ///             syntax for all jobs, even when you want Elastic Transcoder to transcode a file into only
    ///             one format. Do not use both the <code>Outputs</code> and <code>Output</code> syntaxes in
    ///             the same request. You can create a maximum of 30 outputs per job. </p>
    ///         <p>If you specify more than one output for a job, Elastic Transcoder creates the files for each output
    ///             in the order in which you specify them in the job.</p>
    public let outputs: [JobOutput]?
    /// <p> The <code>Id</code> of the pipeline that you want Elastic Transcoder to use for transcoding. The
    ///             pipeline determines several settings, including the Amazon S3 bucket from which Elastic Transcoder gets the
    ///             files to transcode and the bucket into which Elastic Transcoder puts the transcoded files. </p>
    public let pipelineId: String?
    /// <important>
    ///             <p>Outputs in Fragmented MP4 or MPEG-TS format only.</p>
    ///          </important>
    /// 		       <p>If you specify a preset in
    ///                 <code>PresetId</code> for which the value of <code>Container</code> is fmp4 (Fragmented MP4) or ts (MPEG-TS),
    ///                 <code>Playlists</code> contains information about the master playlists that you want
    ///             Elastic Transcoder to create.</p>
    ///         <p>The maximum number of master playlists in a job is 30.</p>
    public let playlists: [Playlist]?
    /// <p> The status of the job: <code>Submitted</code>, <code>Progressing</code>, <code>Complete</code>,
    ///                 <code>Canceled</code>, or <code>Error</code>. </p>
    public let status: String?
    /// <p>Details about the timing of a job.</p>
    public let timing: Timing?
    /// <p>User-defined metadata that you want to associate with an Elastic Transcoder job. You specify metadata in
    ///             <code>key/value</code> pairs, and you can add up to 10 <code>key/value</code> pairs per job.
    ///             Elastic Transcoder does not guarantee that <code>key/value</code> pairs are returned in the same
    ///             order in which you specify them.</p>
    ///             <p>Metadata <code>keys</code> and <code>values</code> must use characters from the following list:</p>
    ///             <ul>
    ///             <li>
    ///                <p>
    ///                   <code>0-9</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>A-Z</code> and <code>a-z</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>Space</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                <p>The following symbols: <code>_.:/=+-%@</code>
    ///                </p>
    ///             </li>
    ///          </ul>
    public let userMetadata: [String:String]?

    public init (
        arn: String? = nil,
        id: String? = nil,
        input: JobInput? = nil,
        inputs: [JobInput]? = nil,
        output: JobOutput? = nil,
        outputKeyPrefix: String? = nil,
        outputs: [JobOutput]? = nil,
        pipelineId: String? = nil,
        playlists: [Playlist]? = nil,
        status: String? = nil,
        timing: Timing? = nil,
        userMetadata: [String:String]? = nil
    )
    {
        self.arn = arn
        self.id = id
        self.input = input
        self.inputs = inputs
        self.output = output
        self.outputKeyPrefix = outputKeyPrefix
        self.outputs = outputs
        self.pipelineId = pipelineId
        self.playlists = playlists
        self.status = status
        self.timing = timing
        self.userMetadata = userMetadata
    }
}

extension Job: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Job(arn: \(String(describing: arn)), id: \(String(describing: id)), input: \(String(describing: input)), inputs: \(String(describing: inputs)), output: \(String(describing: output)), outputKeyPrefix: \(String(describing: outputKeyPrefix)), outputs: \(String(describing: outputs)), pipelineId: \(String(describing: pipelineId)), playlists: \(String(describing: playlists)), status: \(String(describing: status)), timing: \(String(describing: timing)), userMetadata: \(String(describing: userMetadata)))"}
}
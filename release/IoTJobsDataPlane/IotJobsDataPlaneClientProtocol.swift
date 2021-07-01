// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>AWS IoT Jobs is a service that allows you to define a set of jobs — remote operations that are sent to
///          and executed on one or more devices connected to AWS IoT. For example, you can define a job that instructs a
///          set of devices to download and install application or firmware updates, reboot, rotate certificates, or perform
///          remote troubleshooting operations.</p>
///          <p> To create a job, you make a job document which is a description of the remote operations to be
///          performed, and you specify a list of targets that should perform the operations. The targets can be individual
///          things, thing groups or both.</p>
///          <p> AWS IoT Jobs sends a message to inform the targets that a job is available. The target starts the
///          execution of the job by downloading the job document, performing the operations it specifies, and reporting its
///          progress to AWS IoT. The Jobs service provides commands to track the progress of a job on a specific target and
///          for all the targets of the job</p>
public protocol IotJobsDataPlaneClientProtocol {
    /// <p>Gets details of a job execution.</p>
    func describeJobExecution(input: DescribeJobExecutionInput, completion: @escaping (SdkResult<DescribeJobExecutionOutputResponse, DescribeJobExecutionOutputError>) -> Void)
    /// <p>Gets the list of all jobs for a thing that are not in a terminal status.</p>
    func getPendingJobExecutions(input: GetPendingJobExecutionsInput, completion: @escaping (SdkResult<GetPendingJobExecutionsOutputResponse, GetPendingJobExecutionsOutputError>) -> Void)
    /// <p>Gets and starts the next pending (status IN_PROGRESS or QUEUED) job execution for a thing.</p>
    func startNextPendingJobExecution(input: StartNextPendingJobExecutionInput, completion: @escaping (SdkResult<StartNextPendingJobExecutionOutputResponse, StartNextPendingJobExecutionOutputError>) -> Void)
    /// <p>Updates the status of a job execution.</p>
    func updateJobExecution(input: UpdateJobExecutionInput, completion: @escaping (SdkResult<UpdateJobExecutionOutputResponse, UpdateJobExecutionOutputError>) -> Void)
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <fullname>AWS CodeBuild</fullname>
///         <p>AWS CodeBuild is a fully managed build service in the cloud. AWS CodeBuild compiles your source code,
///             runs unit tests, and produces artifacts that are ready to deploy. AWS CodeBuild eliminates the
///             need to provision, manage, and scale your own build servers. It provides prepackaged
///             build environments for the most popular programming languages and build tools, such as
///             Apache Maven, Gradle, and more. You can also fully customize build environments in AWS CodeBuild
///             to use your own build tools. AWS CodeBuild scales automatically to meet peak build requests. You
///             pay only for the build time you consume. For more information about AWS CodeBuild, see the <i>
///                 <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/welcome.html">AWS CodeBuild User
///                     Guide</a>.</i>
///          </p>
public protocol CodeBuildClientProtocol {
    /// <p>Deletes one or more builds.</p>
    func batchDeleteBuilds(input: BatchDeleteBuildsInput, completion: @escaping (SdkResult<BatchDeleteBuildsOutputResponse, BatchDeleteBuildsOutputError>) -> Void)
    /// <p>Retrieves information about one or more batch builds.</p>
    func batchGetBuildBatches(input: BatchGetBuildBatchesInput, completion: @escaping (SdkResult<BatchGetBuildBatchesOutputResponse, BatchGetBuildBatchesOutputError>) -> Void)
    /// <p>Gets information about one or more builds.</p>
    func batchGetBuilds(input: BatchGetBuildsInput, completion: @escaping (SdkResult<BatchGetBuildsOutputResponse, BatchGetBuildsOutputError>) -> Void)
    /// <p>Gets information about one or more build projects.</p>
    func batchGetProjects(input: BatchGetProjectsInput, completion: @escaping (SdkResult<BatchGetProjectsOutputResponse, BatchGetProjectsOutputError>) -> Void)
    /// <p>
    ///       Returns an array of report groups.
    ///     </p>
    func batchGetReportGroups(input: BatchGetReportGroupsInput, completion: @escaping (SdkResult<BatchGetReportGroupsOutputResponse, BatchGetReportGroupsOutputError>) -> Void)
    /// <p>
    ///       Returns an array of reports.
    ///     </p>
    func batchGetReports(input: BatchGetReportsInput, completion: @escaping (SdkResult<BatchGetReportsOutputResponse, BatchGetReportsOutputError>) -> Void)
    /// <p>Creates a build project.</p>
    func createProject(input: CreateProjectInput, completion: @escaping (SdkResult<CreateProjectOutputResponse, CreateProjectOutputError>) -> Void)
    /// <p>
    ///       Creates a report group. A report group contains a collection of reports.
    ///     </p>
    func createReportGroup(input: CreateReportGroupInput, completion: @escaping (SdkResult<CreateReportGroupOutputResponse, CreateReportGroupOutputError>) -> Void)
    /// <p>For an existing AWS CodeBuild build project that has its source code stored in a GitHub or
    ///       Bitbucket repository, enables AWS CodeBuild to start rebuilding the source code every time a
    ///       code change is pushed to the repository.</p>
    ///          <important>
    ///             <p>If you enable webhooks for an AWS CodeBuild project, and the project is used as a build
    ///         step in AWS CodePipeline, then two identical builds are created for each commit. One build is
    ///         triggered through webhooks, and one through AWS CodePipeline. Because billing is on a per-build
    ///         basis, you are billed for both builds. Therefore, if you are using AWS CodePipeline, we
    ///         recommend that you disable webhooks in AWS CodeBuild. In the AWS CodeBuild console, clear the
    ///         Webhook box. For more information, see step 5 in <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/change-project.html#change-project-console">Change a Build Project's Settings</a>.</p>
    ///          </important>
    func createWebhook(input: CreateWebhookInput, completion: @escaping (SdkResult<CreateWebhookOutputResponse, CreateWebhookOutputError>) -> Void)
    /// <p>Deletes a batch build.</p>
    func deleteBuildBatch(input: DeleteBuildBatchInput, completion: @escaping (SdkResult<DeleteBuildBatchOutputResponse, DeleteBuildBatchOutputError>) -> Void)
    /// <p> Deletes a build project. When you delete a project, its builds are not deleted.
    ///         </p>
    func deleteProject(input: DeleteProjectInput, completion: @escaping (SdkResult<DeleteProjectOutputResponse, DeleteProjectOutputError>) -> Void)
    /// <p>
    ///       Deletes a report.
    ///     </p>
    func deleteReport(input: DeleteReportInput, completion: @escaping (SdkResult<DeleteReportOutputResponse, DeleteReportOutputError>) -> Void)
    /// <p>Deletes a report group. Before you delete a report group, you must delete its reports. </p>
    func deleteReportGroup(input: DeleteReportGroupInput, completion: @escaping (SdkResult<DeleteReportGroupOutputResponse, DeleteReportGroupOutputError>) -> Void)
    /// <p> Deletes a resource policy that is identified by its resource ARN. </p>
    func deleteResourcePolicy(input: DeleteResourcePolicyInput, completion: @escaping (SdkResult<DeleteResourcePolicyOutputResponse, DeleteResourcePolicyOutputError>) -> Void)
    /// <p> Deletes a set of GitHub, GitHub Enterprise, or Bitbucket source credentials. </p>
    func deleteSourceCredentials(input: DeleteSourceCredentialsInput, completion: @escaping (SdkResult<DeleteSourceCredentialsOutputResponse, DeleteSourceCredentialsOutputError>) -> Void)
    /// <p>For an existing AWS CodeBuild build project that has its source code stored in a GitHub or
    ///             Bitbucket repository, stops AWS CodeBuild from rebuilding the source code every time a code
    ///             change is pushed to the repository.</p>
    func deleteWebhook(input: DeleteWebhookInput, completion: @escaping (SdkResult<DeleteWebhookOutputResponse, DeleteWebhookOutputError>) -> Void)
    /// <p>Retrieves one or more code coverage reports.</p>
    func describeCodeCoverages(input: DescribeCodeCoveragesInput, completion: @escaping (SdkResult<DescribeCodeCoveragesOutputResponse, DescribeCodeCoveragesOutputError>) -> Void)
    /// <p>
    ///       Returns a list of details about test cases for a report.
    ///     </p>
    func describeTestCases(input: DescribeTestCasesInput, completion: @escaping (SdkResult<DescribeTestCasesOutputResponse, DescribeTestCasesOutputError>) -> Void)
    /// <p>Analyzes and accumulates test report values for the specified test reports.</p>
    func getReportGroupTrend(input: GetReportGroupTrendInput, completion: @escaping (SdkResult<GetReportGroupTrendOutputResponse, GetReportGroupTrendOutputError>) -> Void)
    /// <p> Gets a resource policy that is identified by its resource ARN. </p>
    func getResourcePolicy(input: GetResourcePolicyInput, completion: @escaping (SdkResult<GetResourcePolicyOutputResponse, GetResourcePolicyOutputError>) -> Void)
    /// <p> Imports the source repository credentials for an AWS CodeBuild project that has its
    ///             source code stored in a GitHub, GitHub Enterprise, or Bitbucket repository. </p>
    func importSourceCredentials(input: ImportSourceCredentialsInput, completion: @escaping (SdkResult<ImportSourceCredentialsOutputResponse, ImportSourceCredentialsOutputError>) -> Void)
    /// <p>Resets the cache for a project.</p>
    func invalidateProjectCache(input: InvalidateProjectCacheInput, completion: @escaping (SdkResult<InvalidateProjectCacheOutputResponse, InvalidateProjectCacheOutputError>) -> Void)
    /// <p>Retrieves the identifiers of your build batches in the current region.</p>
    func listBuildBatches(input: ListBuildBatchesInput, completion: @escaping (SdkResult<ListBuildBatchesOutputResponse, ListBuildBatchesOutputError>) -> Void)
    /// <p>Retrieves the identifiers of the build batches for a specific project.</p>
    func listBuildBatchesForProject(input: ListBuildBatchesForProjectInput, completion: @escaping (SdkResult<ListBuildBatchesForProjectOutputResponse, ListBuildBatchesForProjectOutputError>) -> Void)
    /// <p>Gets a list of build IDs, with each build ID representing a single build.</p>
    func listBuilds(input: ListBuildsInput, completion: @escaping (SdkResult<ListBuildsOutputResponse, ListBuildsOutputError>) -> Void)
    /// <p>Gets a list of build identifiers for the specified build project, with each build
    ///             identifier representing a single build.</p>
    func listBuildsForProject(input: ListBuildsForProjectInput, completion: @escaping (SdkResult<ListBuildsForProjectOutputResponse, ListBuildsForProjectOutputError>) -> Void)
    /// <p>Gets information about Docker images that are managed by AWS CodeBuild.</p>
    func listCuratedEnvironmentImages(input: ListCuratedEnvironmentImagesInput, completion: @escaping (SdkResult<ListCuratedEnvironmentImagesOutputResponse, ListCuratedEnvironmentImagesOutputError>) -> Void)
    /// <p>Gets a list of build project names, with each build project name representing a single
    ///             build project.</p>
    func listProjects(input: ListProjectsInput, completion: @escaping (SdkResult<ListProjectsOutputResponse, ListProjectsOutputError>) -> Void)
    /// <p>
    ///       Gets a list ARNs for the report groups in the current AWS account.
    ///     </p>
    func listReportGroups(input: ListReportGroupsInput, completion: @escaping (SdkResult<ListReportGroupsOutputResponse, ListReportGroupsOutputError>) -> Void)
    /// <p>
    ///       Returns a list of ARNs for the reports in the current AWS account.
    ///     </p>
    func listReports(input: ListReportsInput, completion: @escaping (SdkResult<ListReportsOutputResponse, ListReportsOutputError>) -> Void)
    /// <p>
    ///       Returns a list of ARNs for the reports that belong to a <code>ReportGroup</code>.
    ///     </p>
    func listReportsForReportGroup(input: ListReportsForReportGroupInput, completion: @escaping (SdkResult<ListReportsForReportGroupOutputResponse, ListReportsForReportGroupOutputError>) -> Void)
    /// <p> Gets a list of projects that are shared with other AWS accounts or users. </p>
    func listSharedProjects(input: ListSharedProjectsInput, completion: @escaping (SdkResult<ListSharedProjectsOutputResponse, ListSharedProjectsOutputError>) -> Void)
    /// <p> Gets a list of report groups that are shared with other AWS accounts or users.
    ///         </p>
    func listSharedReportGroups(input: ListSharedReportGroupsInput, completion: @escaping (SdkResult<ListSharedReportGroupsOutputResponse, ListSharedReportGroupsOutputError>) -> Void)
    /// <p> Returns a list of <code>SourceCredentialsInfo</code> objects. </p>
    func listSourceCredentials(input: ListSourceCredentialsInput, completion: @escaping (SdkResult<ListSourceCredentialsOutputResponse, ListSourceCredentialsOutputError>) -> Void)
    /// <p> Stores a resource policy for the ARN of a <code>Project</code> or
    ///                 <code>ReportGroup</code> object. </p>
    func putResourcePolicy(input: PutResourcePolicyInput, completion: @escaping (SdkResult<PutResourcePolicyOutputResponse, PutResourcePolicyOutputError>) -> Void)
    /// <p>Restarts a build.</p>
    func retryBuild(input: RetryBuildInput, completion: @escaping (SdkResult<RetryBuildOutputResponse, RetryBuildOutputError>) -> Void)
    /// <p>Restarts a failed batch build. Only batch builds that have failed can be retried.</p>
    func retryBuildBatch(input: RetryBuildBatchInput, completion: @escaping (SdkResult<RetryBuildBatchOutputResponse, RetryBuildBatchOutputError>) -> Void)
    /// <p>Starts running a build.</p>
    func startBuild(input: StartBuildInput, completion: @escaping (SdkResult<StartBuildOutputResponse, StartBuildOutputError>) -> Void)
    /// <p>Starts a batch build for a project.</p>
    func startBuildBatch(input: StartBuildBatchInput, completion: @escaping (SdkResult<StartBuildBatchOutputResponse, StartBuildBatchOutputError>) -> Void)
    /// <p>Attempts to stop running a build.</p>
    func stopBuild(input: StopBuildInput, completion: @escaping (SdkResult<StopBuildOutputResponse, StopBuildOutputError>) -> Void)
    /// <p>Stops a running batch build.</p>
    func stopBuildBatch(input: StopBuildBatchInput, completion: @escaping (SdkResult<StopBuildBatchOutputResponse, StopBuildBatchOutputError>) -> Void)
    /// <p>Changes the settings of a build project.</p>
    func updateProject(input: UpdateProjectInput, completion: @escaping (SdkResult<UpdateProjectOutputResponse, UpdateProjectOutputError>) -> Void)
    /// <p>
    ///       Updates a report group.
    ///     </p>
    func updateReportGroup(input: UpdateReportGroupInput, completion: @escaping (SdkResult<UpdateReportGroupOutputResponse, UpdateReportGroupOutputError>) -> Void)
    /// <p> Updates the webhook associated with an AWS CodeBuild build project. </p>
    ///          <note>
    ///             <p> If you use Bitbucket for your repository, <code>rotateSecret</code> is ignored.
    ///       </p>
    ///          </note>
    func updateWebhook(input: UpdateWebhookInput, completion: @escaping (SdkResult<UpdateWebhookOutputResponse, UpdateWebhookOutputError>) -> Void)
}
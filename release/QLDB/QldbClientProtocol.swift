// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The control plane for Amazon QLDB</p>
public protocol QldbClientProtocol {
    /// <p>Ends a given Amazon QLDB journal stream. Before a stream can be canceled, its current
    ///          status must be <code>ACTIVE</code>.</p>
    ///          <p>You can't restart a stream after you cancel it. Canceled QLDB stream resources are
    ///          subject to a 7-day retention period, so they are automatically deleted after this limit
    ///          expires.</p>
    func cancelJournalKinesisStream(input: CancelJournalKinesisStreamInput, completion: @escaping (SdkResult<CancelJournalKinesisStreamOutputResponse, CancelJournalKinesisStreamOutputError>) -> Void)
    /// <p>Creates a new ledger in your AWS account in the current Region.</p>
    func createLedger(input: CreateLedgerInput, completion: @escaping (SdkResult<CreateLedgerOutputResponse, CreateLedgerOutputError>) -> Void)
    /// <p>Deletes a ledger and all of its contents. This action is irreversible.</p>
    ///          <p>If deletion protection is enabled, you must first disable it before you can delete the
    ///       ledger. You can disable it by calling the <code>UpdateLedger</code> operation to set the flag to <code>false</code>.</p>
    func deleteLedger(input: DeleteLedgerInput, completion: @escaping (SdkResult<DeleteLedgerOutputResponse, DeleteLedgerOutputError>) -> Void)
    /// <p>Returns detailed information about a given Amazon QLDB journal stream. The output
    ///          includes the Amazon Resource Name (ARN), stream name, current status, creation time, and
    ///          the parameters of the original stream creation request.</p>
    ///          <p>This action does not return any expired journal streams. For more information, see
    ///             <a href="https://docs.aws.amazon.com/qldb/latest/developerguide/streams.create.html#streams.create.states.expiration">Expiration for terminal streams</a> in the <i>Amazon QLDB Developer
    ///             Guide</i>.</p>
    func describeJournalKinesisStream(input: DescribeJournalKinesisStreamInput, completion: @escaping (SdkResult<DescribeJournalKinesisStreamOutputResponse, DescribeJournalKinesisStreamOutputError>) -> Void)
    /// <p>Returns information about a journal export job, including the ledger name, export ID,
    ///          creation time, current status, and the parameters of the original export creation
    ///          request.</p>
    ///          <p>This action does not return any expired export jobs. For more information, see <a href="https://docs.aws.amazon.com/qldb/latest/developerguide/export-journal.request.html#export-journal.request.expiration">Export job expiration</a> in the <i>Amazon QLDB Developer
    ///          Guide</i>.</p>
    ///          <p>If the export job with the given <code>ExportId</code> doesn't exist, then throws
    ///             <code>ResourceNotFoundException</code>.</p>
    ///          <p>If the ledger with the given <code>Name</code> doesn't exist, then throws
    ///             <code>ResourceNotFoundException</code>.</p>
    func describeJournalS3Export(input: DescribeJournalS3ExportInput, completion: @escaping (SdkResult<DescribeJournalS3ExportOutputResponse, DescribeJournalS3ExportOutputError>) -> Void)
    /// <p>Returns information about a ledger, including its state and when it was created.</p>
    func describeLedger(input: DescribeLedgerInput, completion: @escaping (SdkResult<DescribeLedgerOutputResponse, DescribeLedgerOutputError>) -> Void)
    /// <p>Exports journal contents within a date and time range from a ledger into a specified
    ///          Amazon Simple Storage Service (Amazon S3) bucket. The data is written as files in Amazon Ion format.</p>
    ///          <p>If the ledger with the given <code>Name</code> doesn't exist, then throws
    ///             <code>ResourceNotFoundException</code>.</p>
    ///          <p>If the ledger with the given <code>Name</code> is in <code>CREATING</code> status, then
    ///          throws <code>ResourcePreconditionNotMetException</code>.</p>
    ///          <p>You can initiate up to two concurrent journal export requests for each ledger. Beyond
    ///          this limit, journal export requests throw <code>LimitExceededException</code>.</p>
    func exportJournalToS3(input: ExportJournalToS3Input, completion: @escaping (SdkResult<ExportJournalToS3OutputResponse, ExportJournalToS3OutputError>) -> Void)
    /// <p>Returns a block object at a specified address in a journal. Also returns a proof of the
    ///          specified block for verification if <code>DigestTipAddress</code> is provided.</p>
    ///          <p>For information about the data contents in a block, see <a href="https://docs.aws.amazon.com/qldb/latest/developerguide/journal-contents.html">Journal contents</a> in the
    ///             <i>Amazon QLDB Developer Guide</i>.</p>
    ///          <p>If the specified ledger doesn't exist or is in <code>DELETING</code> status, then throws
    ///             <code>ResourceNotFoundException</code>.</p>
    ///          <p>If the specified ledger is in <code>CREATING</code> status, then throws
    ///             <code>ResourcePreconditionNotMetException</code>.</p>
    ///          <p>If no block exists with the specified address, then throws
    ///             <code>InvalidParameterException</code>.</p>
    func getBlock(input: GetBlockInput, completion: @escaping (SdkResult<GetBlockOutputResponse, GetBlockOutputError>) -> Void)
    /// <p>Returns the digest of a ledger at the latest committed block in the journal. The
    ///          response includes a 256-bit hash value and a block address.</p>
    func getDigest(input: GetDigestInput, completion: @escaping (SdkResult<GetDigestOutputResponse, GetDigestOutputError>) -> Void)
    /// <p>Returns a revision data object for a specified document ID and block address. Also
    ///          returns a proof of the specified revision for verification if <code>DigestTipAddress</code>
    ///          is provided.</p>
    func getRevision(input: GetRevisionInput, completion: @escaping (SdkResult<GetRevisionOutputResponse, GetRevisionOutputError>) -> Void)
    /// <p>Returns an array of all Amazon QLDB journal stream descriptors for a given ledger. The
    ///          output of each stream descriptor includes the same details that are returned by
    ///             <code>DescribeJournalKinesisStream</code>.</p>
    ///          <p>This action does not return any expired journal streams. For more information, see
    ///             <a href="https://docs.aws.amazon.com/qldb/latest/developerguide/streams.create.html#streams.create.states.expiration">Expiration for terminal streams</a> in the <i>Amazon QLDB Developer
    ///             Guide</i>.</p>
    ///          <p>This action returns a maximum of <code>MaxResults</code> items. It is paginated so that
    ///          you can retrieve all the items by calling <code>ListJournalKinesisStreamsForLedger</code>
    ///          multiple times.</p>
    func listJournalKinesisStreamsForLedger(input: ListJournalKinesisStreamsForLedgerInput, completion: @escaping (SdkResult<ListJournalKinesisStreamsForLedgerOutputResponse, ListJournalKinesisStreamsForLedgerOutputError>) -> Void)
    /// <p>Returns an array of journal export job descriptions for all ledgers that are associated
    ///          with the current AWS account and Region.</p>
    ///          <p>This action returns a maximum of <code>MaxResults</code> items, and is paginated so that
    ///          you can retrieve all the items by calling <code>ListJournalS3Exports</code> multiple
    ///          times.</p>
    ///          <p>This action does not return any expired export jobs. For more information, see <a href="https://docs.aws.amazon.com/qldb/latest/developerguide/export-journal.request.html#export-journal.request.expiration">Export job expiration</a> in the <i>Amazon QLDB Developer
    ///          Guide</i>.</p>
    func listJournalS3Exports(input: ListJournalS3ExportsInput, completion: @escaping (SdkResult<ListJournalS3ExportsOutputResponse, ListJournalS3ExportsOutputError>) -> Void)
    /// <p>Returns an array of journal export job descriptions for a specified ledger.</p>
    ///          <p>This action returns a maximum of <code>MaxResults</code> items, and is paginated so that
    ///          you can retrieve all the items by calling <code>ListJournalS3ExportsForLedger</code>
    ///          multiple times.</p>
    ///          <p>This action does not return any expired export jobs. For more information, see <a href="https://docs.aws.amazon.com/qldb/latest/developerguide/export-journal.request.html#export-journal.request.expiration">Export job expiration</a> in the <i>Amazon QLDB Developer
    ///          Guide</i>.</p>
    func listJournalS3ExportsForLedger(input: ListJournalS3ExportsForLedgerInput, completion: @escaping (SdkResult<ListJournalS3ExportsForLedgerOutputResponse, ListJournalS3ExportsForLedgerOutputError>) -> Void)
    /// <p>Returns an array of ledger summaries that are associated with the current AWS account
    ///          and Region.</p>
    ///          <p>This action returns a maximum of 100 items and is paginated so that you can
    ///          retrieve all the items by calling <code>ListLedgers</code> multiple times.</p>
    func listLedgers(input: ListLedgersInput, completion: @escaping (SdkResult<ListLedgersOutputResponse, ListLedgersOutputError>) -> Void)
    /// <p>Returns all tags for a specified Amazon QLDB resource.</p>
    func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
    /// <p>Creates a journal stream for a given Amazon QLDB ledger. The stream captures every
    ///          document revision that is committed to the ledger's journal and delivers the data to a
    ///          specified Amazon Kinesis Data Streams resource.</p>
    func streamJournalToKinesis(input: StreamJournalToKinesisInput, completion: @escaping (SdkResult<StreamJournalToKinesisOutputResponse, StreamJournalToKinesisOutputError>) -> Void)
    /// <p>Adds one or more tags to a specified Amazon QLDB resource.</p>
    ///          <p>A resource can have up to 50 tags. If you try to create more than 50 tags for a
    ///          resource, your request fails and returns an error.</p>
    func tagResource(input: TagResourceInput, completion: @escaping (SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
    /// <p>Removes one or more tags from a specified Amazon QLDB resource. You can specify up to 50
    ///          tag keys to remove.</p>
    func untagResource(input: UntagResourceInput, completion: @escaping (SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
    /// <p>Updates properties on a ledger.</p>
    func updateLedger(input: UpdateLedgerInput, completion: @escaping (SdkResult<UpdateLedgerOutputResponse, UpdateLedgerOutputError>) -> Void)
    /// <p>Updates the permissions mode of a ledger.</p>
    ///          <important>
    ///             <p>Before you switch to the <code>STANDARD</code> permissions mode, you must first
    ///             create all required IAM policies and table tags to avoid disruption to your users. To
    ///             learn more, see <a href="https://docs.aws.amazon.com/qldb/latest/developerguide/ledger-management.basics.html#ledger-mgmt.basics.update-permissions.migrating">Migrating to the standard permissions mode</a> in the <i>Amazon QLDB
    ///                Developer Guide</i>.</p>
    ///          </important>
    func updateLedgerPermissionsMode(input: UpdateLedgerPermissionsModeInput, completion: @escaping (SdkResult<UpdateLedgerPermissionsModeOutputResponse, UpdateLedgerPermissionsModeOutputError>) -> Void)
}
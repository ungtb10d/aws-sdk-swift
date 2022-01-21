// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// This is the Recycle Bin API Reference. This documentation provides descriptions and syntax for each of the actions and data types in Recycle Bin. Recycle Bin is a snapshot recovery feature that enables you to restore accidentally deleted snapshots. When using Recycle Bin, if your snapshots are deleted, they are retained in the Recycle Bin for a time period that you specify. You can restore a snapshot from the Recycle Bin at any time before its retention period expires. After you restore a snapshot from the Recycle Bin, the snapshot is removed from the Recycle Bin, and you can then use it in the same way you use any other snapshot in your account. If the retention period expires and the snapshot is not restored, the snapshot is permanently deleted from the Recycle Bin and is no longer available for recovery. For more information about Recycle Bin, see [ Recycle Bin](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshot-recycle-bin.html) in the Amazon EC2 User Guide.
public protocol RbinClientProtocol {
    /// Creates a Recycle Bin retention rule. For more information, see [ Create Recycle Bin retention rules](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/recycle-bin-working-with-rules.html#recycle-bin-create-rule) in the Amazon EC2 User Guide.
    func createRule(input: CreateRuleInput, completion: @escaping (ClientRuntime.SdkResult<CreateRuleOutputResponse, CreateRuleOutputError>) -> Void)
    /// Deletes a Recycle Bin retention rule. For more information, see [ Delete Recycle Bin retention rules](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/recycle-bin-working-with-rules.html#recycle-bin-delete-rule) in the Amazon EC2 User Guide.
    func deleteRule(input: DeleteRuleInput, completion: @escaping (ClientRuntime.SdkResult<DeleteRuleOutputResponse, DeleteRuleOutputError>) -> Void)
    /// Gets information about a Recycle Bin retention rule.
    func getRule(input: GetRuleInput, completion: @escaping (ClientRuntime.SdkResult<GetRuleOutputResponse, GetRuleOutputError>) -> Void)
    /// Lists the Recycle Bin retention rules in the Region.
    func listRules(input: ListRulesInput, completion: @escaping (ClientRuntime.SdkResult<ListRulesOutputResponse, ListRulesOutputError>) -> Void)
    /// Lists the tags assigned a specific resource.
    func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (ClientRuntime.SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
    /// Assigns tags to the specified resource.
    func tagResource(input: TagResourceInput, completion: @escaping (ClientRuntime.SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
    /// Unassigns a tag from a resource.
    func untagResource(input: UntagResourceInput, completion: @escaping (ClientRuntime.SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
    /// Updates an existing Recycle Bin retention rule. For more information, see [ Update Recycle Bin retention rules](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/recycle-bin-working-with-rules.html#recycle-bin-update-rule) in the Amazon EC2 User Guide.
    func updateRule(input: UpdateRuleInput, completion: @escaping (ClientRuntime.SdkResult<UpdateRuleOutputResponse, UpdateRuleOutputError>) -> Void)
}

public enum RbinClientTypes {}
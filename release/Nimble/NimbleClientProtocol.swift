// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public protocol NimbleClientProtocol {
    /// <p>Accept EULAs.</p>
    func acceptEulas(input: AcceptEulasInput, completion: @escaping (SdkResult<AcceptEulasOutputResponse, AcceptEulasOutputError>) -> Void)
    /// <p>Create a launch profile.</p>
    func createLaunchProfile(input: CreateLaunchProfileInput, completion: @escaping (SdkResult<CreateLaunchProfileOutputResponse, CreateLaunchProfileOutputError>) -> Void)
    /// <p>Creates a streaming image resource in a studio.</p>
    func createStreamingImage(input: CreateStreamingImageInput, completion: @escaping (SdkResult<CreateStreamingImageOutputResponse, CreateStreamingImageOutputError>) -> Void)
    /// <p>Creates a streaming session in a studio.</p> <p>After invoking this operation, you must poll GetStreamingSession until the streaming session is in state READY.</p>
    func createStreamingSession(input: CreateStreamingSessionInput, completion: @escaping (SdkResult<CreateStreamingSessionOutputResponse, CreateStreamingSessionOutputError>) -> Void)
    /// <p>Creates a streaming session stream for a streaming session.</p> <p>After invoking this API, invoke GetStreamingSessionStream with the returned streamId to poll the resource until it is in state READY.</p>
    func createStreamingSessionStream(input: CreateStreamingSessionStreamInput, completion: @escaping (SdkResult<CreateStreamingSessionStreamOutputResponse, CreateStreamingSessionStreamOutputError>) -> Void)
    /// <p>Create a new Studio.</p> <p>When creating a Studio, two IAM roles must be provided: the admin role and the user Role. These roles are assumed by your users when they log in to the Nimble Studio portal.</p> <p>The user role must have the AmazonNimbleStudio-StudioUser managed policy attached for the portal to function properly.</p> <p>The Admin Role must have the AmazonNimbleStudio-StudioAdmin managed policy attached for the portal to function properly.</p> <p>You may optionally specify a KMS key in the StudioEncryptionConfiguration.</p> <p>In Nimble Studio, resource names, descriptions, initialization scripts, and other data you provide are always encrypted at rest using an AWS KMS key. By default, this key is owned by AWS and managed on your behalf. You may provide your own AWS KMS key when calling CreateStudio to encrypt this data using a key you own and manage.</p> <p>When providing an AWS KMS key during studio creation, Nimble Studio creates KMS grants in your account to provide your studio user and admin roles access to these KMS keys.</p> <p>If you delete this grant, the studio will no longer be accessible to your portal users.</p> <p>If you delete the studio KMS key, your studio will no longer be accessible.</p>
    func createStudio(input: CreateStudioInput, completion: @escaping (SdkResult<CreateStudioOutputResponse, CreateStudioOutputError>) -> Void)
    /// <p>Creates a studio component resource.</p>
    func createStudioComponent(input: CreateStudioComponentInput, completion: @escaping (SdkResult<CreateStudioComponentOutputResponse, CreateStudioComponentOutputError>) -> Void)
    /// <p>Permanently delete a launch profile.</p>
    func deleteLaunchProfile(input: DeleteLaunchProfileInput, completion: @escaping (SdkResult<DeleteLaunchProfileOutputResponse, DeleteLaunchProfileOutputError>) -> Void)
    /// <p>Delete a user from launch profile membership.</p>
    func deleteLaunchProfileMember(input: DeleteLaunchProfileMemberInput, completion: @escaping (SdkResult<DeleteLaunchProfileMemberOutputResponse, DeleteLaunchProfileMemberOutputError>) -> Void)
    /// <p>Delete streaming image.</p>
    func deleteStreamingImage(input: DeleteStreamingImageInput, completion: @escaping (SdkResult<DeleteStreamingImageOutputResponse, DeleteStreamingImageOutputError>) -> Void)
    /// <p>Deletes streaming session resource.</p> <p>After invoking this operation, use GetStreamingSession to poll the resource until it transitions to a DELETED state.</p> <p>A streaming session will count against your streaming session quota until it is marked DELETED.</p>
    func deleteStreamingSession(input: DeleteStreamingSessionInput, completion: @escaping (SdkResult<DeleteStreamingSessionOutputResponse, DeleteStreamingSessionOutputError>) -> Void)
    /// <p>Delete a studio resource.</p>
    func deleteStudio(input: DeleteStudioInput, completion: @escaping (SdkResult<DeleteStudioOutputResponse, DeleteStudioOutputError>) -> Void)
    /// <p>Deletes a studio component resource.</p>
    func deleteStudioComponent(input: DeleteStudioComponentInput, completion: @escaping (SdkResult<DeleteStudioComponentOutputResponse, DeleteStudioComponentOutputError>) -> Void)
    /// <p>Delete a user from studio membership.</p>
    func deleteStudioMember(input: DeleteStudioMemberInput, completion: @escaping (SdkResult<DeleteStudioMemberOutputResponse, DeleteStudioMemberOutputError>) -> Void)
    /// <p>Get Eula.</p>
    func getEula(input: GetEulaInput, completion: @escaping (SdkResult<GetEulaOutputResponse, GetEulaOutputError>) -> Void)
    /// <p>Get a launch profile.</p>
    func getLaunchProfile(input: GetLaunchProfileInput, completion: @escaping (SdkResult<GetLaunchProfileOutputResponse, GetLaunchProfileOutputError>) -> Void)
    /// <p>Launch profile details include the launch profile resource and summary information of resources that are used by, or available to, the launch profile. This includes the name and description of all studio components used by the launch profiles, and the name and description of streaming images that can be used with this launch profile.</p>
    func getLaunchProfileDetails(input: GetLaunchProfileDetailsInput, completion: @escaping (SdkResult<GetLaunchProfileDetailsOutputResponse, GetLaunchProfileDetailsOutputError>) -> Void)
    /// <p>Get a launch profile initialization.</p>
    func getLaunchProfileInitialization(input: GetLaunchProfileInitializationInput, completion: @escaping (SdkResult<GetLaunchProfileInitializationOutputResponse, GetLaunchProfileInitializationOutputError>) -> Void)
    /// <p>Get a user persona in launch profile membership.</p>
    func getLaunchProfileMember(input: GetLaunchProfileMemberInput, completion: @escaping (SdkResult<GetLaunchProfileMemberOutputResponse, GetLaunchProfileMemberOutputError>) -> Void)
    /// <p>Get streaming image.</p>
    func getStreamingImage(input: GetStreamingImageInput, completion: @escaping (SdkResult<GetStreamingImageOutputResponse, GetStreamingImageOutputError>) -> Void)
    /// <p>Gets StreamingSession resource.</p> <p>Invoke this operation to poll for a streaming session state while creating or deleting a session.</p>
    func getStreamingSession(input: GetStreamingSessionInput, completion: @escaping (SdkResult<GetStreamingSessionOutputResponse, GetStreamingSessionOutputError>) -> Void)
    /// <p>Gets a StreamingSessionStream for a streaming session.</p> <p>Invoke this operation to poll the resource after invoking CreateStreamingSessionStream.</p> <p>After the StreamingSessionStream changes to the state READY, the url property will contain a stream to be used with the DCV streaming client.</p>
    func getStreamingSessionStream(input: GetStreamingSessionStreamInput, completion: @escaping (SdkResult<GetStreamingSessionStreamOutputResponse, GetStreamingSessionStreamOutputError>) -> Void)
    /// <p>Get a Studio resource.</p>
    func getStudio(input: GetStudioInput, completion: @escaping (SdkResult<GetStudioOutputResponse, GetStudioOutputError>) -> Void)
    /// <p>Gets a studio component resource.</p>
    func getStudioComponent(input: GetStudioComponentInput, completion: @escaping (SdkResult<GetStudioComponentOutputResponse, GetStudioComponentOutputError>) -> Void)
    /// <p>Get a user's membership in a studio.</p>
    func getStudioMember(input: GetStudioMemberInput, completion: @escaping (SdkResult<GetStudioMemberOutputResponse, GetStudioMemberOutputError>) -> Void)
    /// <p>List Eula Acceptances.</p>
    func listEulaAcceptances(input: ListEulaAcceptancesInput, completion: @escaping (SdkResult<ListEulaAcceptancesOutputResponse, ListEulaAcceptancesOutputError>) -> Void)
    /// <p>List Eulas.</p>
    func listEulas(input: ListEulasInput, completion: @escaping (SdkResult<ListEulasOutputResponse, ListEulasOutputError>) -> Void)
    /// <p>Get all users in a given launch profile membership.</p>
    func listLaunchProfileMembers(input: ListLaunchProfileMembersInput, completion: @escaping (SdkResult<ListLaunchProfileMembersOutputResponse, ListLaunchProfileMembersOutputError>) -> Void)
    /// <p>List all the launch profiles a studio.</p>
    func listLaunchProfiles(input: ListLaunchProfilesInput, completion: @escaping (SdkResult<ListLaunchProfilesOutputResponse, ListLaunchProfilesOutputError>) -> Void)
    /// <p>List the streaming image resources available to this studio.</p> <p>This list will contain both images provided by AWS, as well as streaming images that you have created in your studio.</p>
    func listStreamingImages(input: ListStreamingImagesInput, completion: @escaping (SdkResult<ListStreamingImagesOutputResponse, ListStreamingImagesOutputError>) -> Void)
    /// <p>Lists the streaming image resources in a studio.</p>
    func listStreamingSessions(input: ListStreamingSessionsInput, completion: @escaping (SdkResult<ListStreamingSessionsOutputResponse, ListStreamingSessionsOutputError>) -> Void)
    /// <p>Lists the StudioComponents in a studio.</p>
    func listStudioComponents(input: ListStudioComponentsInput, completion: @escaping (SdkResult<ListStudioComponentsOutputResponse, ListStudioComponentsOutputError>) -> Void)
    /// <p>Get all users in a given studio membership.</p>
    func listStudioMembers(input: ListStudioMembersInput, completion: @escaping (SdkResult<ListStudioMembersOutputResponse, ListStudioMembersOutputError>) -> Void)
    /// <p>List studios in your AWS account in the requested AWS Region.</p>
    func listStudios(input: ListStudiosInput, completion: @escaping (SdkResult<ListStudiosOutputResponse, ListStudiosOutputError>) -> Void)
    /// <p>Gets the tags for a resource, given its Amazon Resource Names (ARN).</p> <p>This operation supports ARNs for all resource types in Nimble Studio that support tags, including studio, studio component, launch profile, streaming image, and streaming session. All resources that can be tagged will contain an ARN property, so you do not have to create this ARN yourself.</p>
    func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
    /// <p>Add/update users with given persona to launch profile membership.</p>
    func putLaunchProfileMembers(input: PutLaunchProfileMembersInput, completion: @escaping (SdkResult<PutLaunchProfileMembersOutputResponse, PutLaunchProfileMembersOutputError>) -> Void)
    /// <p>Add/update users with given persona to studio membership.</p>
    func putStudioMembers(input: PutStudioMembersInput, completion: @escaping (SdkResult<PutStudioMembersOutputResponse, PutStudioMembersOutputError>) -> Void)
    /// <p>Repairs the SSO configuration for a given studio.</p> <p>If the studio has a valid AWS SSO configuration currently associated with it, this operation will fail with a validation error.</p> <p>If the studio does not have a valid AWS SSO configuration currently associated with it, then a new AWS SSO application is created for the studio and the studio is changed to the READY state.</p> <p>After the AWS SSO application is repaired, you must use the Amazon Nimble Studio console to add administrators and users to your studio.</p>
    func startStudioSSOConfigurationRepair(input: StartStudioSSOConfigurationRepairInput, completion: @escaping (SdkResult<StartStudioSSOConfigurationRepairOutputResponse, StartStudioSSOConfigurationRepairOutputError>) -> Void)
    /// <p>Creates tags for a resource, given its ARN.</p>
    func tagResource(input: TagResourceInput, completion: @escaping (SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
    /// <p>Deletes the tags for a resource.</p>
    func untagResource(input: UntagResourceInput, completion: @escaping (SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
    /// <p>Update a launch profile.</p>
    func updateLaunchProfile(input: UpdateLaunchProfileInput, completion: @escaping (SdkResult<UpdateLaunchProfileOutputResponse, UpdateLaunchProfileOutputError>) -> Void)
    /// <p>Update a user persona in launch profile membership.</p>
    func updateLaunchProfileMember(input: UpdateLaunchProfileMemberInput, completion: @escaping (SdkResult<UpdateLaunchProfileMemberOutputResponse, UpdateLaunchProfileMemberOutputError>) -> Void)
    /// <p>Update streaming image.</p>
    func updateStreamingImage(input: UpdateStreamingImageInput, completion: @escaping (SdkResult<UpdateStreamingImageOutputResponse, UpdateStreamingImageOutputError>) -> Void)
    /// <p>Update a Studio resource.</p> <p>Currently, this operation only supports updating the displayName of your studio.</p>
    func updateStudio(input: UpdateStudioInput, completion: @escaping (SdkResult<UpdateStudioOutputResponse, UpdateStudioOutputError>) -> Void)
    /// <p>Updates a studio component resource.</p>
    func updateStudioComponent(input: UpdateStudioComponentInput, completion: @escaping (SdkResult<UpdateStudioComponentOutputResponse, UpdateStudioComponentOutputError>) -> Void)
}
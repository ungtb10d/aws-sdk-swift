# CloudWatchEventsClient

``` swift
public class CloudWatchEventsClient 
```

## Inheritance

[`CloudWatchEventsClientProtocol`](/aws-sdk-swift/reference/0.x/AWSCloudWatchEvents/CloudWatchEventsClientProtocol)

## Initializers

### `init(config:)`

``` swift
public init(config: AWSClientRuntime.AWSClientConfiguration) 
```

### `init(region:)`

``` swift
public convenience init(region: Swift.String? = nil) throws 
```

## Properties

### `clientName`

``` swift
public static let clientName = "CloudWatchEventsClient"
```

## Methods

### `activateEventSource(input:completion:)`

Activates a partner event source that has been deactivated. Once activated, your matching event bus will start receiving events from the event source.

``` swift
public func activateEventSource(input: ActivateEventSourceInput, completion: @escaping (ClientRuntime.SdkResult<ActivateEventSourceOutputResponse, ActivateEventSourceOutputError>) -> Void)
```

### `cancelReplay(input:completion:)`

Cancels the specified replay.

``` swift
public func cancelReplay(input: CancelReplayInput, completion: @escaping (ClientRuntime.SdkResult<CancelReplayOutputResponse, CancelReplayOutputError>) -> Void)
```

### `createApiDestination(input:completion:)`

Creates an API destination, which is an HTTP invocation endpoint configured as a target for events.

``` swift
public func createApiDestination(input: CreateApiDestinationInput, completion: @escaping (ClientRuntime.SdkResult<CreateApiDestinationOutputResponse, CreateApiDestinationOutputError>) -> Void)
```

### `createArchive(input:completion:)`

Creates an archive of events with the specified settings. When you create an archive, incoming events might not immediately start being sent to the archive. Allow a short period of time for changes to take effect. If you do not specify a pattern to filter events sent to the archive, all events are sent to the archive except replayed events. Replayed events are not sent to an archive.

``` swift
public func createArchive(input: CreateArchiveInput, completion: @escaping (ClientRuntime.SdkResult<CreateArchiveOutputResponse, CreateArchiveOutputError>) -> Void)
```

### `createConnection(input:completion:)`

Creates a connection. A connection defines the authorization type and credentials to use for authorization with an API destination HTTP endpoint.

``` swift
public func createConnection(input: CreateConnectionInput, completion: @escaping (ClientRuntime.SdkResult<CreateConnectionOutputResponse, CreateConnectionOutputError>) -> Void)
```

### `createEventBus(input:completion:)`

Creates a new event bus within your account. This can be a custom event bus which you can use to receive events from your custom applications and services, or it can be a partner event bus which can be matched to a partner event source.

``` swift
public func createEventBus(input: CreateEventBusInput, completion: @escaping (ClientRuntime.SdkResult<CreateEventBusOutputResponse, CreateEventBusOutputError>) -> Void)
```

### `createPartnerEventSource(input:completion:)`

Called by an SaaS partner to create a partner event source. This operation is not used by Amazon Web Services customers. Each partner event source can be used by one Amazon Web Services account to create a matching partner event bus in that Amazon Web Services account. A SaaS partner must create one partner event source for each Amazon Web Services account that wants to receive those event types. A partner event source creates events based on resources within the SaaS partner's service or application. An Amazon Web Services account that creates a partner event bus that matches the partner event source can use that event bus to receive events from the partner, and then process them using Amazon Web Services Events rules and targets. Partner event source names follow this format:  partner\_name/event\_namespace/event\_name  partner\_name is determined during partner registration and identifies the partner to Amazon Web Services customers. event\_namespace is determined by the partner and is a way for the partner to categorize their events. event\_name is determined by the partner, and should uniquely identify an event-generating resource within the partner system. The combination of event\_namespace and event\_name should help Amazon Web Services customers decide whether to create an event bus to receive these events.

``` swift
public func createPartnerEventSource(input: CreatePartnerEventSourceInput, completion: @escaping (ClientRuntime.SdkResult<CreatePartnerEventSourceOutputResponse, CreatePartnerEventSourceOutputError>) -> Void)
```

### `deactivateEventSource(input:completion:)`

You can use this operation to temporarily stop receiving events from the specified partner event source. The matching event bus is not deleted. When you deactivate a partner event source, the source goes into PENDING state. If it remains in PENDING state for more than two weeks, it is deleted. To activate a deactivated partner event source, use [ActivateEventSource](https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_ActivateEventSource.html).

``` swift
public func deactivateEventSource(input: DeactivateEventSourceInput, completion: @escaping (ClientRuntime.SdkResult<DeactivateEventSourceOutputResponse, DeactivateEventSourceOutputError>) -> Void)
```

### `deauthorizeConnection(input:completion:)`

Removes all authorization parameters from the connection. This lets you remove the secret from the connection so you can reuse it without having to create a new connection.

``` swift
public func deauthorizeConnection(input: DeauthorizeConnectionInput, completion: @escaping (ClientRuntime.SdkResult<DeauthorizeConnectionOutputResponse, DeauthorizeConnectionOutputError>) -> Void)
```

### `deleteApiDestination(input:completion:)`

Deletes the specified API destination.

``` swift
public func deleteApiDestination(input: DeleteApiDestinationInput, completion: @escaping (ClientRuntime.SdkResult<DeleteApiDestinationOutputResponse, DeleteApiDestinationOutputError>) -> Void)
```

### `deleteArchive(input:completion:)`

Deletes the specified archive.

``` swift
public func deleteArchive(input: DeleteArchiveInput, completion: @escaping (ClientRuntime.SdkResult<DeleteArchiveOutputResponse, DeleteArchiveOutputError>) -> Void)
```

### `deleteConnection(input:completion:)`

Deletes a connection.

``` swift
public func deleteConnection(input: DeleteConnectionInput, completion: @escaping (ClientRuntime.SdkResult<DeleteConnectionOutputResponse, DeleteConnectionOutputError>) -> Void)
```

### `deleteEventBus(input:completion:)`

Deletes the specified custom event bus or partner event bus. All rules associated with this event bus need to be deleted. You can't delete your account's default event bus.

``` swift
public func deleteEventBus(input: DeleteEventBusInput, completion: @escaping (ClientRuntime.SdkResult<DeleteEventBusOutputResponse, DeleteEventBusOutputError>) -> Void)
```

### `deletePartnerEventSource(input:completion:)`

This operation is used by SaaS partners to delete a partner event source. This operation is not used by Amazon Web Services customers. When you delete an event source, the status of the corresponding partner event bus in the Amazon Web Services customer account becomes DELETED.

``` swift
public func deletePartnerEventSource(input: DeletePartnerEventSourceInput, completion: @escaping (ClientRuntime.SdkResult<DeletePartnerEventSourceOutputResponse, DeletePartnerEventSourceOutputError>) -> Void)
```

### `deleteRule(input:completion:)`

Deletes the specified rule. Before you can delete the rule, you must remove all targets, using [RemoveTargets](https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_RemoveTargets.html). When you delete a rule, incoming events might continue to match to the deleted rule. Allow a short period of time for changes to take effect. If you call delete rule multiple times for the same rule, all calls will succeed. When you call delete rule for a non-existent custom eventbus, ResourceNotFoundException is returned. Managed rules are rules created and managed by another Amazon Web Services service on your behalf. These rules are created by those other Amazon Web Services services to support functionality in those services. You can delete these rules using the Force option, but you should do so only if you are sure the other service is not still using that rule.

``` swift
public func deleteRule(input: DeleteRuleInput, completion: @escaping (ClientRuntime.SdkResult<DeleteRuleOutputResponse, DeleteRuleOutputError>) -> Void)
```

### `describeApiDestination(input:completion:)`

Retrieves details about an API destination.

``` swift
public func describeApiDestination(input: DescribeApiDestinationInput, completion: @escaping (ClientRuntime.SdkResult<DescribeApiDestinationOutputResponse, DescribeApiDestinationOutputError>) -> Void)
```

### `describeArchive(input:completion:)`

Retrieves details about an archive.

``` swift
public func describeArchive(input: DescribeArchiveInput, completion: @escaping (ClientRuntime.SdkResult<DescribeArchiveOutputResponse, DescribeArchiveOutputError>) -> Void)
```

### `describeConnection(input:completion:)`

Retrieves details about a connection.

``` swift
public func describeConnection(input: DescribeConnectionInput, completion: @escaping (ClientRuntime.SdkResult<DescribeConnectionOutputResponse, DescribeConnectionOutputError>) -> Void)
```

### `describeEventBus(input:completion:)`

Displays details about an event bus in your account. This can include the external Amazon Web Services accounts that are permitted to write events to your default event bus, and the associated policy. For custom event buses and partner event buses, it displays the name, ARN, policy, state, and creation time. To enable your account to receive events from other accounts on its default event bus, use [PutPermission](https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_PutPermission.html). For more information about partner event buses, see [CreateEventBus](https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_CreateEventBus.html).

``` swift
public func describeEventBus(input: DescribeEventBusInput, completion: @escaping (ClientRuntime.SdkResult<DescribeEventBusOutputResponse, DescribeEventBusOutputError>) -> Void)
```

### `describeEventSource(input:completion:)`

This operation lists details about a partner event source that is shared with your account.

``` swift
public func describeEventSource(input: DescribeEventSourceInput, completion: @escaping (ClientRuntime.SdkResult<DescribeEventSourceOutputResponse, DescribeEventSourceOutputError>) -> Void)
```

### `describePartnerEventSource(input:completion:)`

An SaaS partner can use this operation to list details about a partner event source that they have created. Amazon Web Services customers do not use this operation. Instead, Amazon Web Services customers can use [DescribeEventSource](https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_DescribeEventSource.html) to see details about a partner event source that is shared with them.

``` swift
public func describePartnerEventSource(input: DescribePartnerEventSourceInput, completion: @escaping (ClientRuntime.SdkResult<DescribePartnerEventSourceOutputResponse, DescribePartnerEventSourceOutputError>) -> Void)
```

### `describeReplay(input:completion:)`

Retrieves details about a replay. Use DescribeReplay to determine the progress of a running replay. A replay processes events to replay based on the time in the event, and replays them using 1 minute intervals. If you use StartReplay and specify an EventStartTime and an EventEndTime that covers a 20 minute time range, the events are replayed from the first minute of that 20 minute range first. Then the events from the second minute are replayed. You can use DescribeReplay to determine the progress of a replay. The value returned for EventLastReplayedTime indicates the time within the specified time range associated with the last event replayed.

``` swift
public func describeReplay(input: DescribeReplayInput, completion: @escaping (ClientRuntime.SdkResult<DescribeReplayOutputResponse, DescribeReplayOutputError>) -> Void)
```

### `describeRule(input:completion:)`

Describes the specified rule. DescribeRule does not list the targets of a rule. To see the targets associated with a rule, use [ListTargetsByRule](https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_ListTargetsByRule.html).

``` swift
public func describeRule(input: DescribeRuleInput, completion: @escaping (ClientRuntime.SdkResult<DescribeRuleOutputResponse, DescribeRuleOutputError>) -> Void)
```

### `disableRule(input:completion:)`

Disables the specified rule. A disabled rule won't match any events, and won't self-trigger if it has a schedule expression. When you disable a rule, incoming events might continue to match to the disabled rule. Allow a short period of time for changes to take effect.

``` swift
public func disableRule(input: DisableRuleInput, completion: @escaping (ClientRuntime.SdkResult<DisableRuleOutputResponse, DisableRuleOutputError>) -> Void)
```

### `enableRule(input:completion:)`

Enables the specified rule. If the rule does not exist, the operation fails. When you enable a rule, incoming events might not immediately start matching to a newly enabled rule. Allow a short period of time for changes to take effect.

``` swift
public func enableRule(input: EnableRuleInput, completion: @escaping (ClientRuntime.SdkResult<EnableRuleOutputResponse, EnableRuleOutputError>) -> Void)
```

### `listApiDestinations(input:completion:)`

Retrieves a list of API destination in the account in the current Region.

``` swift
public func listApiDestinations(input: ListApiDestinationsInput, completion: @escaping (ClientRuntime.SdkResult<ListApiDestinationsOutputResponse, ListApiDestinationsOutputError>) -> Void)
```

### `listArchives(input:completion:)`

Lists your archives. You can either list all the archives or you can provide a prefix to match to the archive names. Filter parameters are exclusive.

``` swift
public func listArchives(input: ListArchivesInput, completion: @escaping (ClientRuntime.SdkResult<ListArchivesOutputResponse, ListArchivesOutputError>) -> Void)
```

### `listConnections(input:completion:)`

Retrieves a list of connections from the account.

``` swift
public func listConnections(input: ListConnectionsInput, completion: @escaping (ClientRuntime.SdkResult<ListConnectionsOutputResponse, ListConnectionsOutputError>) -> Void)
```

### `listEventBuses(input:completion:)`

Lists all the event buses in your account, including the default event bus, custom event buses, and partner event buses.

``` swift
public func listEventBuses(input: ListEventBusesInput, completion: @escaping (ClientRuntime.SdkResult<ListEventBusesOutputResponse, ListEventBusesOutputError>) -> Void)
```

### `listEventSources(input:completion:)`

You can use this to see all the partner event sources that have been shared with your Amazon Web Services account. For more information about partner event sources, see [CreateEventBus](https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_CreateEventBus.html).

``` swift
public func listEventSources(input: ListEventSourcesInput, completion: @escaping (ClientRuntime.SdkResult<ListEventSourcesOutputResponse, ListEventSourcesOutputError>) -> Void)
```

### `listPartnerEventSourceAccounts(input:completion:)`

An SaaS partner can use this operation to display the Amazon Web Services account ID that a particular partner event source name is associated with. This operation is not used by Amazon Web Services customers.

``` swift
public func listPartnerEventSourceAccounts(input: ListPartnerEventSourceAccountsInput, completion: @escaping (ClientRuntime.SdkResult<ListPartnerEventSourceAccountsOutputResponse, ListPartnerEventSourceAccountsOutputError>) -> Void)
```

### `listPartnerEventSources(input:completion:)`

An SaaS partner can use this operation to list all the partner event source names that they have created. This operation is not used by Amazon Web Services customers.

``` swift
public func listPartnerEventSources(input: ListPartnerEventSourcesInput, completion: @escaping (ClientRuntime.SdkResult<ListPartnerEventSourcesOutputResponse, ListPartnerEventSourcesOutputError>) -> Void)
```

### `listReplays(input:completion:)`

Lists your replays. You can either list all the replays or you can provide a prefix to match to the replay names. Filter parameters are exclusive.

``` swift
public func listReplays(input: ListReplaysInput, completion: @escaping (ClientRuntime.SdkResult<ListReplaysOutputResponse, ListReplaysOutputError>) -> Void)
```

### `listRuleNamesByTarget(input:completion:)`

Lists the rules for the specified target. You can see which of the rules in Amazon EventBridge can invoke a specific target in your account.

``` swift
public func listRuleNamesByTarget(input: ListRuleNamesByTargetInput, completion: @escaping (ClientRuntime.SdkResult<ListRuleNamesByTargetOutputResponse, ListRuleNamesByTargetOutputError>) -> Void)
```

### `listRules(input:completion:)`

Lists your Amazon EventBridge rules. You can either list all the rules or you can provide a prefix to match to the rule names. ListRules does not list the targets of a rule. To see the targets associated with a rule, use [ListTargetsByRule](https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_ListTargetsByRule.html).

``` swift
public func listRules(input: ListRulesInput, completion: @escaping (ClientRuntime.SdkResult<ListRulesOutputResponse, ListRulesOutputError>) -> Void)
```

### `listTagsForResource(input:completion:)`

Displays the tags associated with an EventBridge resource. In EventBridge, rules and event buses can be tagged.

``` swift
public func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (ClientRuntime.SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
```

### `listTargetsByRule(input:completion:)`

Lists the targets assigned to the specified rule.

``` swift
public func listTargetsByRule(input: ListTargetsByRuleInput, completion: @escaping (ClientRuntime.SdkResult<ListTargetsByRuleOutputResponse, ListTargetsByRuleOutputError>) -> Void)
```

### `putEvents(input:completion:)`

Sends custom events to Amazon EventBridge so that they can be matched to rules.

``` swift
public func putEvents(input: PutEventsInput, completion: @escaping (ClientRuntime.SdkResult<PutEventsOutputResponse, PutEventsOutputError>) -> Void)
```

### `putPartnerEvents(input:completion:)`

This is used by SaaS partners to write events to a customer's partner event bus. Amazon Web Services customers do not use this operation.

``` swift
public func putPartnerEvents(input: PutPartnerEventsInput, completion: @escaping (ClientRuntime.SdkResult<PutPartnerEventsOutputResponse, PutPartnerEventsOutputError>) -> Void)
```

### `putPermission(input:completion:)`

Running PutPermission permits the specified Amazon Web Services account or Amazon Web Services organization to put events to the specified event bus. Amazon EventBridge (CloudWatch Events) rules in your account are triggered by these events arriving to an event bus in your account. For another account to send events to your account, that external account must have an EventBridge rule with your account's event bus as a target. To enable multiple Amazon Web Services accounts to put events to your event bus, run PutPermission once for each of these accounts. Or, if all the accounts are members of the same Amazon Web Services organization, you can run PutPermission once specifying Principal as "\*" and specifying the Amazon Web Services organization ID in Condition, to grant permissions to all accounts in that organization. If you grant permissions using an organization, then accounts in that organization must specify a RoleArn with proper permissions when they use PutTarget to add your account's event bus as a target. For more information, see [Sending and Receiving Events Between Amazon Web Services Accounts](https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-cross-account-event-delivery.html) in the Amazon EventBridge User Guide. The permission policy on the event bus cannot exceed 10 KB in size.

``` swift
public func putPermission(input: PutPermissionInput, completion: @escaping (ClientRuntime.SdkResult<PutPermissionOutputResponse, PutPermissionOutputError>) -> Void)
```

### `putRule(input:completion:)`

Creates or updates the specified rule. Rules are enabled by default, or based on value of the state. You can disable a rule using [DisableRule](https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_DisableRule.html). A single rule watches for events from a single event bus. Events generated by Amazon Web Services services go to your account's default event bus. Events generated by SaaS partner services or applications go to the matching partner event bus. If you have custom applications or services, you can specify whether their events go to your default event bus or a custom event bus that you have created. For more information, see [CreateEventBus](https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_CreateEventBus.html). If you are updating an existing rule, the rule is replaced with what you specify in this PutRule command. If you omit arguments in PutRule, the old values for those arguments are not kept. Instead, they are replaced with null values. When you create or update a rule, incoming events might not immediately start matching to new or updated rules. Allow a short period of time for changes to take effect. A rule must contain at least an EventPattern or ScheduleExpression. Rules with EventPatterns are triggered when a matching event is observed. Rules with ScheduleExpressions self-trigger based on the given schedule. A rule can have both an EventPattern and a ScheduleExpression, in which case the rule triggers on matching events as well as on a schedule. When you initially create a rule, you can optionally assign one or more tags to the rule. Tags can help you organize and categorize your resources. You can also use them to scope user permissions, by granting a user permission to access or change only rules with certain tag values. To use the PutRule operation and assign tags, you must have both the events:PutRule and events:TagResource permissions. If you are updating an existing rule, any tags you specify in the PutRule operation are ignored. To update the tags of an existing rule, use [TagResource](https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_TagResource.html) and [UntagResource](https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_UntagResource.html). Most services in Amazon Web Services treat : or / as the same character in Amazon Resource Names (ARNs). However, EventBridge uses an exact match in event patterns and rules. Be sure to use the correct ARN characters when creating event patterns so that they match the ARN syntax in the event you want to match. In EventBridge, it is possible to create rules that lead to infinite loops, where a rule is fired repeatedly. For example, a rule might detect that ACLs have changed on an S3 bucket, and trigger software to change them to the desired state. If the rule is not written carefully, the subsequent change to the ACLs fires the rule again, creating an infinite loop. To prevent this, write the rules so that the triggered actions do not re-fire the same rule. For example, your rule could fire only if ACLs are found to be in a bad state, instead of after any change. An infinite loop can quickly cause higher than expected charges. We recommend that you use budgeting, which alerts you when charges exceed your specified limit. For more information, see [Managing Your Costs with Budgets](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/budgets-managing-costs.html).

``` swift
public func putRule(input: PutRuleInput, completion: @escaping (ClientRuntime.SdkResult<PutRuleOutputResponse, PutRuleOutputError>) -> Void)
```

### `putTargets(input:completion:)`

Adds the specified targets to the specified rule, or updates the targets if they are already associated with the rule. Targets are the resources that are invoked when a rule is triggered. You can configure the following as targets for Events:

``` swift
public func putTargets(input: PutTargetsInput, completion: @escaping (ClientRuntime.SdkResult<PutTargetsOutputResponse, PutTargetsOutputError>) -> Void)
```

  - [API destination](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-api-destinations.html)

  - Amazon API Gateway REST API endpoints

  - API Gateway

  - Batch job queue

  - CloudWatch Logs group

  - CodeBuild project

  - CodePipeline

  - Amazon EC2 CreateSnapshot API call

  - Amazon EC2 RebootInstances API call

  - Amazon EC2 StopInstances API call

  - Amazon EC2 TerminateInstances API call

  - Amazon ECS tasks

  - Event bus in a different Amazon Web Services account or Region. You can use an event bus in the US East (N. Virginia) us-east-1, US West (Oregon) us-west-2, or Europe (Ireland) eu-west-1 Regions as a target for a rule.

  - Firehose delivery stream (Kinesis Data Firehose)

  - Inspector assessment template (Amazon Inspector)

  - Kinesis stream (Kinesis Data Stream)

  - Lambda function

  - Redshift clusters (Data API statement execution)

  - Amazon SNS topic

  - Amazon SQS queues (includes FIFO queues

  - SSM Automation

  - SSM OpsItem

  - SSM Run Command

  - Step Functions state machines

Creating rules with built-in targets is supported only in the Management Console. The built-in targets are EC2 CreateSnapshot API call, EC2 RebootInstances API call, EC2 StopInstances API call, and EC2 TerminateInstances API call. For some target types, PutTargets provides target-specific parameters. If the target is a Kinesis data stream, you can optionally specify which shard the event goes to by using the KinesisParameters argument. To invoke a command on multiple EC2 instances with one rule, you can use the RunCommandParameters field. To be able to make API calls against the resources that you own, Amazon EventBridge needs the appropriate permissions. For Lambda and Amazon SNS resources, EventBridge relies on resource-based policies. For EC2 instances, Kinesis Data Streams, Step Functions state machines and API Gateway REST APIs, EventBridge relies on IAM roles that you specify in the RoleARN argument in PutTargets. For more information, see [Authentication and Access Control](https://docs.aws.amazon.com/eventbridge/latest/userguide/auth-and-access-control-eventbridge.html) in the Amazon EventBridge User Guide. If another Amazon Web Services account is in the same region and has granted you permission (using PutPermission), you can send events to that account. Set that account's event bus as a target of the rules in your account. To send the matched events to the other account, specify that account's event bus as the Arn value when you run PutTargets. If your account sends events to another account, your account is charged for each sent event. Each event sent to another account is charged as a custom event. The account receiving the event is not charged. For more information, see [Amazon EventBridge Pricing](http://aws.amazon.com/eventbridge/pricing/). Input, InputPath, and InputTransformer are not available with PutTarget if the target is an event bus of a different Amazon Web Services account. If you are setting the event bus of another account as the target, and that account granted permission to your account through an organization instead of directly by the account ID, then you must specify a RoleArn with proper permissions in the Target structure. For more information, see [Sending and Receiving Events Between Amazon Web Services Accounts](https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-cross-account-event-delivery.html) in the Amazon EventBridge User Guide. For more information about enabling cross-account events, see [PutPermission](https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_PutPermission.html). Input, InputPath, and InputTransformer are mutually exclusive and optional parameters of a target. When a rule is triggered due to a matched event:

  - If none of the following arguments are specified for a target, then the entire event is passed to the target in JSON format (unless the target is Amazon EC2 Run Command or Amazon ECS task, in which case nothing from the event is passed to the target).

  - If Input is specified in the form of valid JSON, then the matched event is overridden with this constant.

  - If InputPath is specified in the form of JSONPath (for example, $.detail), then only the part of the event specified in the path is passed to the target (for example, only the detail part of the event is passed).

  - If InputTransformer is specified, then one or more specified JSONPaths are extracted from the event and used as values in a template that you specify as the input to the target.

When you specify InputPath or InputTransformer, you must use JSON dot notation, not bracket notation. When you add targets to a rule and the associated rule triggers soon after, new or updated targets might not be immediately invoked. Allow a short period of time for changes to take effect. This action can partially fail if too many requests are made at the same time. If that happens, FailedEntryCount is non-zero in the response and each entry in FailedEntries provides the ID of the failed target and the error code.

### `removePermission(input:completion:)`

Revokes the permission of another Amazon Web Services account to be able to put events to the specified event bus. Specify the account to revoke by the StatementId value that you associated with the account when you granted it permission with PutPermission. You can find the StatementId by using [DescribeEventBus](https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_DescribeEventBus.html).

``` swift
public func removePermission(input: RemovePermissionInput, completion: @escaping (ClientRuntime.SdkResult<RemovePermissionOutputResponse, RemovePermissionOutputError>) -> Void)
```

### `removeTargets(input:completion:)`

Removes the specified targets from the specified rule. When the rule is triggered, those targets are no longer be invoked. When you remove a target, when the associated rule triggers, removed targets might continue to be invoked. Allow a short period of time for changes to take effect. This action can partially fail if too many requests are made at the same time. If that happens, FailedEntryCount is non-zero in the response and each entry in FailedEntries provides the ID of the failed target and the error code.

``` swift
public func removeTargets(input: RemoveTargetsInput, completion: @escaping (ClientRuntime.SdkResult<RemoveTargetsOutputResponse, RemoveTargetsOutputError>) -> Void)
```

### `startReplay(input:completion:)`

Starts the specified replay. Events are not necessarily replayed in the exact same order that they were added to the archive. A replay processes events to replay based on the time in the event, and replays them using 1 minute intervals. If you specify an EventStartTime and an EventEndTime that covers a 20 minute time range, the events are replayed from the first minute of that 20 minute range first. Then the events from the second minute are replayed. You can use DescribeReplay to determine the progress of a replay. The value returned for EventLastReplayedTime indicates the time within the specified time range associated with the last event replayed.

``` swift
public func startReplay(input: StartReplayInput, completion: @escaping (ClientRuntime.SdkResult<StartReplayOutputResponse, StartReplayOutputError>) -> Void)
```

### `tagResource(input:completion:)`

Assigns one or more tags (key-value pairs) to the specified EventBridge resource. Tags can help you organize and categorize your resources. You can also use them to scope user permissions by granting a user permission to access or change only resources with certain tag values. In EventBridge, rules and event buses can be tagged. Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters. You can use the TagResource action with a resource that already has tags. If you specify a new tag key, this tag is appended to the list of tags associated with the resource. If you specify a tag key that is already associated with the resource, the new tag value that you specify replaces the previous value for that tag. You can associate as many as 50 tags with a resource.

``` swift
public func tagResource(input: TagResourceInput, completion: @escaping (ClientRuntime.SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
```

### `testEventPattern(input:completion:)`

Tests whether the specified event pattern matches the provided event. Most services in Amazon Web Services treat : or / as the same character in Amazon Resource Names (ARNs). However, EventBridge uses an exact match in event patterns and rules. Be sure to use the correct ARN characters when creating event patterns so that they match the ARN syntax in the event you want to match.

``` swift
public func testEventPattern(input: TestEventPatternInput, completion: @escaping (ClientRuntime.SdkResult<TestEventPatternOutputResponse, TestEventPatternOutputError>) -> Void)
```

### `untagResource(input:completion:)`

Removes one or more tags from the specified EventBridge resource. In Amazon EventBridge (CloudWatch Events), rules and event buses can be tagged.

``` swift
public func untagResource(input: UntagResourceInput, completion: @escaping (ClientRuntime.SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
```

### `updateApiDestination(input:completion:)`

Updates an API destination.

``` swift
public func updateApiDestination(input: UpdateApiDestinationInput, completion: @escaping (ClientRuntime.SdkResult<UpdateApiDestinationOutputResponse, UpdateApiDestinationOutputError>) -> Void)
```

### `updateArchive(input:completion:)`

Updates the specified archive.

``` swift
public func updateArchive(input: UpdateArchiveInput, completion: @escaping (ClientRuntime.SdkResult<UpdateArchiveOutputResponse, UpdateArchiveOutputError>) -> Void)
```

### `updateConnection(input:completion:)`

Updates settings for a connection.

``` swift
public func updateConnection(input: UpdateConnectionInput, completion: @escaping (ClientRuntime.SdkResult<UpdateConnectionOutputResponse, UpdateConnectionOutputError>) -> Void)
```
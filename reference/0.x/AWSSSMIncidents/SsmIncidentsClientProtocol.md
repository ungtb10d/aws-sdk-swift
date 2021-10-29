# SsmIncidentsClientProtocol

AWS Systems Manager Incident Manager is an incident management console designed to help users mitigate and recover from incidents affecting their AWS-hosted applications. An incident is any unplanned interruption or reduction in quality of services. Incident Manager increases incident resolution by notifying responders of impact, highlighting relevant troubleshooting data, and providing collaboration tools to get services back up and running. To achieve the primary goal of reducing the time-to-resolution of critical incidents, Incident Manager automates response plans and enables responder team escalation.

``` swift
public protocol SsmIncidentsClientProtocol 
```

## Requirements

### createReplicationSet(input:completion:)

A replication set replicates and encrypts your data to the provided Regions with the provided KMS key.

``` swift
func createReplicationSet(input: CreateReplicationSetInput, completion: @escaping (ClientRuntime.SdkResult<CreateReplicationSetOutputResponse, CreateReplicationSetOutputError>) -> Void)
```

### createResponsePlan(input:completion:)

Creates a response plan that automates the initial response to incidents. A response plan engages contacts, starts chat channel collaboration, and initiates runbooks at the beginning of an incident.

``` swift
func createResponsePlan(input: CreateResponsePlanInput, completion: @escaping (ClientRuntime.SdkResult<CreateResponsePlanOutputResponse, CreateResponsePlanOutputError>) -> Void)
```

### createTimelineEvent(input:completion:)

Creates a custom timeline event on the incident details page of an incident record. Timeline events are automatically created by Incident Manager, marking key moment during an incident. You can create custom timeline events to mark important events that are automatically detected by Incident Manager.

``` swift
func createTimelineEvent(input: CreateTimelineEventInput, completion: @escaping (ClientRuntime.SdkResult<CreateTimelineEventOutputResponse, CreateTimelineEventOutputError>) -> Void)
```

### deleteIncidentRecord(input:completion:)

Delete an incident record from Incident Manager.

``` swift
func deleteIncidentRecord(input: DeleteIncidentRecordInput, completion: @escaping (ClientRuntime.SdkResult<DeleteIncidentRecordOutputResponse, DeleteIncidentRecordOutputError>) -> Void)
```

### deleteReplicationSet(input:completion:)

Deletes all Regions in your replication set. Deleting the replication set deletes all Incident Manager data.

``` swift
func deleteReplicationSet(input: DeleteReplicationSetInput, completion: @escaping (ClientRuntime.SdkResult<DeleteReplicationSetOutputResponse, DeleteReplicationSetOutputError>) -> Void)
```

### deleteResourcePolicy(input:completion:)

Deletes the resource policy that AWS Resource Access Manager uses to share your Incident Manager resource.

``` swift
func deleteResourcePolicy(input: DeleteResourcePolicyInput, completion: @escaping (ClientRuntime.SdkResult<DeleteResourcePolicyOutputResponse, DeleteResourcePolicyOutputError>) -> Void)
```

### deleteResponsePlan(input:completion:)

Deletes the specified response plan. Deleting a response plan stops all linked CloudWatch alarms and EventBridge events from creating an incident with this response plan.

``` swift
func deleteResponsePlan(input: DeleteResponsePlanInput, completion: @escaping (ClientRuntime.SdkResult<DeleteResponsePlanOutputResponse, DeleteResponsePlanOutputError>) -> Void)
```

### deleteTimelineEvent(input:completion:)

Deletes a timeline event from an incident.

``` swift
func deleteTimelineEvent(input: DeleteTimelineEventInput, completion: @escaping (ClientRuntime.SdkResult<DeleteTimelineEventOutputResponse, DeleteTimelineEventOutputError>) -> Void)
```

### getIncidentRecord(input:completion:)

Returns the details of the specified incident record.

``` swift
func getIncidentRecord(input: GetIncidentRecordInput, completion: @escaping (ClientRuntime.SdkResult<GetIncidentRecordOutputResponse, GetIncidentRecordOutputError>) -> Void)
```

### getReplicationSet(input:completion:)

Retrieve your Incident Manager replication set.

``` swift
func getReplicationSet(input: GetReplicationSetInput, completion: @escaping (ClientRuntime.SdkResult<GetReplicationSetOutputResponse, GetReplicationSetOutputError>) -> Void)
```

### getResourcePolicies(input:completion:)

Retrieves the resource policies attached to the specified response plan.

``` swift
func getResourcePolicies(input: GetResourcePoliciesInput, completion: @escaping (ClientRuntime.SdkResult<GetResourcePoliciesOutputResponse, GetResourcePoliciesOutputError>) -> Void)
```

### getResponsePlan(input:completion:)

Retrieves the details of the specified response plan.

``` swift
func getResponsePlan(input: GetResponsePlanInput, completion: @escaping (ClientRuntime.SdkResult<GetResponsePlanOutputResponse, GetResponsePlanOutputError>) -> Void)
```

### getTimelineEvent(input:completion:)

Retrieves a timeline event based on its ID and incident record.

``` swift
func getTimelineEvent(input: GetTimelineEventInput, completion: @escaping (ClientRuntime.SdkResult<GetTimelineEventOutputResponse, GetTimelineEventOutputError>) -> Void)
```

### listIncidentRecords(input:completion:)

Lists all incident records in your account. Use this command to retrieve the Amazon Resource Name (ARN) of the incident record you want to update.

``` swift
func listIncidentRecords(input: ListIncidentRecordsInput, completion: @escaping (ClientRuntime.SdkResult<ListIncidentRecordsOutputResponse, ListIncidentRecordsOutputError>) -> Void)
```

### listRelatedItems(input:completion:)

List all related items for an incident record.

``` swift
func listRelatedItems(input: ListRelatedItemsInput, completion: @escaping (ClientRuntime.SdkResult<ListRelatedItemsOutputResponse, ListRelatedItemsOutputError>) -> Void)
```

### listReplicationSets(input:completion:)

Lists details about the replication set configured in your account.

``` swift
func listReplicationSets(input: ListReplicationSetsInput, completion: @escaping (ClientRuntime.SdkResult<ListReplicationSetsOutputResponse, ListReplicationSetsOutputError>) -> Void)
```

### listResponsePlans(input:completion:)

Lists all response plans in your account.

``` swift
func listResponsePlans(input: ListResponsePlansInput, completion: @escaping (ClientRuntime.SdkResult<ListResponsePlansOutputResponse, ListResponsePlansOutputError>) -> Void)
```

### listTagsForResource(input:completion:)

Lists the tags that are attached to the specified response plan.

``` swift
func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (ClientRuntime.SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
```

### listTimelineEvents(input:completion:)

Lists timeline events of the specified incident record.

``` swift
func listTimelineEvents(input: ListTimelineEventsInput, completion: @escaping (ClientRuntime.SdkResult<ListTimelineEventsOutputResponse, ListTimelineEventsOutputError>) -> Void)
```

### putResourcePolicy(input:completion:)

Adds a resource policy to the specified response plan.

``` swift
func putResourcePolicy(input: PutResourcePolicyInput, completion: @escaping (ClientRuntime.SdkResult<PutResourcePolicyOutputResponse, PutResourcePolicyOutputError>) -> Void)
```

### startIncident(input:completion:)

Used to start an incident from CloudWatch alarms, EventBridge events, or manually.

``` swift
func startIncident(input: StartIncidentInput, completion: @escaping (ClientRuntime.SdkResult<StartIncidentOutputResponse, StartIncidentOutputError>) -> Void)
```

### tagResource(input:completion:)

Adds a tag to a response plan.

``` swift
func tagResource(input: TagResourceInput, completion: @escaping (ClientRuntime.SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
```

### untagResource(input:completion:)

Removes a tag from a resource.

``` swift
func untagResource(input: UntagResourceInput, completion: @escaping (ClientRuntime.SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
```

### updateDeletionProtection(input:completion:)

Update deletion protection to either allow or deny deletion of the final Region in a replication set.

``` swift
func updateDeletionProtection(input: UpdateDeletionProtectionInput, completion: @escaping (ClientRuntime.SdkResult<UpdateDeletionProtectionOutputResponse, UpdateDeletionProtectionOutputError>) -> Void)
```

### updateIncidentRecord(input:completion:)

Update the details of an incident record. You can use this action to update an incident record from the defined chat channel. For more information about using actions in chat channels, see [Interacting through chat](https://docs.aws.amazon.com/incident-manager/latest/userguide/chat.html#chat-interact).

``` swift
func updateIncidentRecord(input: UpdateIncidentRecordInput, completion: @escaping (ClientRuntime.SdkResult<UpdateIncidentRecordOutputResponse, UpdateIncidentRecordOutputError>) -> Void)
```

### updateRelatedItems(input:completion:)

Add or remove related items from the related items tab of an incident record.

``` swift
func updateRelatedItems(input: UpdateRelatedItemsInput, completion: @escaping (ClientRuntime.SdkResult<UpdateRelatedItemsOutputResponse, UpdateRelatedItemsOutputError>) -> Void)
```

### updateReplicationSet(input:completion:)

Add or delete Regions from your replication set.

``` swift
func updateReplicationSet(input: UpdateReplicationSetInput, completion: @escaping (ClientRuntime.SdkResult<UpdateReplicationSetOutputResponse, UpdateReplicationSetOutputError>) -> Void)
```

### updateResponsePlan(input:completion:)

Updates the specified response plan.

``` swift
func updateResponsePlan(input: UpdateResponsePlanInput, completion: @escaping (ClientRuntime.SdkResult<UpdateResponsePlanOutputResponse, UpdateResponsePlanOutputError>) -> Void)
```

### updateTimelineEvent(input:completion:)

Updates a timeline event. You can update events of type Custom Event.

``` swift
func updateTimelineEvent(input: UpdateTimelineEventInput, completion: @escaping (ClientRuntime.SdkResult<UpdateTimelineEventOutputResponse, UpdateTimelineEventOutputError>) -> Void)
```
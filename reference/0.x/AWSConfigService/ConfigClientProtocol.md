# ConfigClientProtocol

Config Config provides a way to keep track of the configurations of all the Amazon Web Services resources associated with your Amazon Web Services account. You can use Config to get the current and historical configurations of each Amazon Web Services resource and also to get information about the relationship between the resources. An Amazon Web Services resource can be an Amazon Compute Cloud (Amazon EC2) instance, an Elastic Block Store (EBS) volume, an elastic network Interface (ENI), or a security group. For a complete list of resources currently supported by Config, see [Supported Amazon Web Services resources](https://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources). You can access and manage Config through the Amazon Web Services Management Console, the Amazon Web Services Command Line Interface (Amazon Web Services CLI), the Config API, or the Amazon Web Services SDKs for Config. This reference guide contains documentation for the Config API and the Amazon Web Services CLI commands that you can use to manage Config. The Config API uses the Signature Version 4 protocol for signing requests. For more information about how to sign a request with this protocol, see [Signature Version 4 Signing Process](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html). For detailed information about Config features and their associated actions or commands, as well as how to work with Amazon Web Services Management Console, see [What Is Config](https://docs.aws.amazon.com/config/latest/developerguide/WhatIsConfig.html) in the Config Developer Guide.

``` swift
public protocol ConfigClientProtocol 
```

## Requirements

### batchGetAggregateResourceConfig(input:completion:)

Returns the current configuration items for resources that are present in your Config aggregator. The operation also returns a list of resources that are not processed in the current request. If there are no unprocessed resources, the operation returns an empty unprocessedResourceIdentifiers list.

``` swift
func batchGetAggregateResourceConfig(input: BatchGetAggregateResourceConfigInput, completion: @escaping (ClientRuntime.SdkResult<BatchGetAggregateResourceConfigOutputResponse, BatchGetAggregateResourceConfigOutputError>) -> Void)
```

  - The API does not return results for deleted resources.

  - The API does not return tags and relationships.

### batchGetResourceConfig(input:completion:)

Returns the BaseConfigurationItem for one or more requested resources. The operation also returns a list of resources that are not processed in the current request. If there are no unprocessed resources, the operation returns an empty unprocessedResourceKeys list.

``` swift
func batchGetResourceConfig(input: BatchGetResourceConfigInput, completion: @escaping (ClientRuntime.SdkResult<BatchGetResourceConfigOutputResponse, BatchGetResourceConfigOutputError>) -> Void)
```

  - The API does not return results for deleted resources.

  - The API does not return any tags for the requested resources. This information is filtered out of the supplementaryConfiguration section of the API response.

### deleteAggregationAuthorization(input:completion:)

Deletes the authorization granted to the specified configuration aggregator account in a specified region.

``` swift
func deleteAggregationAuthorization(input: DeleteAggregationAuthorizationInput, completion: @escaping (ClientRuntime.SdkResult<DeleteAggregationAuthorizationOutputResponse, DeleteAggregationAuthorizationOutputError>) -> Void)
```

### deleteConfigRule(input:completion:)

Deletes the specified Config rule and all of its evaluation results. Config sets the state of a rule to DELETING until the deletion is complete. You cannot update a rule while it is in this state. If you make a PutConfigRule or DeleteConfigRule request for the rule, you will receive a ResourceInUseException. You can check the state of a rule by using the DescribeConfigRules request.

``` swift
func deleteConfigRule(input: DeleteConfigRuleInput, completion: @escaping (ClientRuntime.SdkResult<DeleteConfigRuleOutputResponse, DeleteConfigRuleOutputError>) -> Void)
```

### deleteConfigurationAggregator(input:completion:)

Deletes the specified configuration aggregator and the aggregated data associated with the aggregator.

``` swift
func deleteConfigurationAggregator(input: DeleteConfigurationAggregatorInput, completion: @escaping (ClientRuntime.SdkResult<DeleteConfigurationAggregatorOutputResponse, DeleteConfigurationAggregatorOutputError>) -> Void)
```

### deleteConfigurationRecorder(input:completion:)

Deletes the configuration recorder. After the configuration recorder is deleted, Config will not record resource configuration changes until you create a new configuration recorder. This action does not delete the configuration information that was previously recorded. You will be able to access the previously recorded information by using the GetResourceConfigHistory action, but you will not be able to access this information in the Config console until you create a new configuration recorder.

``` swift
func deleteConfigurationRecorder(input: DeleteConfigurationRecorderInput, completion: @escaping (ClientRuntime.SdkResult<DeleteConfigurationRecorderOutputResponse, DeleteConfigurationRecorderOutputError>) -> Void)
```

### deleteConformancePack(input:completion:)

Deletes the specified conformance pack and all the Config rules, remediation actions, and all evaluation results within that conformance pack. Config sets the conformance pack to DELETE\_IN\_PROGRESS until the deletion is complete. You cannot update a conformance pack while it is in this state.

``` swift
func deleteConformancePack(input: DeleteConformancePackInput, completion: @escaping (ClientRuntime.SdkResult<DeleteConformancePackOutputResponse, DeleteConformancePackOutputError>) -> Void)
```

### deleteDeliveryChannel(input:completion:)

Deletes the delivery channel. Before you can delete the delivery channel, you must stop the configuration recorder by using the \[StopConfigurationRecorder\] action.

``` swift
func deleteDeliveryChannel(input: DeleteDeliveryChannelInput, completion: @escaping (ClientRuntime.SdkResult<DeleteDeliveryChannelOutputResponse, DeleteDeliveryChannelOutputError>) -> Void)
```

### deleteEvaluationResults(input:completion:)

Deletes the evaluation results for the specified Config rule. You can specify one Config rule per request. After you delete the evaluation results, you can call the \[StartConfigRulesEvaluation\] API to start evaluating your Amazon Web Services resources against the rule.

``` swift
func deleteEvaluationResults(input: DeleteEvaluationResultsInput, completion: @escaping (ClientRuntime.SdkResult<DeleteEvaluationResultsOutputResponse, DeleteEvaluationResultsOutputError>) -> Void)
```

### deleteOrganizationConfigRule(input:completion:)

Deletes the specified organization config rule and all of its evaluation results from all member accounts in that organization. Only a master account and a delegated administrator account can delete an organization config rule. When calling this API with a delegated administrator, you must ensure Organizations ListDelegatedAdministrator permissions are added. Config sets the state of a rule to DELETE\_IN\_PROGRESS until the deletion is complete. You cannot update a rule while it is in this state.

``` swift
func deleteOrganizationConfigRule(input: DeleteOrganizationConfigRuleInput, completion: @escaping (ClientRuntime.SdkResult<DeleteOrganizationConfigRuleOutputResponse, DeleteOrganizationConfigRuleOutputError>) -> Void)
```

### deleteOrganizationConformancePack(input:completion:)

Deletes the specified organization conformance pack and all of the config rules and remediation actions from all member accounts in that organization. Only a master account or a delegated administrator account can delete an organization conformance pack. When calling this API with a delegated administrator, you must ensure Organizations ListDelegatedAdministrator permissions are added. Config sets the state of a conformance pack to DELETE\_IN\_PROGRESS until the deletion is complete. You cannot update a conformance pack while it is in this state.

``` swift
func deleteOrganizationConformancePack(input: DeleteOrganizationConformancePackInput, completion: @escaping (ClientRuntime.SdkResult<DeleteOrganizationConformancePackOutputResponse, DeleteOrganizationConformancePackOutputError>) -> Void)
```

### deletePendingAggregationRequest(input:completion:)

Deletes pending authorization requests for a specified aggregator account in a specified region.

``` swift
func deletePendingAggregationRequest(input: DeletePendingAggregationRequestInput, completion: @escaping (ClientRuntime.SdkResult<DeletePendingAggregationRequestOutputResponse, DeletePendingAggregationRequestOutputError>) -> Void)
```

### deleteRemediationConfiguration(input:completion:)

Deletes the remediation configuration.

``` swift
func deleteRemediationConfiguration(input: DeleteRemediationConfigurationInput, completion: @escaping (ClientRuntime.SdkResult<DeleteRemediationConfigurationOutputResponse, DeleteRemediationConfigurationOutputError>) -> Void)
```

### deleteRemediationExceptions(input:completion:)

Deletes one or more remediation exceptions mentioned in the resource keys. Config generates a remediation exception when a problem occurs executing a remediation action to a specific resource. Remediation exceptions blocks auto-remediation until the exception is cleared.

``` swift
func deleteRemediationExceptions(input: DeleteRemediationExceptionsInput, completion: @escaping (ClientRuntime.SdkResult<DeleteRemediationExceptionsOutputResponse, DeleteRemediationExceptionsOutputError>) -> Void)
```

### deleteResourceConfig(input:completion:)

Records the configuration state for a custom resource that has been deleted. This API records a new ConfigurationItem with a ResourceDeleted status. You can retrieve the ConfigurationItems recorded for this resource in your Config History.

``` swift
func deleteResourceConfig(input: DeleteResourceConfigInput, completion: @escaping (ClientRuntime.SdkResult<DeleteResourceConfigOutputResponse, DeleteResourceConfigOutputError>) -> Void)
```

### deleteRetentionConfiguration(input:completion:)

Deletes the retention configuration.

``` swift
func deleteRetentionConfiguration(input: DeleteRetentionConfigurationInput, completion: @escaping (ClientRuntime.SdkResult<DeleteRetentionConfigurationOutputResponse, DeleteRetentionConfigurationOutputError>) -> Void)
```

### deleteStoredQuery(input:completion:)

Deletes the stored query for a single Amazon Web Services account and a single Amazon Web Services Region.

``` swift
func deleteStoredQuery(input: DeleteStoredQueryInput, completion: @escaping (ClientRuntime.SdkResult<DeleteStoredQueryOutputResponse, DeleteStoredQueryOutputError>) -> Void)
```

### deliverConfigSnapshot(input:completion:)

Schedules delivery of a configuration snapshot to the Amazon S3 bucket in the specified delivery channel. After the delivery has started, Config sends the following notifications using an Amazon SNS topic that you have specified.

``` swift
func deliverConfigSnapshot(input: DeliverConfigSnapshotInput, completion: @escaping (ClientRuntime.SdkResult<DeliverConfigSnapshotOutputResponse, DeliverConfigSnapshotOutputError>) -> Void)
```

  - Notification of the start of the delivery.

  - Notification of the completion of the delivery, if the delivery was successfully completed.

  - Notification of delivery failure, if the delivery failed.

### describeAggregateComplianceByConfigRules(input:completion:)

Returns a list of compliant and noncompliant rules with the number of resources for compliant and noncompliant rules. Does not display rules that do not have compliance results. The results can return an empty result page, but if you have a nextToken, the results are displayed on the next page.

``` swift
func describeAggregateComplianceByConfigRules(input: DescribeAggregateComplianceByConfigRulesInput, completion: @escaping (ClientRuntime.SdkResult<DescribeAggregateComplianceByConfigRulesOutputResponse, DescribeAggregateComplianceByConfigRulesOutputError>) -> Void)
```

### describeAggregateComplianceByConformancePacks(input:completion:)

Returns a list of the conformance packs and their associated compliance status with the count of compliant and noncompliant Config rules within each conformance pack. Also returns the total rule count which includes compliant rules, noncompliant rules, and rules that cannot be evaluated due to insufficient data. The results can return an empty result page, but if you have a nextToken, the results are displayed on the next page.

``` swift
func describeAggregateComplianceByConformancePacks(input: DescribeAggregateComplianceByConformancePacksInput, completion: @escaping (ClientRuntime.SdkResult<DescribeAggregateComplianceByConformancePacksOutputResponse, DescribeAggregateComplianceByConformancePacksOutputError>) -> Void)
```

### describeAggregationAuthorizations(input:completion:)

Returns a list of authorizations granted to various aggregator accounts and regions.

``` swift
func describeAggregationAuthorizations(input: DescribeAggregationAuthorizationsInput, completion: @escaping (ClientRuntime.SdkResult<DescribeAggregationAuthorizationsOutputResponse, DescribeAggregationAuthorizationsOutputError>) -> Void)
```

### describeComplianceByConfigRule(input:completion:)

Indicates whether the specified Config rules are compliant. If a rule is noncompliant, this action returns the number of Amazon Web Services resources that do not comply with the rule. A rule is compliant if all of the evaluated resources comply with it. It is noncompliant if any of these resources do not comply. If Config has no current evaluation results for the rule, it returns INSUFFICIENT\_DATA. This result might indicate one of the following conditions:

``` swift
func describeComplianceByConfigRule(input: DescribeComplianceByConfigRuleInput, completion: @escaping (ClientRuntime.SdkResult<DescribeComplianceByConfigRuleOutputResponse, DescribeComplianceByConfigRuleOutputError>) -> Void)
```

  - Config has never invoked an evaluation for the rule. To check whether it has, use the DescribeConfigRuleEvaluationStatus action to get the LastSuccessfulInvocationTime and LastFailedInvocationTime.

  - The rule's Lambda function is failing to send evaluation results to Config. Verify that the role you assigned to your configuration recorder includes the config:PutEvaluations permission. If the rule is a custom rule, verify that the Lambda execution role includes the config:PutEvaluations permission.

  - The rule's Lambda function has returned NOT\_APPLICABLE for all evaluation results. This can occur if the resources were deleted or removed from the rule's scope.

### describeComplianceByResource(input:completion:)

Indicates whether the specified Amazon Web Services resources are compliant. If a resource is noncompliant, this action returns the number of Config rules that the resource does not comply with. A resource is compliant if it complies with all the Config rules that evaluate it. It is noncompliant if it does not comply with one or more of these rules. If Config has no current evaluation results for the resource, it returns INSUFFICIENT\_DATA. This result might indicate one of the following conditions about the rules that evaluate the resource:

``` swift
func describeComplianceByResource(input: DescribeComplianceByResourceInput, completion: @escaping (ClientRuntime.SdkResult<DescribeComplianceByResourceOutputResponse, DescribeComplianceByResourceOutputError>) -> Void)
```

  - Config has never invoked an evaluation for the rule. To check whether it has, use the DescribeConfigRuleEvaluationStatus action to get the LastSuccessfulInvocationTime and LastFailedInvocationTime.

  - The rule's Lambda function is failing to send evaluation results to Config. Verify that the role that you assigned to your configuration recorder includes the config:PutEvaluations permission. If the rule is a custom rule, verify that the Lambda execution role includes the config:PutEvaluations permission.

  - The rule's Lambda function has returned NOT\_APPLICABLE for all evaluation results. This can occur if the resources were deleted or removed from the rule's scope.

### describeConfigRuleEvaluationStatus(input:completion:)

Returns status information for each of your Config managed rules. The status includes information such as the last time Config invoked the rule, the last time Config failed to invoke the rule, and the related error for the last failure.

``` swift
func describeConfigRuleEvaluationStatus(input: DescribeConfigRuleEvaluationStatusInput, completion: @escaping (ClientRuntime.SdkResult<DescribeConfigRuleEvaluationStatusOutputResponse, DescribeConfigRuleEvaluationStatusOutputError>) -> Void)
```

### describeConfigRules(input:completion:)

Returns details about your Config rules.

``` swift
func describeConfigRules(input: DescribeConfigRulesInput, completion: @escaping (ClientRuntime.SdkResult<DescribeConfigRulesOutputResponse, DescribeConfigRulesOutputError>) -> Void)
```

### describeConfigurationAggregators(input:completion:)

Returns the details of one or more configuration aggregators. If the configuration aggregator is not specified, this action returns the details for all the configuration aggregators associated with the account.

``` swift
func describeConfigurationAggregators(input: DescribeConfigurationAggregatorsInput, completion: @escaping (ClientRuntime.SdkResult<DescribeConfigurationAggregatorsOutputResponse, DescribeConfigurationAggregatorsOutputError>) -> Void)
```

### describeConfigurationAggregatorSourcesStatus(input:completion:)

Returns status information for sources within an aggregator. The status includes information about the last time Config verified authorization between the source account and an aggregator account. In case of a failure, the status contains the related error code or message.

``` swift
func describeConfigurationAggregatorSourcesStatus(input: DescribeConfigurationAggregatorSourcesStatusInput, completion: @escaping (ClientRuntime.SdkResult<DescribeConfigurationAggregatorSourcesStatusOutputResponse, DescribeConfigurationAggregatorSourcesStatusOutputError>) -> Void)
```

### describeConfigurationRecorders(input:completion:)

Returns the details for the specified configuration recorders. If the configuration recorder is not specified, this action returns the details for all configuration recorders associated with the account. Currently, you can specify only one configuration recorder per region in your account.

``` swift
func describeConfigurationRecorders(input: DescribeConfigurationRecordersInput, completion: @escaping (ClientRuntime.SdkResult<DescribeConfigurationRecordersOutputResponse, DescribeConfigurationRecordersOutputError>) -> Void)
```

### describeConfigurationRecorderStatus(input:completion:)

Returns the current status of the specified configuration recorder. If a configuration recorder is not specified, this action returns the status of all configuration recorders associated with the account. Currently, you can specify only one configuration recorder per region in your account.

``` swift
func describeConfigurationRecorderStatus(input: DescribeConfigurationRecorderStatusInput, completion: @escaping (ClientRuntime.SdkResult<DescribeConfigurationRecorderStatusOutputResponse, DescribeConfigurationRecorderStatusOutputError>) -> Void)
```

### describeConformancePackCompliance(input:completion:)

Returns compliance details for each rule in that conformance pack. You must provide exact rule names.

``` swift
func describeConformancePackCompliance(input: DescribeConformancePackComplianceInput, completion: @escaping (ClientRuntime.SdkResult<DescribeConformancePackComplianceOutputResponse, DescribeConformancePackComplianceOutputError>) -> Void)
```

### describeConformancePacks(input:completion:)

Returns a list of one or more conformance packs.

``` swift
func describeConformancePacks(input: DescribeConformancePacksInput, completion: @escaping (ClientRuntime.SdkResult<DescribeConformancePacksOutputResponse, DescribeConformancePacksOutputError>) -> Void)
```

### describeConformancePackStatus(input:completion:)

Provides one or more conformance packs deployment status. If there are no conformance packs then you will see an empty result.

``` swift
func describeConformancePackStatus(input: DescribeConformancePackStatusInput, completion: @escaping (ClientRuntime.SdkResult<DescribeConformancePackStatusOutputResponse, DescribeConformancePackStatusOutputError>) -> Void)
```

### describeDeliveryChannels(input:completion:)

Returns details about the specified delivery channel. If a delivery channel is not specified, this action returns the details of all delivery channels associated with the account. Currently, you can specify only one delivery channel per region in your account.

``` swift
func describeDeliveryChannels(input: DescribeDeliveryChannelsInput, completion: @escaping (ClientRuntime.SdkResult<DescribeDeliveryChannelsOutputResponse, DescribeDeliveryChannelsOutputError>) -> Void)
```

### describeDeliveryChannelStatus(input:completion:)

Returns the current status of the specified delivery channel. If a delivery channel is not specified, this action returns the current status of all delivery channels associated with the account. Currently, you can specify only one delivery channel per region in your account.

``` swift
func describeDeliveryChannelStatus(input: DescribeDeliveryChannelStatusInput, completion: @escaping (ClientRuntime.SdkResult<DescribeDeliveryChannelStatusOutputResponse, DescribeDeliveryChannelStatusOutputError>) -> Void)
```

### describeOrganizationConfigRules(input:completion:)

Returns a list of organization config rules. When you specify the limit and the next token, you receive a paginated response. Limit and next token are not applicable if you specify organization config rule names. It is only applicable, when you request all the organization config rules.

``` swift
func describeOrganizationConfigRules(input: DescribeOrganizationConfigRulesInput, completion: @escaping (ClientRuntime.SdkResult<DescribeOrganizationConfigRulesOutputResponse, DescribeOrganizationConfigRulesOutputError>) -> Void)
```

### describeOrganizationConfigRuleStatuses(input:completion:)

Provides organization config rule deployment status for an organization. The status is not considered successful until organization config rule is successfully deployed in all the member accounts with an exception of excluded accounts. When you specify the limit and the next token, you receive a paginated response. Limit and next token are not applicable if you specify organization config rule names. It is only applicable, when you request all the organization config rules.

``` swift
func describeOrganizationConfigRuleStatuses(input: DescribeOrganizationConfigRuleStatusesInput, completion: @escaping (ClientRuntime.SdkResult<DescribeOrganizationConfigRuleStatusesOutputResponse, DescribeOrganizationConfigRuleStatusesOutputError>) -> Void)
```

### describeOrganizationConformancePacks(input:completion:)

Returns a list of organization conformance packs. When you specify the limit and the next token, you receive a paginated response. Limit and next token are not applicable if you specify organization conformance packs names. They are only applicable, when you request all the organization conformance packs.

``` swift
func describeOrganizationConformancePacks(input: DescribeOrganizationConformancePacksInput, completion: @escaping (ClientRuntime.SdkResult<DescribeOrganizationConformancePacksOutputResponse, DescribeOrganizationConformancePacksOutputError>) -> Void)
```

### describeOrganizationConformancePackStatuses(input:completion:)

Provides organization conformance pack deployment status for an organization. The status is not considered successful until organization conformance pack is successfully deployed in all the member accounts with an exception of excluded accounts. When you specify the limit and the next token, you receive a paginated response. Limit and next token are not applicable if you specify organization conformance pack names. They are only applicable, when you request all the organization conformance packs.

``` swift
func describeOrganizationConformancePackStatuses(input: DescribeOrganizationConformancePackStatusesInput, completion: @escaping (ClientRuntime.SdkResult<DescribeOrganizationConformancePackStatusesOutputResponse, DescribeOrganizationConformancePackStatusesOutputError>) -> Void)
```

### describePendingAggregationRequests(input:completion:)

Returns a list of all pending aggregation requests.

``` swift
func describePendingAggregationRequests(input: DescribePendingAggregationRequestsInput, completion: @escaping (ClientRuntime.SdkResult<DescribePendingAggregationRequestsOutputResponse, DescribePendingAggregationRequestsOutputError>) -> Void)
```

### describeRemediationConfigurations(input:completion:)

Returns the details of one or more remediation configurations.

``` swift
func describeRemediationConfigurations(input: DescribeRemediationConfigurationsInput, completion: @escaping (ClientRuntime.SdkResult<DescribeRemediationConfigurationsOutputResponse, DescribeRemediationConfigurationsOutputError>) -> Void)
```

### describeRemediationExceptions(input:completion:)

Returns the details of one or more remediation exceptions. A detailed view of a remediation exception for a set of resources that includes an explanation of an exception and the time when the exception will be deleted. When you specify the limit and the next token, you receive a paginated response. Config generates a remediation exception when a problem occurs executing a remediation action to a specific resource. Remediation exceptions blocks auto-remediation until the exception is cleared. When you specify the limit and the next token, you receive a paginated response. Limit and next token are not applicable if you request resources in batch. It is only applicable, when you request all resources.

``` swift
func describeRemediationExceptions(input: DescribeRemediationExceptionsInput, completion: @escaping (ClientRuntime.SdkResult<DescribeRemediationExceptionsOutputResponse, DescribeRemediationExceptionsOutputError>) -> Void)
```

### describeRemediationExecutionStatus(input:completion:)

Provides a detailed view of a Remediation Execution for a set of resources including state, timestamps for when steps for the remediation execution occur, and any error messages for steps that have failed. When you specify the limit and the next token, you receive a paginated response.

``` swift
func describeRemediationExecutionStatus(input: DescribeRemediationExecutionStatusInput, completion: @escaping (ClientRuntime.SdkResult<DescribeRemediationExecutionStatusOutputResponse, DescribeRemediationExecutionStatusOutputError>) -> Void)
```

### describeRetentionConfigurations(input:completion:)

Returns the details of one or more retention configurations. If the retention configuration name is not specified, this action returns the details for all the retention configurations for that account. Currently, Config supports only one retention configuration per region in your account.

``` swift
func describeRetentionConfigurations(input: DescribeRetentionConfigurationsInput, completion: @escaping (ClientRuntime.SdkResult<DescribeRetentionConfigurationsOutputResponse, DescribeRetentionConfigurationsOutputError>) -> Void)
```

### getAggregateComplianceDetailsByConfigRule(input:completion:)

Returns the evaluation results for the specified Config rule for a specific resource in a rule. The results indicate which Amazon Web Services resources were evaluated by the rule, when each resource was last evaluated, and whether each resource complies with the rule. The results can return an empty result page. But if you have a nextToken, the results are displayed on the next page.

``` swift
func getAggregateComplianceDetailsByConfigRule(input: GetAggregateComplianceDetailsByConfigRuleInput, completion: @escaping (ClientRuntime.SdkResult<GetAggregateComplianceDetailsByConfigRuleOutputResponse, GetAggregateComplianceDetailsByConfigRuleOutputError>) -> Void)
```

### getAggregateConfigRuleComplianceSummary(input:completion:)

Returns the number of compliant and noncompliant rules for one or more accounts and regions in an aggregator. The results can return an empty result page, but if you have a nextToken, the results are displayed on the next page.

``` swift
func getAggregateConfigRuleComplianceSummary(input: GetAggregateConfigRuleComplianceSummaryInput, completion: @escaping (ClientRuntime.SdkResult<GetAggregateConfigRuleComplianceSummaryOutputResponse, GetAggregateConfigRuleComplianceSummaryOutputError>) -> Void)
```

### getAggregateConformancePackComplianceSummary(input:completion:)

Returns the count of compliant and noncompliant conformance packs across all Amazon Web Services accounts and Amazon Web Services Regions in an aggregator. You can filter based on Amazon Web Services account ID or Amazon Web Services Region. The results can return an empty result page, but if you have a nextToken, the results are displayed on the next page.

``` swift
func getAggregateConformancePackComplianceSummary(input: GetAggregateConformancePackComplianceSummaryInput, completion: @escaping (ClientRuntime.SdkResult<GetAggregateConformancePackComplianceSummaryOutputResponse, GetAggregateConformancePackComplianceSummaryOutputError>) -> Void)
```

### getAggregateDiscoveredResourceCounts(input:completion:)

Returns the resource counts across accounts and regions that are present in your Config aggregator. You can request the resource counts by providing filters and GroupByKey. For example, if the input contains accountID 12345678910 and region us-east-1 in filters, the API returns the count of resources in account ID 12345678910 and region us-east-1. If the input contains ACCOUNT\_ID as a GroupByKey, the API returns resource counts for all source accounts that are present in your aggregator.

``` swift
func getAggregateDiscoveredResourceCounts(input: GetAggregateDiscoveredResourceCountsInput, completion: @escaping (ClientRuntime.SdkResult<GetAggregateDiscoveredResourceCountsOutputResponse, GetAggregateDiscoveredResourceCountsOutputError>) -> Void)
```

### getAggregateResourceConfig(input:completion:)

Returns configuration item that is aggregated for your specific resource in a specific source account and region.

``` swift
func getAggregateResourceConfig(input: GetAggregateResourceConfigInput, completion: @escaping (ClientRuntime.SdkResult<GetAggregateResourceConfigOutputResponse, GetAggregateResourceConfigOutputError>) -> Void)
```

### getComplianceDetailsByConfigRule(input:completion:)

Returns the evaluation results for the specified Config rule. The results indicate which Amazon Web Services resources were evaluated by the rule, when each resource was last evaluated, and whether each resource complies with the rule.

``` swift
func getComplianceDetailsByConfigRule(input: GetComplianceDetailsByConfigRuleInput, completion: @escaping (ClientRuntime.SdkResult<GetComplianceDetailsByConfigRuleOutputResponse, GetComplianceDetailsByConfigRuleOutputError>) -> Void)
```

### getComplianceDetailsByResource(input:completion:)

Returns the evaluation results for the specified Amazon Web Services resource. The results indicate which Config rules were used to evaluate the resource, when each rule was last used, and whether the resource complies with each rule.

``` swift
func getComplianceDetailsByResource(input: GetComplianceDetailsByResourceInput, completion: @escaping (ClientRuntime.SdkResult<GetComplianceDetailsByResourceOutputResponse, GetComplianceDetailsByResourceOutputError>) -> Void)
```

### getComplianceSummaryByConfigRule(input:completion:)

Returns the number of Config rules that are compliant and noncompliant, up to a maximum of 25 for each.

``` swift
func getComplianceSummaryByConfigRule(input: GetComplianceSummaryByConfigRuleInput, completion: @escaping (ClientRuntime.SdkResult<GetComplianceSummaryByConfigRuleOutputResponse, GetComplianceSummaryByConfigRuleOutputError>) -> Void)
```

### getComplianceSummaryByResourceType(input:completion:)

Returns the number of resources that are compliant and the number that are noncompliant. You can specify one or more resource types to get these numbers for each resource type. The maximum number returned is 100.

``` swift
func getComplianceSummaryByResourceType(input: GetComplianceSummaryByResourceTypeInput, completion: @escaping (ClientRuntime.SdkResult<GetComplianceSummaryByResourceTypeOutputResponse, GetComplianceSummaryByResourceTypeOutputError>) -> Void)
```

### getConformancePackComplianceDetails(input:completion:)

Returns compliance details of a conformance pack for all Amazon Web Services resources that are monitered by conformance pack.

``` swift
func getConformancePackComplianceDetails(input: GetConformancePackComplianceDetailsInput, completion: @escaping (ClientRuntime.SdkResult<GetConformancePackComplianceDetailsOutputResponse, GetConformancePackComplianceDetailsOutputError>) -> Void)
```

### getConformancePackComplianceSummary(input:completion:)

Returns compliance details for the conformance pack based on the cumulative compliance results of all the rules in that conformance pack.

``` swift
func getConformancePackComplianceSummary(input: GetConformancePackComplianceSummaryInput, completion: @escaping (ClientRuntime.SdkResult<GetConformancePackComplianceSummaryOutputResponse, GetConformancePackComplianceSummaryOutputError>) -> Void)
```

### getDiscoveredResourceCounts(input:completion:)

Returns the resource types, the number of each resource type, and the total number of resources that Config is recording in this region for your Amazon Web Services account. Example

``` swift
func getDiscoveredResourceCounts(input: GetDiscoveredResourceCountsInput, completion: @escaping (ClientRuntime.SdkResult<GetDiscoveredResourceCountsOutputResponse, GetDiscoveredResourceCountsOutputError>) -> Void)
```

  - Config is recording three resource types in the US East (Ohio) Region for your account: 25 EC2 instances, 20 IAM users, and 15 S3 buckets.

  - You make a call to the GetDiscoveredResourceCounts action and specify that you want all resource types.

  - Config returns the following:

  - The resource types (EC2 instances, IAM users, and S3 buckets).

  - The number of each resource type (25, 20, and 15).

  - The total number of all resources (60).

The response is paginated. By default, Config lists 100 \[ResourceCount\] objects on each page. You can customize this number with the limit parameter. The response includes a nextToken string. To get the next page of results, run the request again and specify the string for the nextToken parameter. If you make a call to the \[GetDiscoveredResourceCounts\] action, you might not immediately receive resource counts in the following situations:

  - You are a new Config customer.

  - You just enabled resource recording.

It might take a few minutes for Config to record and count your resources. Wait a few minutes and then retry the \[GetDiscoveredResourceCounts\] action.

### getOrganizationConfigRuleDetailedStatus(input:completion:)

Returns detailed status for each member account within an organization for a given organization config rule.

``` swift
func getOrganizationConfigRuleDetailedStatus(input: GetOrganizationConfigRuleDetailedStatusInput, completion: @escaping (ClientRuntime.SdkResult<GetOrganizationConfigRuleDetailedStatusOutputResponse, GetOrganizationConfigRuleDetailedStatusOutputError>) -> Void)
```

### getOrganizationConformancePackDetailedStatus(input:completion:)

Returns detailed status for each member account within an organization for a given organization conformance pack.

``` swift
func getOrganizationConformancePackDetailedStatus(input: GetOrganizationConformancePackDetailedStatusInput, completion: @escaping (ClientRuntime.SdkResult<GetOrganizationConformancePackDetailedStatusOutputResponse, GetOrganizationConformancePackDetailedStatusOutputError>) -> Void)
```

### getResourceConfigHistory(input:completion:)

Returns a list of ConfigurationItems for the specified resource. The list contains details about each state of the resource during the specified time interval. If you specified a retention period to retain your ConfigurationItems between a minimum of 30 days and a maximum of 7 years (2557 days), Config returns the ConfigurationItems for the specified retention period. The response is paginated. By default, Config returns a limit of 10 configuration items per page. You can customize this number with the limit parameter. The response includes a nextToken string. To get the next page of results, run the request again and specify the string for the nextToken parameter. Each call to the API is limited to span a duration of seven days. It is likely that the number of records returned is smaller than the specified limit. In such cases, you can make another call, using the nextToken.

``` swift
func getResourceConfigHistory(input: GetResourceConfigHistoryInput, completion: @escaping (ClientRuntime.SdkResult<GetResourceConfigHistoryOutputResponse, GetResourceConfigHistoryOutputError>) -> Void)
```

### getStoredQuery(input:completion:)

Returns the details of a specific stored query.

``` swift
func getStoredQuery(input: GetStoredQueryInput, completion: @escaping (ClientRuntime.SdkResult<GetStoredQueryOutputResponse, GetStoredQueryOutputError>) -> Void)
```

### listAggregateDiscoveredResources(input:completion:)

Accepts a resource type and returns a list of resource identifiers that are aggregated for a specific resource type across accounts and regions. A resource identifier includes the resource type, ID, (if available) the custom resource name, source account, and source region. You can narrow the results to include only resources that have specific resource IDs, or a resource name, or source account ID, or source region. For example, if the input consists of accountID 12345678910 and the region is us-east-1 for resource type AWS::EC2::Instance then the API returns all the EC2 instance identifiers of accountID 12345678910 and region us-east-1.

``` swift
func listAggregateDiscoveredResources(input: ListAggregateDiscoveredResourcesInput, completion: @escaping (ClientRuntime.SdkResult<ListAggregateDiscoveredResourcesOutputResponse, ListAggregateDiscoveredResourcesOutputError>) -> Void)
```

### listDiscoveredResources(input:completion:)

Accepts a resource type and returns a list of resource identifiers for the resources of that type. A resource identifier includes the resource type, ID, and (if available) the custom resource name. The results consist of resources that Config has discovered, including those that Config is not currently recording. You can narrow the results to include only resources that have specific resource IDs or a resource name. You can specify either resource IDs or a resource name, but not both, in the same request. The response is paginated. By default, Config lists 100 resource identifiers on each page. You can customize this number with the limit parameter. The response includes a nextToken string. To get the next page of results, run the request again and specify the string for the nextToken parameter.

``` swift
func listDiscoveredResources(input: ListDiscoveredResourcesInput, completion: @escaping (ClientRuntime.SdkResult<ListDiscoveredResourcesOutputResponse, ListDiscoveredResourcesOutputError>) -> Void)
```

### listStoredQueries(input:completion:)

Lists the stored queries for a single Amazon Web Services account and a single Amazon Web Services Region. The default is 100.

``` swift
func listStoredQueries(input: ListStoredQueriesInput, completion: @escaping (ClientRuntime.SdkResult<ListStoredQueriesOutputResponse, ListStoredQueriesOutputError>) -> Void)
```

### listTagsForResource(input:completion:)

List the tags for Config resource.

``` swift
func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (ClientRuntime.SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
```

### putAggregationAuthorization(input:completion:)

Authorizes the aggregator account and region to collect data from the source account and region.

``` swift
func putAggregationAuthorization(input: PutAggregationAuthorizationInput, completion: @escaping (ClientRuntime.SdkResult<PutAggregationAuthorizationOutputResponse, PutAggregationAuthorizationOutputError>) -> Void)
```

### putConfigRule(input:completion:)

Adds or updates an Config rule for evaluating whether your Amazon Web Services resources comply with your desired configurations. You can use this action for custom Config rules and Config managed rules. A custom Config rule is a rule that you develop and maintain. An Config managed rule is a customizable, predefined rule that Config provides. If you are adding a new custom Config rule, you must first create the Lambda function that the rule invokes to evaluate your resources. When you use the PutConfigRule action to add the rule to Config, you must specify the Amazon Resource Name (ARN) that Lambda assigns to the function. Specify the ARN for the SourceIdentifier key. This key is part of the Source object, which is part of the ConfigRule object. If you are adding an Config managed rule, specify the rule's identifier for the SourceIdentifier key. To reference Config managed rule identifiers, see [About Config managed rules](https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html). For any new rule that you add, specify the ConfigRuleName in the ConfigRule object. Do not specify the ConfigRuleArn or the ConfigRuleId. These values are generated by Config for new rules. If you are updating a rule that you added previously, you can specify the rule by ConfigRuleName, ConfigRuleId, or ConfigRuleArn in the ConfigRule data type that you use in this request. The maximum number of rules that Config supports is 150. For information about requesting a rule limit increase, see [Config Limits](http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_config) in the Amazon Web Services General Reference Guide. For more information about developing and using Config rules, see [Evaluating Amazon Web Services resource Configurations with Config](https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config.html) in the Config Developer Guide.

``` swift
func putConfigRule(input: PutConfigRuleInput, completion: @escaping (ClientRuntime.SdkResult<PutConfigRuleOutputResponse, PutConfigRuleOutputError>) -> Void)
```

### putConfigurationAggregator(input:completion:)

Creates and updates the configuration aggregator with the selected source accounts and regions. The source account can be individual account(s) or an organization. accountIds that are passed will be replaced with existing accounts. If you want to add additional accounts into the aggregator, call DescribeAggregator to get the previous accounts and then append new ones. Config should be enabled in source accounts and regions you want to aggregate. If your source type is an organization, you must be signed in to the management account or a registered delegated administrator and all the features must be enabled in your organization. If the caller is a management account, Config calls EnableAwsServiceAccess API to enable integration between Config and Organizations. If the caller is a registered delegated administrator, Config calls ListDelegatedAdministrators API to verify whether the caller is a valid delegated administrator. To register a delegated administrator, see [Register a Delegated Administrator](https://docs.aws.amazon.com/config/latest/developerguide/set-up-aggregator-cli.html#register-a-delegated-administrator-cli) in the Config developer guide.

``` swift
func putConfigurationAggregator(input: PutConfigurationAggregatorInput, completion: @escaping (ClientRuntime.SdkResult<PutConfigurationAggregatorOutputResponse, PutConfigurationAggregatorOutputError>) -> Void)
```

### putConfigurationRecorder(input:completion:)

Creates a new configuration recorder to record the selected resource configurations. You can use this action to change the role roleARN or the recordingGroup of an existing recorder. To change the role, call the action on the existing configuration recorder and specify a role. Currently, you can specify only one configuration recorder per region in your account. If ConfigurationRecorder does not have the recordingGroup parameter specified, the default is to record all supported resource types.

``` swift
func putConfigurationRecorder(input: PutConfigurationRecorderInput, completion: @escaping (ClientRuntime.SdkResult<PutConfigurationRecorderOutputResponse, PutConfigurationRecorderOutputError>) -> Void)
```

### putConformancePack(input:completion:)

Creates or updates a conformance pack. A conformance pack is a collection of Config rules that can be easily deployed in an account and a region and across Amazon Web Services Organization. This API creates a service linked role AWSServiceRoleForConfigConforms in your account. The service linked role is created only when the role does not exist in your account. You must specify either the TemplateS3Uri or the TemplateBody parameter, but not both. If you provide both Config uses the TemplateS3Uri parameter and ignores the TemplateBody parameter.

``` swift
func putConformancePack(input: PutConformancePackInput, completion: @escaping (ClientRuntime.SdkResult<PutConformancePackOutputResponse, PutConformancePackOutputError>) -> Void)
```

### putDeliveryChannel(input:completion:)

Creates a delivery channel object to deliver configuration information to an Amazon S3 bucket and Amazon SNS topic. Before you can create a delivery channel, you must create a configuration recorder. You can use this action to change the Amazon S3 bucket or an Amazon SNS topic of the existing delivery channel. To change the Amazon S3 bucket or an Amazon SNS topic, call this action and specify the changed values for the S3 bucket and the SNS topic. If you specify a different value for either the S3 bucket or the SNS topic, this action will keep the existing value for the parameter that is not changed. You can have only one delivery channel per region in your account.

``` swift
func putDeliveryChannel(input: PutDeliveryChannelInput, completion: @escaping (ClientRuntime.SdkResult<PutDeliveryChannelOutputResponse, PutDeliveryChannelOutputError>) -> Void)
```

### putEvaluations(input:completion:)

Used by an Lambda function to deliver evaluation results to Config. This action is required in every Lambda function that is invoked by an Config rule.

``` swift
func putEvaluations(input: PutEvaluationsInput, completion: @escaping (ClientRuntime.SdkResult<PutEvaluationsOutputResponse, PutEvaluationsOutputError>) -> Void)
```

### putExternalEvaluation(input:completion:)

Add or updates the evaluations for process checks. This API checks if the rule is a process check when the name of the Config rule is provided.

``` swift
func putExternalEvaluation(input: PutExternalEvaluationInput, completion: @escaping (ClientRuntime.SdkResult<PutExternalEvaluationOutputResponse, PutExternalEvaluationOutputError>) -> Void)
```

### putOrganizationConfigRule(input:completion:)

Adds or updates organization config rule for your entire organization evaluating whether your Amazon Web Services resources comply with your desired configurations. Only a master account and a delegated administrator can create or update an organization config rule. When calling this API with a delegated administrator, you must ensure Organizations ListDelegatedAdministrator permissions are added. This API enables organization service access through the EnableAWSServiceAccess action and creates a service linked role AWSServiceRoleForConfigMultiAccountSetup in the master or delegated administrator account of your organization. The service linked role is created only when the role does not exist in the caller account. Config verifies the existence of role with GetRole action. To use this API with delegated administrator, register a delegated administrator by calling Amazon Web Services Organization register-delegated-administrator for config-multiaccountsetup.amazonaws.com. You can use this action to create both custom Config rules and Config managed rules. If you are adding a new custom Config rule, you must first create Lambda function in the master account or a delegated administrator that the rule invokes to evaluate your resources. You also need to create an IAM role in the managed-account that can be assumed by the Lambda function. When you use the PutOrganizationConfigRule action to add the rule to Config, you must specify the Amazon Resource Name (ARN) that Lambda assigns to the function. If you are adding an Config managed rule, specify the rule's identifier for the RuleIdentifier key. The maximum number of organization config rules that Config supports is 150 and 3 delegated administrator per organization. Prerequisite: Ensure you call EnableAllFeatures API to enable all features in an organization. Specify either OrganizationCustomRuleMetadata or OrganizationManagedRuleMetadata.

``` swift
func putOrganizationConfigRule(input: PutOrganizationConfigRuleInput, completion: @escaping (ClientRuntime.SdkResult<PutOrganizationConfigRuleOutputResponse, PutOrganizationConfigRuleOutputError>) -> Void)
```

### putOrganizationConformancePack(input:completion:)

Deploys conformance packs across member accounts in an Amazon Web Services Organization. Only a master account and a delegated administrator can call this API. When calling this API with a delegated administrator, you must ensure Organizations ListDelegatedAdministrator permissions are added. This API enables organization service access for config-multiaccountsetup.amazonaws.com through the EnableAWSServiceAccess action and creates a service linked role AWSServiceRoleForConfigMultiAccountSetup in the master or delegated administrator account of your organization. The service linked role is created only when the role does not exist in the caller account. To use this API with delegated administrator, register a delegated administrator by calling Amazon Web Services Organization register-delegate-admin for config-multiaccountsetup.amazonaws.com. Prerequisite: Ensure you call EnableAllFeatures API to enable all features in an organization. You must specify either the TemplateS3Uri or the TemplateBody parameter, but not both. If you provide both Config uses the TemplateS3Uri parameter and ignores the TemplateBody parameter. Config sets the state of a conformance pack to CREATE\_IN\_PROGRESS and UPDATE\_IN\_PROGRESS until the conformance pack is created or updated.

``` swift
func putOrganizationConformancePack(input: PutOrganizationConformancePackInput, completion: @escaping (ClientRuntime.SdkResult<PutOrganizationConformancePackOutputResponse, PutOrganizationConformancePackOutputError>) -> Void)
```

You cannot update a conformance pack while it is in this state. You can create 50 conformance packs with 25 Config rules in each pack and 3 delegated administrator per organization.

### putRemediationConfigurations(input:completion:)

Adds or updates the remediation configuration with a specific Config rule with the selected target or action. The API creates the RemediationConfiguration object for the Config rule. The Config rule must already exist for you to add a remediation configuration. The target (SSM document) must exist and have permissions to use the target. If you make backward incompatible changes to the SSM document, you must call this again to ensure the remediations can run. This API does not support adding remediation configurations for service-linked Config Rules such as Organization Config rules, the rules deployed by conformance packs, and rules deployed by Amazon Web Services Security Hub.

``` swift
func putRemediationConfigurations(input: PutRemediationConfigurationsInput, completion: @escaping (ClientRuntime.SdkResult<PutRemediationConfigurationsOutputResponse, PutRemediationConfigurationsOutputError>) -> Void)
```

### putRemediationExceptions(input:completion:)

A remediation exception is when a specific resource is no longer considered for auto-remediation. This API adds a new exception or updates an existing exception for a specific resource with a specific Config rule. Config generates a remediation exception when a problem occurs executing a remediation action to a specific resource. Remediation exceptions blocks auto-remediation until the exception is cleared.

``` swift
func putRemediationExceptions(input: PutRemediationExceptionsInput, completion: @escaping (ClientRuntime.SdkResult<PutRemediationExceptionsOutputResponse, PutRemediationExceptionsOutputError>) -> Void)
```

### putResourceConfig(input:completion:)

Records the configuration state for the resource provided in the request. The configuration state of a resource is represented in Config as Configuration Items. Once this API records the configuration item, you can retrieve the list of configuration items for the custom resource type using existing Config APIs. The custom resource type must be registered with CloudFormation. This API accepts the configuration item registered with CloudFormation. When you call this API, Config only stores configuration state of the resource provided in the request. This API does not change or remediate the configuration of the resource. Write-only schema properites are not recorded as part of the published configuration item.

``` swift
func putResourceConfig(input: PutResourceConfigInput, completion: @escaping (ClientRuntime.SdkResult<PutResourceConfigOutputResponse, PutResourceConfigOutputError>) -> Void)
```

### putRetentionConfiguration(input:completion:)

Creates and updates the retention configuration with details about retention period (number of days) that Config stores your historical information. The API creates the RetentionConfiguration object and names the object as default. When you have a RetentionConfiguration object named default, calling the API modifies the default object. Currently, Config supports only one retention configuration per region in your account.

``` swift
func putRetentionConfiguration(input: PutRetentionConfigurationInput, completion: @escaping (ClientRuntime.SdkResult<PutRetentionConfigurationOutputResponse, PutRetentionConfigurationOutputError>) -> Void)
```

### putStoredQuery(input:completion:)

Saves a new query or updates an existing saved query. The QueryName must be unique for a single Amazon Web Services account and a single Amazon Web Services Region. You can create upto 300 queries in a single Amazon Web Services account and a single Amazon Web Services Region.

``` swift
func putStoredQuery(input: PutStoredQueryInput, completion: @escaping (ClientRuntime.SdkResult<PutStoredQueryOutputResponse, PutStoredQueryOutputError>) -> Void)
```

### selectAggregateResourceConfig(input:completion:)

Accepts a structured query language (SQL) SELECT command and an aggregator to query configuration state of Amazon Web Services resources across multiple accounts and regions, performs the corresponding search, and returns resource configurations matching the properties. For more information about query components, see the [ Query Components ](https://docs.aws.amazon.com/config/latest/developerguide/query-components.html) section in the Config Developer Guide. If you run an aggregation query (i.e., using GROUP BY or using aggregate functions such as COUNT; e.g., SELECT resourceId, COUNT(\*) WHERE resourceType = 'AWS::IAM::Role' GROUP BY resourceId) and do not specify the MaxResults or the Limit query parameters, the default page size is set to 500. If you run a non-aggregation query (i.e., not using GROUP BY or aggregate function; e.g., SELECT \* WHERE resourceType = 'AWS::IAM::Role') and do not specify the MaxResults or the Limit query parameters, the default page size is set to 25.

``` swift
func selectAggregateResourceConfig(input: SelectAggregateResourceConfigInput, completion: @escaping (ClientRuntime.SdkResult<SelectAggregateResourceConfigOutputResponse, SelectAggregateResourceConfigOutputError>) -> Void)
```

### selectResourceConfig(input:completion:)

Accepts a structured query language (SQL) SELECT command, performs the corresponding search, and returns resource configurations matching the properties. For more information about query components, see the [ Query Components ](https://docs.aws.amazon.com/config/latest/developerguide/query-components.html) section in the Config Developer Guide.

``` swift
func selectResourceConfig(input: SelectResourceConfigInput, completion: @escaping (ClientRuntime.SdkResult<SelectResourceConfigOutputResponse, SelectResourceConfigOutputError>) -> Void)
```

### startConfigRulesEvaluation(input:completion:)

Runs an on-demand evaluation for the specified Config rules against the last known configuration state of the resources. Use StartConfigRulesEvaluation when you want to test that a rule you updated is working as expected. StartConfigRulesEvaluation does not re-record the latest configuration state for your resources. It re-runs an evaluation against the last known state of your resources. You can specify up to 25 Config rules per request. An existing StartConfigRulesEvaluation call for the specified rules must complete before you can call the API again. If you chose to have Config stream to an Amazon SNS topic, you will receive a ConfigRuleEvaluationStarted notification when the evaluation starts. You don't need to call the StartConfigRulesEvaluation API to run an evaluation for a new rule. When you create a rule, Config evaluates your resources against the rule automatically. The StartConfigRulesEvaluation API is useful if you want to run on-demand evaluations, such as the following example:

``` swift
func startConfigRulesEvaluation(input: StartConfigRulesEvaluationInput, completion: @escaping (ClientRuntime.SdkResult<StartConfigRulesEvaluationOutputResponse, StartConfigRulesEvaluationOutputError>) -> Void)
```

  - You have a custom rule that evaluates your IAM resources every 24 hours.

  - You update your Lambda function to add additional conditions to your rule.

  - Instead of waiting for the next periodic evaluation, you call the StartConfigRulesEvaluation API.

  - Config invokes your Lambda function and evaluates your IAM resources.

  - Your custom rule will still run periodic evaluations every 24 hours.

### startConfigurationRecorder(input:completion:)

Starts recording configurations of the Amazon Web Services resources you have selected to record in your Amazon Web Services account. You must have created at least one delivery channel to successfully start the configuration recorder.

``` swift
func startConfigurationRecorder(input: StartConfigurationRecorderInput, completion: @escaping (ClientRuntime.SdkResult<StartConfigurationRecorderOutputResponse, StartConfigurationRecorderOutputError>) -> Void)
```

### startRemediationExecution(input:completion:)

Runs an on-demand remediation for the specified Config rules against the last known remediation configuration. It runs an execution against the current state of your resources. Remediation execution is asynchronous. You can specify up to 100 resource keys per request. An existing StartRemediationExecution call for the specified resource keys must complete before you can call the API again.

``` swift
func startRemediationExecution(input: StartRemediationExecutionInput, completion: @escaping (ClientRuntime.SdkResult<StartRemediationExecutionOutputResponse, StartRemediationExecutionOutputError>) -> Void)
```

### stopConfigurationRecorder(input:completion:)

Stops recording configurations of the Amazon Web Services resources you have selected to record in your Amazon Web Services account.

``` swift
func stopConfigurationRecorder(input: StopConfigurationRecorderInput, completion: @escaping (ClientRuntime.SdkResult<StopConfigurationRecorderOutputResponse, StopConfigurationRecorderOutputError>) -> Void)
```

### tagResource(input:completion:)

Associates the specified tags to a resource with the specified resourceArn. If existing tags on a resource are not specified in the request parameters, they are not changed. When a resource is deleted, the tags associated with that resource are deleted as well.

``` swift
func tagResource(input: TagResourceInput, completion: @escaping (ClientRuntime.SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
```

### untagResource(input:completion:)

Deletes specified tags from a resource.

``` swift
func untagResource(input: UntagResourceInput, completion: @escaping (ClientRuntime.SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
```
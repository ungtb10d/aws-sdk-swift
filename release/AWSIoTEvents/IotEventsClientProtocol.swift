// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// AWS IoT Events monitors your equipment or device fleets for failures or changes in operation, and triggers actions when such events occur. You can use AWS IoT Events API operations to create, read, update, and delete inputs and detector models, and to list their versions.
public protocol IotEventsClientProtocol {
    /// Creates an alarm model to monitor an AWS IoT Events input attribute. You can use the alarm to get notified when the value is outside a specified range. For more information, see [Create an alarm model](https://docs.aws.amazon.com/iotevents/latest/developerguide/create-alarms.html) in the AWS IoT Events Developer Guide.
    func createAlarmModel(input: CreateAlarmModelInput, completion: @escaping (ClientRuntime.SdkResult<CreateAlarmModelOutputResponse, CreateAlarmModelOutputError>) -> Void)
    /// Creates a detector model.
    func createDetectorModel(input: CreateDetectorModelInput, completion: @escaping (ClientRuntime.SdkResult<CreateDetectorModelOutputResponse, CreateDetectorModelOutputError>) -> Void)
    /// Creates an input.
    func createInput(input: CreateInputInput, completion: @escaping (ClientRuntime.SdkResult<CreateInputOutputResponse, CreateInputOutputError>) -> Void)
    /// Deletes an alarm model. Any alarm instances that were created based on this alarm model are also deleted. This action can't be undone.
    func deleteAlarmModel(input: DeleteAlarmModelInput, completion: @escaping (ClientRuntime.SdkResult<DeleteAlarmModelOutputResponse, DeleteAlarmModelOutputError>) -> Void)
    /// Deletes a detector model. Any active instances of the detector model are also deleted.
    func deleteDetectorModel(input: DeleteDetectorModelInput, completion: @escaping (ClientRuntime.SdkResult<DeleteDetectorModelOutputResponse, DeleteDetectorModelOutputError>) -> Void)
    /// Deletes an input.
    func deleteInput(input: DeleteInputInput, completion: @escaping (ClientRuntime.SdkResult<DeleteInputOutputResponse, DeleteInputOutputError>) -> Void)
    /// Retrieves information about an alarm model. If you don't specify a value for the alarmModelVersion parameter, the latest version is returned.
    func describeAlarmModel(input: DescribeAlarmModelInput, completion: @escaping (ClientRuntime.SdkResult<DescribeAlarmModelOutputResponse, DescribeAlarmModelOutputError>) -> Void)
    /// Describes a detector model. If the version parameter is not specified, information about the latest version is returned.
    func describeDetectorModel(input: DescribeDetectorModelInput, completion: @escaping (ClientRuntime.SdkResult<DescribeDetectorModelOutputResponse, DescribeDetectorModelOutputError>) -> Void)
    /// Retrieves runtime information about a detector model analysis. After AWS IoT Events starts analyzing your detector model, you have up to 24 hours to retrieve the analysis results.
    func describeDetectorModelAnalysis(input: DescribeDetectorModelAnalysisInput, completion: @escaping (ClientRuntime.SdkResult<DescribeDetectorModelAnalysisOutputResponse, DescribeDetectorModelAnalysisOutputError>) -> Void)
    /// Describes an input.
    func describeInput(input: DescribeInputInput, completion: @escaping (ClientRuntime.SdkResult<DescribeInputOutputResponse, DescribeInputOutputError>) -> Void)
    /// Retrieves the current settings of the AWS IoT Events logging options.
    func describeLoggingOptions(input: DescribeLoggingOptionsInput, completion: @escaping (ClientRuntime.SdkResult<DescribeLoggingOptionsOutputResponse, DescribeLoggingOptionsOutputError>) -> Void)
    /// Retrieves one or more analysis results of the detector model. After AWS IoT Events starts analyzing your detector model, you have up to 24 hours to retrieve the analysis results.
    func getDetectorModelAnalysisResults(input: GetDetectorModelAnalysisResultsInput, completion: @escaping (ClientRuntime.SdkResult<GetDetectorModelAnalysisResultsOutputResponse, GetDetectorModelAnalysisResultsOutputError>) -> Void)
    /// Lists the alarm models that you created. The operation returns only the metadata associated with each alarm model.
    func listAlarmModels(input: ListAlarmModelsInput, completion: @escaping (ClientRuntime.SdkResult<ListAlarmModelsOutputResponse, ListAlarmModelsOutputError>) -> Void)
    /// Lists all the versions of an alarm model. The operation returns only the metadata associated with each alarm model version.
    func listAlarmModelVersions(input: ListAlarmModelVersionsInput, completion: @escaping (ClientRuntime.SdkResult<ListAlarmModelVersionsOutputResponse, ListAlarmModelVersionsOutputError>) -> Void)
    /// Lists the detector models you have created. Only the metadata associated with each detector model is returned.
    func listDetectorModels(input: ListDetectorModelsInput, completion: @escaping (ClientRuntime.SdkResult<ListDetectorModelsOutputResponse, ListDetectorModelsOutputError>) -> Void)
    /// Lists all the versions of a detector model. Only the metadata associated with each detector model version is returned.
    func listDetectorModelVersions(input: ListDetectorModelVersionsInput, completion: @escaping (ClientRuntime.SdkResult<ListDetectorModelVersionsOutputResponse, ListDetectorModelVersionsOutputError>) -> Void)
    /// Lists one or more input routings.
    func listInputRoutings(input: ListInputRoutingsInput, completion: @escaping (ClientRuntime.SdkResult<ListInputRoutingsOutputResponse, ListInputRoutingsOutputError>) -> Void)
    /// Lists the inputs you have created.
    func listInputs(input: ListInputsInput, completion: @escaping (ClientRuntime.SdkResult<ListInputsOutputResponse, ListInputsOutputError>) -> Void)
    /// Lists the tags (metadata) you have assigned to the resource.
    func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (ClientRuntime.SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
    /// Sets or updates the AWS IoT Events logging options. If you update the value of any loggingOptions field, it takes up to one minute for the change to take effect. If you change the policy attached to the role you specified in the roleArn field (for example, to correct an invalid policy), it takes up to five minutes for that change to take effect.
    func putLoggingOptions(input: PutLoggingOptionsInput, completion: @escaping (ClientRuntime.SdkResult<PutLoggingOptionsOutputResponse, PutLoggingOptionsOutputError>) -> Void)
    /// Performs an analysis of your detector model. For more information, see [Troubleshooting a detector model](https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-analyze-api.html) in the AWS IoT Events Developer Guide.
    func startDetectorModelAnalysis(input: StartDetectorModelAnalysisInput, completion: @escaping (ClientRuntime.SdkResult<StartDetectorModelAnalysisOutputResponse, StartDetectorModelAnalysisOutputError>) -> Void)
    /// Adds to or modifies the tags of the given resource. Tags are metadata that can be used to manage a resource.
    func tagResource(input: TagResourceInput, completion: @escaping (ClientRuntime.SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
    /// Removes the given tags (metadata) from the resource.
    func untagResource(input: UntagResourceInput, completion: @escaping (ClientRuntime.SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
    /// Updates an alarm model. Any alarms that were created based on the previous version are deleted and then created again as new data arrives.
    func updateAlarmModel(input: UpdateAlarmModelInput, completion: @escaping (ClientRuntime.SdkResult<UpdateAlarmModelOutputResponse, UpdateAlarmModelOutputError>) -> Void)
    /// Updates a detector model. Detectors (instances) spawned by the previous version are deleted and then re-created as new inputs arrive.
    func updateDetectorModel(input: UpdateDetectorModelInput, completion: @escaping (ClientRuntime.SdkResult<UpdateDetectorModelOutputResponse, UpdateDetectorModelOutputError>) -> Void)
    /// Updates an input.
    func updateInput(input: UpdateInputInput, completion: @escaping (ClientRuntime.SdkResult<UpdateInputOutputResponse, UpdateInputOutputError>) -> Void)
}

public enum IotEventsClientTypes {}
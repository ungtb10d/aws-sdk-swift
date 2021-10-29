# FisClient

``` swift
public class FisClient 
```

## Inheritance

[`FisClientProtocol`](/aws-sdk-swift/reference/0.x/AWSFis/FisClientProtocol)

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
public static let clientName = "FisClient"
```

## Methods

### `createExperimentTemplate(input:completion:)`

Creates an experiment template. To create a template, specify the following information:

``` swift
public func createExperimentTemplate(input: CreateExperimentTemplateInput, completion: @escaping (ClientRuntime.SdkResult<CreateExperimentTemplateOutputResponse, CreateExperimentTemplateOutputError>) -> Void)
```

  - Targets: A target can be a specific resource in your AWS environment, or one or more resources that match criteria that you specify, for example, resources that have specific tags.

  - Actions: The actions to carry out on the target. You can specify multiple actions, the duration of each action, and when to start each action during an experiment.

  - Stop conditions: If a stop condition is triggered while an experiment is running, the experiment is automatically stopped. You can define a stop condition as a CloudWatch alarm.

For more information, see the [AWS Fault Injection Simulator User Guide](https://docs.aws.amazon.com/fis/latest/userguide/).

### `deleteExperimentTemplate(input:completion:)`

Deletes the specified experiment template.

``` swift
public func deleteExperimentTemplate(input: DeleteExperimentTemplateInput, completion: @escaping (ClientRuntime.SdkResult<DeleteExperimentTemplateOutputResponse, DeleteExperimentTemplateOutputError>) -> Void)
```

### `getAction(input:completion:)`

Gets information about the specified AWS FIS action.

``` swift
public func getAction(input: GetActionInput, completion: @escaping (ClientRuntime.SdkResult<GetActionOutputResponse, GetActionOutputError>) -> Void)
```

### `getExperiment(input:completion:)`

Gets information about the specified experiment.

``` swift
public func getExperiment(input: GetExperimentInput, completion: @escaping (ClientRuntime.SdkResult<GetExperimentOutputResponse, GetExperimentOutputError>) -> Void)
```

### `getExperimentTemplate(input:completion:)`

Gets information about the specified experiment template.

``` swift
public func getExperimentTemplate(input: GetExperimentTemplateInput, completion: @escaping (ClientRuntime.SdkResult<GetExperimentTemplateOutputResponse, GetExperimentTemplateOutputError>) -> Void)
```

### `listActions(input:completion:)`

Lists the available AWS FIS actions.

``` swift
public func listActions(input: ListActionsInput, completion: @escaping (ClientRuntime.SdkResult<ListActionsOutputResponse, ListActionsOutputError>) -> Void)
```

### `listExperimentTemplates(input:completion:)`

Lists your experiment templates.

``` swift
public func listExperimentTemplates(input: ListExperimentTemplatesInput, completion: @escaping (ClientRuntime.SdkResult<ListExperimentTemplatesOutputResponse, ListExperimentTemplatesOutputError>) -> Void)
```

### `listExperiments(input:completion:)`

Lists your experiments.

``` swift
public func listExperiments(input: ListExperimentsInput, completion: @escaping (ClientRuntime.SdkResult<ListExperimentsOutputResponse, ListExperimentsOutputError>) -> Void)
```

### `listTagsForResource(input:completion:)`

Lists the tags for the specified resource.

``` swift
public func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (ClientRuntime.SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
```

### `startExperiment(input:completion:)`

Starts running an experiment from the specified experiment template.

``` swift
public func startExperiment(input: StartExperimentInput, completion: @escaping (ClientRuntime.SdkResult<StartExperimentOutputResponse, StartExperimentOutputError>) -> Void)
```

### `stopExperiment(input:completion:)`

Stops the specified experiment.

``` swift
public func stopExperiment(input: StopExperimentInput, completion: @escaping (ClientRuntime.SdkResult<StopExperimentOutputResponse, StopExperimentOutputError>) -> Void)
```

### `tagResource(input:completion:)`

Applies the specified tags to the specified resource.

``` swift
public func tagResource(input: TagResourceInput, completion: @escaping (ClientRuntime.SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
```

### `untagResource(input:completion:)`

Removes the specified tags from the specified resource.

``` swift
public func untagResource(input: UntagResourceInput, completion: @escaping (ClientRuntime.SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
```

### `updateExperimentTemplate(input:completion:)`

Updates the specified experiment template.

``` swift
public func updateExperimentTemplate(input: UpdateExperimentTemplateInput, completion: @escaping (ClientRuntime.SdkResult<UpdateExperimentTemplateOutputResponse, UpdateExperimentTemplateOutputError>) -> Void)
```
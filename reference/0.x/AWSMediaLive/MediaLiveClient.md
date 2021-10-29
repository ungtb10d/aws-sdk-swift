# MediaLiveClient

``` swift
public class MediaLiveClient 
```

## Inheritance

[`MediaLiveClientProtocol`](/aws-sdk-swift/reference/0.x/AWSMediaLive/MediaLiveClientProtocol)

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
public static let clientName = "MediaLiveClient"
```

## Methods

### `acceptInputDeviceTransfer(input:completion:)`

Accept an incoming input device transfer. The ownership of the device will transfer to your AWS account.

``` swift
public func acceptInputDeviceTransfer(input: AcceptInputDeviceTransferInput, completion: @escaping (ClientRuntime.SdkResult<AcceptInputDeviceTransferOutputResponse, AcceptInputDeviceTransferOutputError>) -> Void)
```

### `batchDelete(input:completion:)`

Starts delete of resources.

``` swift
public func batchDelete(input: BatchDeleteInput, completion: @escaping (ClientRuntime.SdkResult<BatchDeleteOutputResponse, BatchDeleteOutputError>) -> Void)
```

### `batchStart(input:completion:)`

Starts existing resources

``` swift
public func batchStart(input: BatchStartInput, completion: @escaping (ClientRuntime.SdkResult<BatchStartOutputResponse, BatchStartOutputError>) -> Void)
```

### `batchStop(input:completion:)`

Stops running resources

``` swift
public func batchStop(input: BatchStopInput, completion: @escaping (ClientRuntime.SdkResult<BatchStopOutputResponse, BatchStopOutputError>) -> Void)
```

### `batchUpdateSchedule(input:completion:)`

Update a channel schedule

``` swift
public func batchUpdateSchedule(input: BatchUpdateScheduleInput, completion: @escaping (ClientRuntime.SdkResult<BatchUpdateScheduleOutputResponse, BatchUpdateScheduleOutputError>) -> Void)
```

### `cancelInputDeviceTransfer(input:completion:)`

Cancel an input device transfer that you have requested.

``` swift
public func cancelInputDeviceTransfer(input: CancelInputDeviceTransferInput, completion: @escaping (ClientRuntime.SdkResult<CancelInputDeviceTransferOutputResponse, CancelInputDeviceTransferOutputError>) -> Void)
```

### `createChannel(input:completion:)`

Creates a new channel

``` swift
public func createChannel(input: CreateChannelInput, completion: @escaping (ClientRuntime.SdkResult<CreateChannelOutputResponse, CreateChannelOutputError>) -> Void)
```

### `createInput(input:completion:)`

Create an input

``` swift
public func createInput(input: CreateInputInput, completion: @escaping (ClientRuntime.SdkResult<CreateInputOutputResponse, CreateInputOutputError>) -> Void)
```

### `createInputSecurityGroup(input:completion:)`

Creates a Input Security Group

``` swift
public func createInputSecurityGroup(input: CreateInputSecurityGroupInput, completion: @escaping (ClientRuntime.SdkResult<CreateInputSecurityGroupOutputResponse, CreateInputSecurityGroupOutputError>) -> Void)
```

### `createMultiplex(input:completion:)`

Create a new multiplex.

``` swift
public func createMultiplex(input: CreateMultiplexInput, completion: @escaping (ClientRuntime.SdkResult<CreateMultiplexOutputResponse, CreateMultiplexOutputError>) -> Void)
```

### `createMultiplexProgram(input:completion:)`

Create a new program in the multiplex.

``` swift
public func createMultiplexProgram(input: CreateMultiplexProgramInput, completion: @escaping (ClientRuntime.SdkResult<CreateMultiplexProgramOutputResponse, CreateMultiplexProgramOutputError>) -> Void)
```

### `createPartnerInput(input:completion:)`

Create a partner input

``` swift
public func createPartnerInput(input: CreatePartnerInputInput, completion: @escaping (ClientRuntime.SdkResult<CreatePartnerInputOutputResponse, CreatePartnerInputOutputError>) -> Void)
```

### `createTags(input:completion:)`

Create tags for a resource

``` swift
public func createTags(input: CreateTagsInput, completion: @escaping (ClientRuntime.SdkResult<CreateTagsOutputResponse, CreateTagsOutputError>) -> Void)
```

### `deleteChannel(input:completion:)`

Starts deletion of channel. The associated outputs are also deleted.

``` swift
public func deleteChannel(input: DeleteChannelInput, completion: @escaping (ClientRuntime.SdkResult<DeleteChannelOutputResponse, DeleteChannelOutputError>) -> Void)
```

### `deleteInput(input:completion:)`

Deletes the input end point

``` swift
public func deleteInput(input: DeleteInputInput, completion: @escaping (ClientRuntime.SdkResult<DeleteInputOutputResponse, DeleteInputOutputError>) -> Void)
```

### `deleteInputSecurityGroup(input:completion:)`

Deletes an Input Security Group

``` swift
public func deleteInputSecurityGroup(input: DeleteInputSecurityGroupInput, completion: @escaping (ClientRuntime.SdkResult<DeleteInputSecurityGroupOutputResponse, DeleteInputSecurityGroupOutputError>) -> Void)
```

### `deleteMultiplex(input:completion:)`

Delete a multiplex. The multiplex must be idle.

``` swift
public func deleteMultiplex(input: DeleteMultiplexInput, completion: @escaping (ClientRuntime.SdkResult<DeleteMultiplexOutputResponse, DeleteMultiplexOutputError>) -> Void)
```

### `deleteMultiplexProgram(input:completion:)`

Delete a program from a multiplex.

``` swift
public func deleteMultiplexProgram(input: DeleteMultiplexProgramInput, completion: @escaping (ClientRuntime.SdkResult<DeleteMultiplexProgramOutputResponse, DeleteMultiplexProgramOutputError>) -> Void)
```

### `deleteReservation(input:completion:)`

Delete an expired reservation.

``` swift
public func deleteReservation(input: DeleteReservationInput, completion: @escaping (ClientRuntime.SdkResult<DeleteReservationOutputResponse, DeleteReservationOutputError>) -> Void)
```

### `deleteSchedule(input:completion:)`

Delete all schedule actions on a channel.

``` swift
public func deleteSchedule(input: DeleteScheduleInput, completion: @escaping (ClientRuntime.SdkResult<DeleteScheduleOutputResponse, DeleteScheduleOutputError>) -> Void)
```

### `deleteTags(input:completion:)`

Removes tags for a resource

``` swift
public func deleteTags(input: DeleteTagsInput, completion: @escaping (ClientRuntime.SdkResult<DeleteTagsOutputResponse, DeleteTagsOutputError>) -> Void)
```

### `describeChannel(input:completion:)`

Gets details about a channel

``` swift
public func describeChannel(input: DescribeChannelInput, completion: @escaping (ClientRuntime.SdkResult<DescribeChannelOutputResponse, DescribeChannelOutputError>) -> Void)
```

### `describeInput(input:completion:)`

Produces details about an input

``` swift
public func describeInput(input: DescribeInputInput, completion: @escaping (ClientRuntime.SdkResult<DescribeInputOutputResponse, DescribeInputOutputError>) -> Void)
```

### `describeInputDevice(input:completion:)`

Gets the details for the input device

``` swift
public func describeInputDevice(input: DescribeInputDeviceInput, completion: @escaping (ClientRuntime.SdkResult<DescribeInputDeviceOutputResponse, DescribeInputDeviceOutputError>) -> Void)
```

### `describeInputDeviceThumbnail(input:completion:)`

Get the latest thumbnail data for the input device.

``` swift
public func describeInputDeviceThumbnail(input: DescribeInputDeviceThumbnailInput, completion: @escaping (ClientRuntime.SdkResult<DescribeInputDeviceThumbnailOutputResponse, DescribeInputDeviceThumbnailOutputError>) -> Void)
```

### `describeInputSecurityGroup(input:completion:)`

Produces a summary of an Input Security Group

``` swift
public func describeInputSecurityGroup(input: DescribeInputSecurityGroupInput, completion: @escaping (ClientRuntime.SdkResult<DescribeInputSecurityGroupOutputResponse, DescribeInputSecurityGroupOutputError>) -> Void)
```

### `describeMultiplex(input:completion:)`

Gets details about a multiplex.

``` swift
public func describeMultiplex(input: DescribeMultiplexInput, completion: @escaping (ClientRuntime.SdkResult<DescribeMultiplexOutputResponse, DescribeMultiplexOutputError>) -> Void)
```

### `describeMultiplexProgram(input:completion:)`

Get the details for a program in a multiplex.

``` swift
public func describeMultiplexProgram(input: DescribeMultiplexProgramInput, completion: @escaping (ClientRuntime.SdkResult<DescribeMultiplexProgramOutputResponse, DescribeMultiplexProgramOutputError>) -> Void)
```

### `describeOffering(input:completion:)`

Get details for an offering.

``` swift
public func describeOffering(input: DescribeOfferingInput, completion: @escaping (ClientRuntime.SdkResult<DescribeOfferingOutputResponse, DescribeOfferingOutputError>) -> Void)
```

### `describeReservation(input:completion:)`

Get details for a reservation.

``` swift
public func describeReservation(input: DescribeReservationInput, completion: @escaping (ClientRuntime.SdkResult<DescribeReservationOutputResponse, DescribeReservationOutputError>) -> Void)
```

### `describeSchedule(input:completion:)`

Get a channel schedule

``` swift
public func describeSchedule(input: DescribeScheduleInput, completion: @escaping (ClientRuntime.SdkResult<DescribeScheduleOutputResponse, DescribeScheduleOutputError>) -> Void)
```

### `listChannels(input:completion:)`

Produces list of channels that have been created

``` swift
public func listChannels(input: ListChannelsInput, completion: @escaping (ClientRuntime.SdkResult<ListChannelsOutputResponse, ListChannelsOutputError>) -> Void)
```

### `listInputDeviceTransfers(input:completion:)`

List input devices that are currently being transferred. List input devices that you are transferring from your AWS account or input devices that another AWS account is transferring to you.

``` swift
public func listInputDeviceTransfers(input: ListInputDeviceTransfersInput, completion: @escaping (ClientRuntime.SdkResult<ListInputDeviceTransfersOutputResponse, ListInputDeviceTransfersOutputError>) -> Void)
```

### `listInputDevices(input:completion:)`

List input devices

``` swift
public func listInputDevices(input: ListInputDevicesInput, completion: @escaping (ClientRuntime.SdkResult<ListInputDevicesOutputResponse, ListInputDevicesOutputError>) -> Void)
```

### `listInputSecurityGroups(input:completion:)`

Produces a list of Input Security Groups for an account

``` swift
public func listInputSecurityGroups(input: ListInputSecurityGroupsInput, completion: @escaping (ClientRuntime.SdkResult<ListInputSecurityGroupsOutputResponse, ListInputSecurityGroupsOutputError>) -> Void)
```

### `listInputs(input:completion:)`

Produces list of inputs that have been created

``` swift
public func listInputs(input: ListInputsInput, completion: @escaping (ClientRuntime.SdkResult<ListInputsOutputResponse, ListInputsOutputError>) -> Void)
```

### `listMultiplexPrograms(input:completion:)`

List the programs that currently exist for a specific multiplex.

``` swift
public func listMultiplexPrograms(input: ListMultiplexProgramsInput, completion: @escaping (ClientRuntime.SdkResult<ListMultiplexProgramsOutputResponse, ListMultiplexProgramsOutputError>) -> Void)
```

### `listMultiplexes(input:completion:)`

Retrieve a list of the existing multiplexes.

``` swift
public func listMultiplexes(input: ListMultiplexesInput, completion: @escaping (ClientRuntime.SdkResult<ListMultiplexesOutputResponse, ListMultiplexesOutputError>) -> Void)
```

### `listOfferings(input:completion:)`

List offerings available for purchase.

``` swift
public func listOfferings(input: ListOfferingsInput, completion: @escaping (ClientRuntime.SdkResult<ListOfferingsOutputResponse, ListOfferingsOutputError>) -> Void)
```

### `listReservations(input:completion:)`

List purchased reservations.

``` swift
public func listReservations(input: ListReservationsInput, completion: @escaping (ClientRuntime.SdkResult<ListReservationsOutputResponse, ListReservationsOutputError>) -> Void)
```

### `listTagsForResource(input:completion:)`

Produces list of tags that have been created for a resource

``` swift
public func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (ClientRuntime.SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
```

### `purchaseOffering(input:completion:)`

Purchase an offering and create a reservation.

``` swift
public func purchaseOffering(input: PurchaseOfferingInput, completion: @escaping (ClientRuntime.SdkResult<PurchaseOfferingOutputResponse, PurchaseOfferingOutputError>) -> Void)
```

### `rejectInputDeviceTransfer(input:completion:)`

Reject the transfer of the specified input device to your AWS account.

``` swift
public func rejectInputDeviceTransfer(input: RejectInputDeviceTransferInput, completion: @escaping (ClientRuntime.SdkResult<RejectInputDeviceTransferOutputResponse, RejectInputDeviceTransferOutputError>) -> Void)
```

### `startChannel(input:completion:)`

Starts an existing channel

``` swift
public func startChannel(input: StartChannelInput, completion: @escaping (ClientRuntime.SdkResult<StartChannelOutputResponse, StartChannelOutputError>) -> Void)
```

### `startMultiplex(input:completion:)`

Start (run) the multiplex. Starting the multiplex does not start the channels. You must explicitly start each channel.

``` swift
public func startMultiplex(input: StartMultiplexInput, completion: @escaping (ClientRuntime.SdkResult<StartMultiplexOutputResponse, StartMultiplexOutputError>) -> Void)
```

### `stopChannel(input:completion:)`

Stops a running channel

``` swift
public func stopChannel(input: StopChannelInput, completion: @escaping (ClientRuntime.SdkResult<StopChannelOutputResponse, StopChannelOutputError>) -> Void)
```

### `stopMultiplex(input:completion:)`

Stops a running multiplex. If the multiplex isn't running, this action has no effect.

``` swift
public func stopMultiplex(input: StopMultiplexInput, completion: @escaping (ClientRuntime.SdkResult<StopMultiplexOutputResponse, StopMultiplexOutputError>) -> Void)
```

### `transferInputDevice(input:completion:)`

Start an input device transfer to another AWS account. After you make the request, the other account must accept or reject the transfer.

``` swift
public func transferInputDevice(input: TransferInputDeviceInput, completion: @escaping (ClientRuntime.SdkResult<TransferInputDeviceOutputResponse, TransferInputDeviceOutputError>) -> Void)
```

### `updateChannel(input:completion:)`

Updates a channel.

``` swift
public func updateChannel(input: UpdateChannelInput, completion: @escaping (ClientRuntime.SdkResult<UpdateChannelOutputResponse, UpdateChannelOutputError>) -> Void)
```

### `updateChannelClass(input:completion:)`

Changes the class of the channel.

``` swift
public func updateChannelClass(input: UpdateChannelClassInput, completion: @escaping (ClientRuntime.SdkResult<UpdateChannelClassOutputResponse, UpdateChannelClassOutputError>) -> Void)
```

### `updateInput(input:completion:)`

Updates an input.

``` swift
public func updateInput(input: UpdateInputInput, completion: @escaping (ClientRuntime.SdkResult<UpdateInputOutputResponse, UpdateInputOutputError>) -> Void)
```

### `updateInputDevice(input:completion:)`

Updates the parameters for the input device.

``` swift
public func updateInputDevice(input: UpdateInputDeviceInput, completion: @escaping (ClientRuntime.SdkResult<UpdateInputDeviceOutputResponse, UpdateInputDeviceOutputError>) -> Void)
```

### `updateInputSecurityGroup(input:completion:)`

Update an Input Security Group's Whilelists.

``` swift
public func updateInputSecurityGroup(input: UpdateInputSecurityGroupInput, completion: @escaping (ClientRuntime.SdkResult<UpdateInputSecurityGroupOutputResponse, UpdateInputSecurityGroupOutputError>) -> Void)
```

### `updateMultiplex(input:completion:)`

Updates a multiplex.

``` swift
public func updateMultiplex(input: UpdateMultiplexInput, completion: @escaping (ClientRuntime.SdkResult<UpdateMultiplexOutputResponse, UpdateMultiplexOutputError>) -> Void)
```

### `updateMultiplexProgram(input:completion:)`

Update a program in a multiplex.

``` swift
public func updateMultiplexProgram(input: UpdateMultiplexProgramInput, completion: @escaping (ClientRuntime.SdkResult<UpdateMultiplexProgramOutputResponse, UpdateMultiplexProgramOutputError>) -> Void)
```

### `updateReservation(input:completion:)`

Update reservation.

``` swift
public func updateReservation(input: UpdateReservationInput, completion: @escaping (ClientRuntime.SdkResult<UpdateReservationOutputResponse, UpdateReservationOutputError>) -> Void)
```
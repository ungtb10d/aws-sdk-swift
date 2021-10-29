# VoiceIdClient

``` swift
public class VoiceIdClient 
```

## Inheritance

[`VoiceIdClientProtocol`](/aws-sdk-swift/reference/0.x/AWSVoiceID/VoiceIdClientProtocol)

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
public static let clientName = "VoiceIdClient"
```

## Methods

### `createDomain(input:completion:)`

Creates a domain that contains all Amazon Connect Voice ID data, such as speakers, fraudsters, customer audio, and voiceprints.

``` swift
public func createDomain(input: CreateDomainInput, completion: @escaping (ClientRuntime.SdkResult<CreateDomainOutputResponse, CreateDomainOutputError>) -> Void)
```

### `deleteDomain(input:completion:)`

Deletes the specified domain from the Amazon Connect Voice ID system.

``` swift
public func deleteDomain(input: DeleteDomainInput, completion: @escaping (ClientRuntime.SdkResult<DeleteDomainOutputResponse, DeleteDomainOutputError>) -> Void)
```

### `deleteFraudster(input:completion:)`

Deletes the specified fraudster from the Amazon Connect Voice ID system.

``` swift
public func deleteFraudster(input: DeleteFraudsterInput, completion: @escaping (ClientRuntime.SdkResult<DeleteFraudsterOutputResponse, DeleteFraudsterOutputError>) -> Void)
```

### `deleteSpeaker(input:completion:)`

Deletes the specified speaker from the Amazon Connect Voice ID system.

``` swift
public func deleteSpeaker(input: DeleteSpeakerInput, completion: @escaping (ClientRuntime.SdkResult<DeleteSpeakerOutputResponse, DeleteSpeakerOutputError>) -> Void)
```

### `describeDomain(input:completion:)`

Describes the specified domain.

``` swift
public func describeDomain(input: DescribeDomainInput, completion: @escaping (ClientRuntime.SdkResult<DescribeDomainOutputResponse, DescribeDomainOutputError>) -> Void)
```

### `describeFraudster(input:completion:)`

Describes the specified fraudster.

``` swift
public func describeFraudster(input: DescribeFraudsterInput, completion: @escaping (ClientRuntime.SdkResult<DescribeFraudsterOutputResponse, DescribeFraudsterOutputError>) -> Void)
```

### `describeFraudsterRegistrationJob(input:completion:)`

Describes the specified fraudster registration job.

``` swift
public func describeFraudsterRegistrationJob(input: DescribeFraudsterRegistrationJobInput, completion: @escaping (ClientRuntime.SdkResult<DescribeFraudsterRegistrationJobOutputResponse, DescribeFraudsterRegistrationJobOutputError>) -> Void)
```

### `describeSpeaker(input:completion:)`

Describes the specified speaker.

``` swift
public func describeSpeaker(input: DescribeSpeakerInput, completion: @escaping (ClientRuntime.SdkResult<DescribeSpeakerOutputResponse, DescribeSpeakerOutputError>) -> Void)
```

### `describeSpeakerEnrollmentJob(input:completion:)`

Describes the specified speaker enrollment job.

``` swift
public func describeSpeakerEnrollmentJob(input: DescribeSpeakerEnrollmentJobInput, completion: @escaping (ClientRuntime.SdkResult<DescribeSpeakerEnrollmentJobOutputResponse, DescribeSpeakerEnrollmentJobOutputError>) -> Void)
```

### `evaluateSession(input:completion:)`

Evaluates a specified session based on audio data accumulated during a streaming Amazon Connect Voice ID call.

``` swift
public func evaluateSession(input: EvaluateSessionInput, completion: @escaping (ClientRuntime.SdkResult<EvaluateSessionOutputResponse, EvaluateSessionOutputError>) -> Void)
```

### `listDomains(input:completion:)`

Lists all the domains in the Amazon Web Services account.

``` swift
public func listDomains(input: ListDomainsInput, completion: @escaping (ClientRuntime.SdkResult<ListDomainsOutputResponse, ListDomainsOutputError>) -> Void)
```

### `listFraudsterRegistrationJobs(input:completion:)`

Lists all the fraudster registration jobs in the domain with the given JobStatus. If JobStatus is not provided, this lists all fraudster registration jobs in the given domain.

``` swift
public func listFraudsterRegistrationJobs(input: ListFraudsterRegistrationJobsInput, completion: @escaping (ClientRuntime.SdkResult<ListFraudsterRegistrationJobsOutputResponse, ListFraudsterRegistrationJobsOutputError>) -> Void)
```

### `listSpeakerEnrollmentJobs(input:completion:)`

Lists all the speaker enrollment jobs in the domain with the specified JobStatus. If JobStatus is not provided, this lists all jobs with all possible speaker enrollment job statuses.

``` swift
public func listSpeakerEnrollmentJobs(input: ListSpeakerEnrollmentJobsInput, completion: @escaping (ClientRuntime.SdkResult<ListSpeakerEnrollmentJobsOutputResponse, ListSpeakerEnrollmentJobsOutputError>) -> Void)
```

### `listSpeakers(input:completion:)`

Lists all speakers in a specified domain.

``` swift
public func listSpeakers(input: ListSpeakersInput, completion: @escaping (ClientRuntime.SdkResult<ListSpeakersOutputResponse, ListSpeakersOutputError>) -> Void)
```

### `listTagsForResource(input:completion:)`

Lists all tags associated with a specified Voice ID resource.

``` swift
public func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (ClientRuntime.SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
```

### `optOutSpeaker(input:completion:)`

Opts out a speaker from Voice ID system. A speaker can be opted out regardless of whether or not they already exist in the system. If they don't yet exist, a new speaker is created in an opted out state. If they already exist, their existing status is overridden and they are opted out. Enrollment and evaluation authentication requests are rejected for opted out speakers, and opted out speakers have no voice embeddings stored in the system.

``` swift
public func optOutSpeaker(input: OptOutSpeakerInput, completion: @escaping (ClientRuntime.SdkResult<OptOutSpeakerOutputResponse, OptOutSpeakerOutputError>) -> Void)
```

### `startFraudsterRegistrationJob(input:completion:)`

Starts a new batch fraudster registration job using provided details.

``` swift
public func startFraudsterRegistrationJob(input: StartFraudsterRegistrationJobInput, completion: @escaping (ClientRuntime.SdkResult<StartFraudsterRegistrationJobOutputResponse, StartFraudsterRegistrationJobOutputError>) -> Void)
```

### `startSpeakerEnrollmentJob(input:completion:)`

Starts a new batch speaker enrollment job using specified details.

``` swift
public func startSpeakerEnrollmentJob(input: StartSpeakerEnrollmentJobInput, completion: @escaping (ClientRuntime.SdkResult<StartSpeakerEnrollmentJobOutputResponse, StartSpeakerEnrollmentJobOutputError>) -> Void)
```

### `tagResource(input:completion:)`

Tags an Amazon Connect Voice ID resource with the provided list of tags.

``` swift
public func tagResource(input: TagResourceInput, completion: @escaping (ClientRuntime.SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
```

### `untagResource(input:completion:)`

Removes specified tags from a specified Amazon Connect Voice ID resource.

``` swift
public func untagResource(input: UntagResourceInput, completion: @escaping (ClientRuntime.SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
```

### `updateDomain(input:completion:)`

Updates the specified domain. This API has clobber behavior, and clears and replaces all attributes. If an optional field, such as 'Description' is not provided, it is removed from the domain.

``` swift
public func updateDomain(input: UpdateDomainInput, completion: @escaping (ClientRuntime.SdkResult<UpdateDomainOutputResponse, UpdateDomainOutputError>) -> Void)
```
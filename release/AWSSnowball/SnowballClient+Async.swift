// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5) && canImport(_Concurrency)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension SnowballClient {
    /// Cancels a cluster job. You can only cancel a cluster job while it's in the AwaitingQuorum status. You'll have at least an hour after creating a cluster job to cancel it.
    func cancelCluster(input: CancelClusterInput) async throws -> CancelClusterOutputResponse
    {
        typealias cancelClusterContinuation = CheckedContinuation<CancelClusterOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: cancelClusterContinuation) in
            cancelCluster(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Cancels the specified job. You can only cancel a job before its JobState value changes to PreparingAppliance. Requesting the ListJobs or DescribeJob action returns a job's JobState as part of the response element data returned.
    func cancelJob(input: CancelJobInput) async throws -> CancelJobOutputResponse
    {
        typealias cancelJobContinuation = CheckedContinuation<CancelJobOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: cancelJobContinuation) in
            cancelJob(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates an address for a Snow device to be shipped to. In most regions, addresses are validated at the time of creation. The address you provide must be located within the serviceable area of your region. If the address is invalid or unsupported, then an exception is thrown.
    func createAddress(input: CreateAddressInput) async throws -> CreateAddressOutputResponse
    {
        typealias createAddressContinuation = CheckedContinuation<CreateAddressOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createAddressContinuation) in
            createAddress(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates an empty cluster. Each cluster supports five nodes. You use the [CreateJob] action separately to create the jobs for each of these nodes. The cluster does not ship until these five node jobs have been created.
    func createCluster(input: CreateClusterInput) async throws -> CreateClusterOutputResponse
    {
        typealias createClusterContinuation = CheckedContinuation<CreateClusterOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createClusterContinuation) in
            createCluster(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a job to import or export data between Amazon S3 and your on-premises data center. Your AWS account must have the right trust policies and permissions in place to create a job for a Snow device. If you're creating a job for a node in a cluster, you only need to provide the clusterId value; the other job attributes are inherited from the cluster. Only the Snowball; Edge device type is supported when ordering clustered jobs. The device capacity is optional. Availability of device types differ by AWS Region. For more information about Region availability, see [AWS Regional Services](https://aws.amazon.com/about-aws/global-infrastructure/regional-product-services/?p=ngi&loc=4). AWS Snow Family device types and their capacities.
    ///
    /// * Snow Family device type: SNC1_SSD
    ///
    /// * Capacity: T14
    ///
    /// * Description: Snowcone
    ///
    ///
    ///
    ///
    /// * Snow Family device type: SNC1_HDD
    ///
    /// * Capacity: T8
    ///
    /// * Description: Snowcone
    ///
    ///
    ///
    ///
    /// * Device type: EDGE_S
    ///
    /// * Capacity: T98
    ///
    /// * Description: Snowball Edge Storage Optimized for data transfer only
    ///
    ///
    ///
    ///
    /// * Device type: EDGE_CG
    ///
    /// * Capacity: T42
    ///
    /// * Description: Snowball Edge Compute Optimized with GPU
    ///
    ///
    ///
    ///
    /// * Device type: EDGE_C
    ///
    /// * Capacity: T42
    ///
    /// * Description: Snowball Edge Compute Optimized without GPU
    ///
    ///
    ///
    ///
    /// * Device type: EDGE
    ///
    /// * Capacity: T100
    ///
    /// * Description: Snowball Edge Storage Optimized with EC2 Compute
    ///
    ///
    ///
    ///
    /// * Device type: STANDARD
    ///
    /// * Capacity: T50
    ///
    /// * Description: Original Snowball device This device is only available in the Ningxia, Beijing, and Singapore AWS Regions.
    ///
    ///
    ///
    ///
    /// * Device type: STANDARD
    ///
    /// * Capacity: T80
    ///
    /// * Description: Original Snowball device This device is only available in the Ningxia, Beijing, and Singapore AWS Regions.
    func createJob(input: CreateJobInput) async throws -> CreateJobOutputResponse
    {
        typealias createJobContinuation = CheckedContinuation<CreateJobOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createJobContinuation) in
            createJob(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a job with the long-term usage option for a device. The long-term usage is a 1-year or 3-year long-term pricing type for the device. You are billed upfront, and AWS provides discounts for long-term pricing.
    func createLongTermPricing(input: CreateLongTermPricingInput) async throws -> CreateLongTermPricingOutputResponse
    {
        typealias createLongTermPricingContinuation = CheckedContinuation<CreateLongTermPricingOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createLongTermPricingContinuation) in
            createLongTermPricing(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a shipping label that will be used to return the Snow device to AWS.
    func createReturnShippingLabel(input: CreateReturnShippingLabelInput) async throws -> CreateReturnShippingLabelOutputResponse
    {
        typealias createReturnShippingLabelContinuation = CheckedContinuation<CreateReturnShippingLabelOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createReturnShippingLabelContinuation) in
            createReturnShippingLabel(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Takes an AddressId and returns specific details about that address in the form of an Address object.
    func describeAddress(input: DescribeAddressInput) async throws -> DescribeAddressOutputResponse
    {
        typealias describeAddressContinuation = CheckedContinuation<DescribeAddressOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeAddressContinuation) in
            describeAddress(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a specified number of ADDRESS objects. Calling this API in one of the US regions will return addresses from the list of all addresses associated with this account in all US regions.
    func describeAddresses(input: DescribeAddressesInput) async throws -> DescribeAddressesOutputResponse
    {
        typealias describeAddressesContinuation = CheckedContinuation<DescribeAddressesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeAddressesContinuation) in
            describeAddresses(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns information about a specific cluster including shipping information, cluster status, and other important metadata.
    func describeCluster(input: DescribeClusterInput) async throws -> DescribeClusterOutputResponse
    {
        typealias describeClusterContinuation = CheckedContinuation<DescribeClusterOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeClusterContinuation) in
            describeCluster(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns information about a specific job including shipping information, job status, and other important metadata.
    func describeJob(input: DescribeJobInput) async throws -> DescribeJobOutputResponse
    {
        typealias describeJobContinuation = CheckedContinuation<DescribeJobOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeJobContinuation) in
            describeJob(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Information on the shipping label of a Snow device that is being returned to AWS.
    func describeReturnShippingLabel(input: DescribeReturnShippingLabelInput) async throws -> DescribeReturnShippingLabelOutputResponse
    {
        typealias describeReturnShippingLabelContinuation = CheckedContinuation<DescribeReturnShippingLabelOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeReturnShippingLabelContinuation) in
            describeReturnShippingLabel(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a link to an Amazon S3 presigned URL for the manifest file associated with the specified JobId value. You can access the manifest file for up to 60 minutes after this request has been made. To access the manifest file after 60 minutes have passed, you'll have to make another call to the GetJobManifest action. The manifest is an encrypted file that you can download after your job enters the WithCustomer status. The manifest is decrypted by using the UnlockCode code value, when you pass both values to the Snow device through the Snowball client when the client is started for the first time. As a best practice, we recommend that you don't save a copy of an UnlockCode value in the same location as the manifest file for that job. Saving these separately helps prevent unauthorized parties from gaining access to the Snow device associated with that job. The credentials of a given job, including its manifest file and unlock code, expire 360 days after the job is created.
    func getJobManifest(input: GetJobManifestInput) async throws -> GetJobManifestOutputResponse
    {
        typealias getJobManifestContinuation = CheckedContinuation<GetJobManifestOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getJobManifestContinuation) in
            getJobManifest(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns the UnlockCode code value for the specified job. A particular UnlockCode value can be accessed for up to 360 days after the associated job has been created. The UnlockCode value is a 29-character code with 25 alphanumeric characters and 4 hyphens. This code is used to decrypt the manifest file when it is passed along with the manifest to the Snow device through the Snowball client when the client is started for the first time. As a best practice, we recommend that you don't save a copy of the UnlockCode in the same location as the manifest file for that job. Saving these separately helps prevent unauthorized parties from gaining access to the Snow device associated with that job.
    func getJobUnlockCode(input: GetJobUnlockCodeInput) async throws -> GetJobUnlockCodeOutputResponse
    {
        typealias getJobUnlockCodeContinuation = CheckedContinuation<GetJobUnlockCodeOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getJobUnlockCodeContinuation) in
            getJobUnlockCode(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns information about the Snow Family service limit for your account, and also the number of Snow devices your account has in use. The default service limit for the number of Snow devices that you can have at one time is 1. If you want to increase your service limit, contact AWS Support.
    func getSnowballUsage(input: GetSnowballUsageInput) async throws -> GetSnowballUsageOutputResponse
    {
        typealias getSnowballUsageContinuation = CheckedContinuation<GetSnowballUsageOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getSnowballUsageContinuation) in
            getSnowballUsage(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns an Amazon S3 presigned URL for an update file associated with a specified JobId.
    func getSoftwareUpdates(input: GetSoftwareUpdatesInput) async throws -> GetSoftwareUpdatesOutputResponse
    {
        typealias getSoftwareUpdatesContinuation = CheckedContinuation<GetSoftwareUpdatesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getSoftwareUpdatesContinuation) in
            getSoftwareUpdates(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns an array of JobListEntry objects of the specified length. Each JobListEntry object is for a job in the specified cluster and contains a job's state, a job's ID, and other information.
    func listClusterJobs(input: ListClusterJobsInput) async throws -> ListClusterJobsOutputResponse
    {
        typealias listClusterJobsContinuation = CheckedContinuation<ListClusterJobsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listClusterJobsContinuation) in
            listClusterJobs(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns an array of ClusterListEntry objects of the specified length. Each ClusterListEntry object contains a cluster's state, a cluster's ID, and other important status information.
    func listClusters(input: ListClustersInput) async throws -> ListClustersOutputResponse
    {
        typealias listClustersContinuation = CheckedContinuation<ListClustersOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listClustersContinuation) in
            listClusters(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// This action returns a list of the different Amazon EC2 Amazon Machine Images (AMIs) that are owned by your AWS account that would be supported for use on a Snow device. Currently, supported AMIs are based on the CentOS 7 (x86_64) - with Updates HVM, Ubuntu Server 14.04 LTS (HVM), and Ubuntu 16.04 LTS - Xenial (HVM) images, available on the AWS Marketplace.
    func listCompatibleImages(input: ListCompatibleImagesInput) async throws -> ListCompatibleImagesOutputResponse
    {
        typealias listCompatibleImagesContinuation = CheckedContinuation<ListCompatibleImagesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listCompatibleImagesContinuation) in
            listCompatibleImages(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns an array of JobListEntry objects of the specified length. Each JobListEntry object contains a job's state, a job's ID, and a value that indicates whether the job is a job part, in the case of export jobs. Calling this API action in one of the US regions will return jobs from the list of all jobs associated with this account in all US regions.
    func listJobs(input: ListJobsInput) async throws -> ListJobsOutputResponse
    {
        typealias listJobsContinuation = CheckedContinuation<ListJobsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listJobsContinuation) in
            listJobs(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists all long-term pricing types.
    func listLongTermPricing(input: ListLongTermPricingInput) async throws -> ListLongTermPricingOutputResponse
    {
        typealias listLongTermPricingContinuation = CheckedContinuation<ListLongTermPricingOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listLongTermPricingContinuation) in
            listLongTermPricing(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// While a cluster's ClusterState value is in the AwaitingQuorum state, you can update some of the information associated with a cluster. Once the cluster changes to a different job state, usually 60 minutes after the cluster being created, this action is no longer available.
    func updateCluster(input: UpdateClusterInput) async throws -> UpdateClusterOutputResponse
    {
        typealias updateClusterContinuation = CheckedContinuation<UpdateClusterOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateClusterContinuation) in
            updateCluster(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// While a job's JobState value is New, you can update some of the information associated with a job. Once the job changes to a different job state, usually within 60 minutes of the job being created, this action is no longer available.
    func updateJob(input: UpdateJobInput) async throws -> UpdateJobOutputResponse
    {
        typealias updateJobContinuation = CheckedContinuation<UpdateJobOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateJobContinuation) in
            updateJob(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates the state when a shipment state changes to a different state.
    func updateJobShipmentState(input: UpdateJobShipmentStateInput) async throws -> UpdateJobShipmentStateOutputResponse
    {
        typealias updateJobShipmentStateContinuation = CheckedContinuation<UpdateJobShipmentStateOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateJobShipmentStateContinuation) in
            updateJobShipmentState(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates the long-term pricing type.
    func updateLongTermPricing(input: UpdateLongTermPricingInput) async throws -> UpdateLongTermPricingOutputResponse
    {
        typealias updateLongTermPricingContinuation = CheckedContinuation<UpdateLongTermPricingOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateLongTermPricingContinuation) in
            updateLongTermPricing(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

}
#endif

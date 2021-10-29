# GlobalAcceleratorClientProtocol

AWS Global Accelerator This is the AWS Global Accelerator API Reference. This guide is for developers who need detailed information about AWS Global Accelerator API actions, data types, and errors. For more information about Global Accelerator features, see the [AWS Global Accelerator Developer Guide](https://docs.aws.amazon.com/global-accelerator/latest/dg/Welcome.html). AWS Global Accelerator is a service in which you create accelerators to improve the performance of your applications for local and global users. Depending on the type of accelerator you choose, you can gain additional benefits.

``` swift
public protocol GlobalAcceleratorClientProtocol 
```

  - By using a standard accelerator, you can improve availability of your internet applications that are used by a global audience. With a standard accelerator, Global Accelerator directs traffic to optimal endpoints over the AWS global network.

  - For other scenarios, you might choose a custom routing accelerator. With a custom routing accelerator, you can use application logic to directly map one or more users to a specific endpoint among many endpoints.

Global Accelerator is a global service that supports endpoints in multiple AWS Regions but you must specify the US West (Oregon) Region to create or update accelerators. By default, Global Accelerator provides you with two static IP addresses that you associate with your accelerator. With a standard accelerator, instead of using the IP addresses that Global Accelerator provides, you can configure these entry points to be IPv4 addresses from your own IP address ranges that you bring to Global Accelerator. The static IP addresses are anycast from the AWS edge network. For a standard accelerator, they distribute incoming application traffic across multiple endpoint resources in multiple AWS Regions, which increases the availability of your applications. Endpoints for standard accelerators can be Network Load Balancers, Application Load Balancers, Amazon EC2 instances, or Elastic IP addresses that are located in one AWS Region or multiple Regions. For custom routing accelerators, you map traffic that arrives to the static IP addresses to specific Amazon EC2 servers in endpoints that are virtual private cloud (VPC) subnets. The static IP addresses remain assigned to your accelerator for as long as it exists, even if you disable the accelerator and it no longer accepts or routes traffic. However, when you delete an accelerator, you lose the static IP addresses that are assigned to it, so you can no longer route traffic by using them. You can use IAM policies like tag-based permissions with Global Accelerator to limit the users who have permissions to delete an accelerator. For more information, see [Tag-based policies](https://docs.aws.amazon.com/global-accelerator/latest/dg/access-control-manage-access-tag-policies.html). For standard accelerators, Global Accelerator uses the AWS global network to route traffic to the optimal regional endpoint based on health, client location, and policies that you configure. The service reacts instantly to changes in health or configuration to ensure that internet traffic from clients is always directed to healthy endpoints. For a list of the AWS Regions where Global Accelerator and other services are currently supported, see the [AWS Region Table](https://docs.aws.amazon.com/about-aws/global-infrastructure/regional-product-services/). AWS Global Accelerator includes the following components: Static IP addresses Global Accelerator provides you with a set of two static IP addresses that are anycast from the AWS edge network. If you bring your own IP address range to AWS (BYOIP) to use with a standard accelerator, you can instead assign IP addresses from your own pool to use with your accelerator. For more information, see [ Bring your own IP addresses (BYOIP) in AWS Global Accelerator](https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html). The IP addresses serve as single fixed entry points for your clients. If you already have Elastic Load Balancing load balancers, Amazon EC2 instances, or Elastic IP address resources set up for your applications, you can easily add those to a standard accelerator in Global Accelerator. This allows Global Accelerator to use static IP addresses to access the resources. The static IP addresses remain assigned to your accelerator for as long as it exists, even if you disable the accelerator and it no longer accepts or routes traffic. However, when you delete an accelerator, you lose the static IP addresses that are assigned to it, so you can no longer route traffic by using them. You can use IAM policies like tag-based permissions with Global Accelerator to delete an accelerator. For more information, see [Tag-based policies](https://docs.aws.amazon.com/global-accelerator/latest/dg/access-control-manage-access-tag-policies.html). Accelerator An accelerator directs traffic to endpoints over the AWS global network to improve the performance of your internet applications. Each accelerator includes one or more listeners. There are two types of accelerators:

  - A standard accelerator directs traffic to the optimal AWS endpoint based on several factors, including the user’s location, the health of the endpoint, and the endpoint weights that you configure. This improves the availability and performance of your applications. Endpoints can be Network Load Balancers, Application Load Balancers, Amazon EC2 instances, or Elastic IP addresses.

  - A custom routing accelerator directs traffic to one of possibly thousands of Amazon EC2 instances running in a single or multiple virtual private clouds (VPCs). With custom routing, listener ports are mapped to statically associate port ranges with VPC subnets, which allows Global Accelerator to determine an EC2 instance IP address at the time of connection. By default, all port mapping destinations in a VPC subnet can't receive traffic. You can choose to configure all destinations in the subnet to receive traffic, or to specify individual port mappings that can receive traffic.

For more information, see [Types of accelerators](https://docs.aws.amazon.com/global-accelerator/latest/dg/introduction-accelerator-types.html). DNS name Global Accelerator assigns each accelerator a default Domain Name System (DNS) name, similar to a1234567890abcdef.awsglobalaccelerator.com, that points to the static IP addresses that Global Accelerator assigns to you or that you choose from your own IP address range. Depending on the use case, you can use your accelerator's static IP addresses or DNS name to route traffic to your accelerator, or set up DNS records to route traffic using your own custom domain name. Network zone A network zone services the static IP addresses for your accelerator from a unique IP subnet. Similar to an AWS Availability Zone, a network zone is an isolated unit with its own set of physical infrastructure. When you configure an accelerator, by default, Global Accelerator allocates two IPv4 addresses for it. If one IP address from a network zone becomes unavailable due to IP address blocking by certain client networks, or network disruptions, then client applications can retry on the healthy static IP address from the other isolated network zone. Listener A listener processes inbound connections from clients to Global Accelerator, based on the port (or port range) and protocol (or protocols) that you configure. A listener can be configured for TCP, UDP, or both TCP and UDP protocols. Each listener has one or more endpoint groups associated with it, and traffic is forwarded to endpoints in one of the groups. You associate endpoint groups with listeners by specifying the Regions that you want to distribute traffic to. With a standard accelerator, traffic is distributed to optimal endpoints within the endpoint groups associated with a listener. Endpoint group Each endpoint group is associated with a specific AWS Region. Endpoint groups include one or more endpoints in the Region. With a standard accelerator, you can increase or reduce the percentage of traffic that would be otherwise directed to an endpoint group by adjusting a setting called a traffic dial. The traffic dial lets you easily do performance testing or blue/green deployment testing, for example, for new releases across different AWS Regions. Endpoint An endpoint is a resource that Global Accelerator directs traffic to. Endpoints for standard accelerators can be Network Load Balancers, Application Load Balancers, Amazon EC2 instances, or Elastic IP addresses. An Application Load Balancer endpoint can be internet-facing or internal. Traffic for standard accelerators is routed to endpoints based on the health of the endpoint along with configuration options that you choose, such as endpoint weights. For each endpoint, you can configure weights, which are numbers that you can use to specify the proportion of traffic to route to each one. This can be useful, for example, to do performance testing within a Region. Endpoints for custom routing accelerators are virtual private cloud (VPC) subnets with one or many EC2 instances.

## Requirements

### addCustomRoutingEndpoints(input:completion:)

Associate a virtual private cloud (VPC) subnet endpoint with your custom routing accelerator. The listener port range must be large enough to support the number of IP addresses that can be specified in your subnet. The number of ports required is: subnet size times the number of ports per destination EC2 instances. For example, a subnet defined as /24 requires a listener port range of at least 255 ports. Note: You must have enough remaining listener ports available to map to the subnet ports, or the call will fail with a LimitExceededException. By default, all destinations in a subnet in a custom routing accelerator cannot receive traffic. To enable all destinations to receive traffic, or to specify individual port mappings that can receive traffic, see the [ AllowCustomRoutingTraffic](https://docs.aws.amazon.com/global-accelerator/latest/api/API_AllowCustomRoutingTraffic.html) operation.

``` swift
func addCustomRoutingEndpoints(input: AddCustomRoutingEndpointsInput, completion: @escaping (ClientRuntime.SdkResult<AddCustomRoutingEndpointsOutputResponse, AddCustomRoutingEndpointsOutputError>) -> Void)
```

### advertiseByoipCidr(input:completion:)

Advertises an IPv4 address range that is provisioned for use with your AWS resources through bring your own IP addresses (BYOIP). It can take a few minutes before traffic to the specified addresses starts routing to AWS because of propagation delays. To stop advertising the BYOIP address range, use [ WithdrawByoipCidr](https://docs.aws.amazon.com/global-accelerator/latest/api/WithdrawByoipCidr.html). For more information, see [Bring Your Own IP Addresses (BYOIP)](https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html) in the AWS Global Accelerator Developer Guide.

``` swift
func advertiseByoipCidr(input: AdvertiseByoipCidrInput, completion: @escaping (ClientRuntime.SdkResult<AdvertiseByoipCidrOutputResponse, AdvertiseByoipCidrOutputError>) -> Void)
```

### allowCustomRoutingTraffic(input:completion:)

Specify the Amazon EC2 instance (destination) IP addresses and ports for a VPC subnet endpoint that can receive traffic for a custom routing accelerator. You can allow traffic to all destinations in the subnet endpoint, or allow traffic to a specified list of destination IP addresses and ports in the subnet. Note that you cannot specify IP addresses or ports outside of the range that you configured for the endpoint group. After you make changes, you can verify that the updates are complete by checking the status of your accelerator: the status changes from IN\_PROGRESS to DEPLOYED.

``` swift
func allowCustomRoutingTraffic(input: AllowCustomRoutingTrafficInput, completion: @escaping (ClientRuntime.SdkResult<AllowCustomRoutingTrafficOutputResponse, AllowCustomRoutingTrafficOutputError>) -> Void)
```

### createAccelerator(input:completion:)

Create an accelerator. An accelerator includes one or more listeners that process inbound connections and direct traffic to one or more endpoint groups, each of which includes endpoints, such as Network Load Balancers. Global Accelerator is a global service that supports endpoints in multiple AWS Regions but you must specify the US West (Oregon) Region to create or update accelerators.

``` swift
func createAccelerator(input: CreateAcceleratorInput, completion: @escaping (ClientRuntime.SdkResult<CreateAcceleratorOutputResponse, CreateAcceleratorOutputError>) -> Void)
```

### createCustomRoutingAccelerator(input:completion:)

Create a custom routing accelerator. A custom routing accelerator directs traffic to one of possibly thousands of Amazon EC2 instance destinations running in a single or multiple virtual private clouds (VPC) subnet endpoints. Be aware that, by default, all destination EC2 instances in a VPC subnet endpoint cannot receive traffic. To enable all destinations to receive traffic, or to specify individual port mappings that can receive traffic, see the [ AllowCustomRoutingTraffic](https://docs.aws.amazon.com/global-accelerator/latest/api/API_AllowCustomRoutingTraffic.html) operation. Global Accelerator is a global service that supports endpoints in multiple AWS Regions but you must specify the US West (Oregon) Region to create or update accelerators.

``` swift
func createCustomRoutingAccelerator(input: CreateCustomRoutingAcceleratorInput, completion: @escaping (ClientRuntime.SdkResult<CreateCustomRoutingAcceleratorOutputResponse, CreateCustomRoutingAcceleratorOutputError>) -> Void)
```

### createCustomRoutingEndpointGroup(input:completion:)

Create an endpoint group for the specified listener for a custom routing accelerator. An endpoint group is a collection of endpoints in one AWS Region.

``` swift
func createCustomRoutingEndpointGroup(input: CreateCustomRoutingEndpointGroupInput, completion: @escaping (ClientRuntime.SdkResult<CreateCustomRoutingEndpointGroupOutputResponse, CreateCustomRoutingEndpointGroupOutputError>) -> Void)
```

### createCustomRoutingListener(input:completion:)

Create a listener to process inbound connections from clients to a custom routing accelerator. Connections arrive to assigned static IP addresses on the port range that you specify.

``` swift
func createCustomRoutingListener(input: CreateCustomRoutingListenerInput, completion: @escaping (ClientRuntime.SdkResult<CreateCustomRoutingListenerOutputResponse, CreateCustomRoutingListenerOutputError>) -> Void)
```

### createEndpointGroup(input:completion:)

Create an endpoint group for the specified listener. An endpoint group is a collection of endpoints in one AWS Region. A resource must be valid and active when you add it as an endpoint.

``` swift
func createEndpointGroup(input: CreateEndpointGroupInput, completion: @escaping (ClientRuntime.SdkResult<CreateEndpointGroupOutputResponse, CreateEndpointGroupOutputError>) -> Void)
```

### createListener(input:completion:)

Create a listener to process inbound connections from clients to an accelerator. Connections arrive to assigned static IP addresses on a port, port range, or list of port ranges that you specify.

``` swift
func createListener(input: CreateListenerInput, completion: @escaping (ClientRuntime.SdkResult<CreateListenerOutputResponse, CreateListenerOutputError>) -> Void)
```

### deleteAccelerator(input:completion:)

Delete an accelerator. Before you can delete an accelerator, you must disable it and remove all dependent resources (listeners and endpoint groups). To disable the accelerator, update the accelerator to set Enabled to false. When you create an accelerator, by default, Global Accelerator provides you with a set of two static IP addresses. Alternatively, you can bring your own IP address ranges to Global Accelerator and assign IP addresses from those ranges. The IP addresses are assigned to your accelerator for as long as it exists, even if you disable the accelerator and it no longer accepts or routes traffic. However, when you delete an accelerator, you lose the static IP addresses that are assigned to the accelerator, so you can no longer route traffic by using them. As a best practice, ensure that you have permissions in place to avoid inadvertently deleting accelerators. You can use IAM policies with Global Accelerator to limit the users who have permissions to delete an accelerator. For more information, see [Authentication and Access Control](https://docs.aws.amazon.com/global-accelerator/latest/dg/auth-and-access-control.html) in the AWS Global Accelerator Developer Guide.

``` swift
func deleteAccelerator(input: DeleteAcceleratorInput, completion: @escaping (ClientRuntime.SdkResult<DeleteAcceleratorOutputResponse, DeleteAcceleratorOutputError>) -> Void)
```

### deleteCustomRoutingAccelerator(input:completion:)

Delete a custom routing accelerator. Before you can delete an accelerator, you must disable it and remove all dependent resources (listeners and endpoint groups). To disable the accelerator, update the accelerator to set Enabled to false. When you create a custom routing accelerator, by default, Global Accelerator provides you with a set of two static IP addresses. The IP addresses are assigned to your accelerator for as long as it exists, even if you disable the accelerator and it no longer accepts or routes traffic. However, when you delete an accelerator, you lose the static IP addresses that are assigned to the accelerator, so you can no longer route traffic by using them. As a best practice, ensure that you have permissions in place to avoid inadvertently deleting accelerators. You can use IAM policies with Global Accelerator to limit the users who have permissions to delete an accelerator. For more information, see [Authentication and Access Control](https://docs.aws.amazon.com/global-accelerator/latest/dg/auth-and-access-control.html) in the AWS Global Accelerator Developer Guide.

``` swift
func deleteCustomRoutingAccelerator(input: DeleteCustomRoutingAcceleratorInput, completion: @escaping (ClientRuntime.SdkResult<DeleteCustomRoutingAcceleratorOutputResponse, DeleteCustomRoutingAcceleratorOutputError>) -> Void)
```

### deleteCustomRoutingEndpointGroup(input:completion:)

Delete an endpoint group from a listener for a custom routing accelerator.

``` swift
func deleteCustomRoutingEndpointGroup(input: DeleteCustomRoutingEndpointGroupInput, completion: @escaping (ClientRuntime.SdkResult<DeleteCustomRoutingEndpointGroupOutputResponse, DeleteCustomRoutingEndpointGroupOutputError>) -> Void)
```

### deleteCustomRoutingListener(input:completion:)

Delete a listener for a custom routing accelerator.

``` swift
func deleteCustomRoutingListener(input: DeleteCustomRoutingListenerInput, completion: @escaping (ClientRuntime.SdkResult<DeleteCustomRoutingListenerOutputResponse, DeleteCustomRoutingListenerOutputError>) -> Void)
```

### deleteEndpointGroup(input:completion:)

Delete an endpoint group from a listener.

``` swift
func deleteEndpointGroup(input: DeleteEndpointGroupInput, completion: @escaping (ClientRuntime.SdkResult<DeleteEndpointGroupOutputResponse, DeleteEndpointGroupOutputError>) -> Void)
```

### deleteListener(input:completion:)

Delete a listener from an accelerator.

``` swift
func deleteListener(input: DeleteListenerInput, completion: @escaping (ClientRuntime.SdkResult<DeleteListenerOutputResponse, DeleteListenerOutputError>) -> Void)
```

### denyCustomRoutingTraffic(input:completion:)

Specify the Amazon EC2 instance (destination) IP addresses and ports for a VPC subnet endpoint that cannot receive traffic for a custom routing accelerator. You can deny traffic to all destinations in the VPC endpoint, or deny traffic to a specified list of destination IP addresses and ports. Note that you cannot specify IP addresses or ports outside of the range that you configured for the endpoint group. After you make changes, you can verify that the updates are complete by checking the status of your accelerator: the status changes from IN\_PROGRESS to DEPLOYED.

``` swift
func denyCustomRoutingTraffic(input: DenyCustomRoutingTrafficInput, completion: @escaping (ClientRuntime.SdkResult<DenyCustomRoutingTrafficOutputResponse, DenyCustomRoutingTrafficOutputError>) -> Void)
```

### deprovisionByoipCidr(input:completion:)

Releases the specified address range that you provisioned to use with your AWS resources through bring your own IP addresses (BYOIP) and deletes the corresponding address pool. Before you can release an address range, you must stop advertising it by using [WithdrawByoipCidr](https://docs.aws.amazon.com/global-accelerator/latest/api/WithdrawByoipCidr.html) and you must not have any accelerators that are using static IP addresses allocated from its address range. For more information, see [Bring Your Own IP Addresses (BYOIP)](https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html) in the AWS Global Accelerator Developer Guide.

``` swift
func deprovisionByoipCidr(input: DeprovisionByoipCidrInput, completion: @escaping (ClientRuntime.SdkResult<DeprovisionByoipCidrOutputResponse, DeprovisionByoipCidrOutputError>) -> Void)
```

### describeAccelerator(input:completion:)

Describe an accelerator.

``` swift
func describeAccelerator(input: DescribeAcceleratorInput, completion: @escaping (ClientRuntime.SdkResult<DescribeAcceleratorOutputResponse, DescribeAcceleratorOutputError>) -> Void)
```

### describeAcceleratorAttributes(input:completion:)

Describe the attributes of an accelerator.

``` swift
func describeAcceleratorAttributes(input: DescribeAcceleratorAttributesInput, completion: @escaping (ClientRuntime.SdkResult<DescribeAcceleratorAttributesOutputResponse, DescribeAcceleratorAttributesOutputError>) -> Void)
```

### describeCustomRoutingAccelerator(input:completion:)

Describe a custom routing accelerator.

``` swift
func describeCustomRoutingAccelerator(input: DescribeCustomRoutingAcceleratorInput, completion: @escaping (ClientRuntime.SdkResult<DescribeCustomRoutingAcceleratorOutputResponse, DescribeCustomRoutingAcceleratorOutputError>) -> Void)
```

### describeCustomRoutingAcceleratorAttributes(input:completion:)

Describe the attributes of a custom routing accelerator.

``` swift
func describeCustomRoutingAcceleratorAttributes(input: DescribeCustomRoutingAcceleratorAttributesInput, completion: @escaping (ClientRuntime.SdkResult<DescribeCustomRoutingAcceleratorAttributesOutputResponse, DescribeCustomRoutingAcceleratorAttributesOutputError>) -> Void)
```

### describeCustomRoutingEndpointGroup(input:completion:)

Describe an endpoint group for a custom routing accelerator.

``` swift
func describeCustomRoutingEndpointGroup(input: DescribeCustomRoutingEndpointGroupInput, completion: @escaping (ClientRuntime.SdkResult<DescribeCustomRoutingEndpointGroupOutputResponse, DescribeCustomRoutingEndpointGroupOutputError>) -> Void)
```

### describeCustomRoutingListener(input:completion:)

The description of a listener for a custom routing accelerator.

``` swift
func describeCustomRoutingListener(input: DescribeCustomRoutingListenerInput, completion: @escaping (ClientRuntime.SdkResult<DescribeCustomRoutingListenerOutputResponse, DescribeCustomRoutingListenerOutputError>) -> Void)
```

### describeEndpointGroup(input:completion:)

Describe an endpoint group.

``` swift
func describeEndpointGroup(input: DescribeEndpointGroupInput, completion: @escaping (ClientRuntime.SdkResult<DescribeEndpointGroupOutputResponse, DescribeEndpointGroupOutputError>) -> Void)
```

### describeListener(input:completion:)

Describe a listener.

``` swift
func describeListener(input: DescribeListenerInput, completion: @escaping (ClientRuntime.SdkResult<DescribeListenerOutputResponse, DescribeListenerOutputError>) -> Void)
```

### listAccelerators(input:completion:)

List the accelerators for an AWS account.

``` swift
func listAccelerators(input: ListAcceleratorsInput, completion: @escaping (ClientRuntime.SdkResult<ListAcceleratorsOutputResponse, ListAcceleratorsOutputError>) -> Void)
```

### listByoipCidrs(input:completion:)

Lists the IP address ranges that were specified in calls to [ProvisionByoipCidr](https://docs.aws.amazon.com/global-accelerator/latest/api/ProvisionByoipCidr.html), including the current state and a history of state changes.

``` swift
func listByoipCidrs(input: ListByoipCidrsInput, completion: @escaping (ClientRuntime.SdkResult<ListByoipCidrsOutputResponse, ListByoipCidrsOutputError>) -> Void)
```

### listCustomRoutingAccelerators(input:completion:)

List the custom routing accelerators for an AWS account.

``` swift
func listCustomRoutingAccelerators(input: ListCustomRoutingAcceleratorsInput, completion: @escaping (ClientRuntime.SdkResult<ListCustomRoutingAcceleratorsOutputResponse, ListCustomRoutingAcceleratorsOutputError>) -> Void)
```

### listCustomRoutingEndpointGroups(input:completion:)

List the endpoint groups that are associated with a listener for a custom routing accelerator.

``` swift
func listCustomRoutingEndpointGroups(input: ListCustomRoutingEndpointGroupsInput, completion: @escaping (ClientRuntime.SdkResult<ListCustomRoutingEndpointGroupsOutputResponse, ListCustomRoutingEndpointGroupsOutputError>) -> Void)
```

### listCustomRoutingListeners(input:completion:)

List the listeners for a custom routing accelerator.

``` swift
func listCustomRoutingListeners(input: ListCustomRoutingListenersInput, completion: @escaping (ClientRuntime.SdkResult<ListCustomRoutingListenersOutputResponse, ListCustomRoutingListenersOutputError>) -> Void)
```

### listCustomRoutingPortMappings(input:completion:)

Provides a complete mapping from the public accelerator IP address and port to destination EC2 instance IP addresses and ports in the virtual public cloud (VPC) subnet endpoint for a custom routing accelerator. For each subnet endpoint that you add, Global Accelerator creates a new static port mapping for the accelerator. The port mappings don't change after Global Accelerator generates them, so you can retrieve and cache the full mapping on your servers. If you remove a subnet from your accelerator, Global Accelerator removes (reclaims) the port mappings. If you add a subnet to your accelerator, Global Accelerator creates new port mappings (the existing ones don't change). If you add or remove EC2 instances in your subnet, the port mappings don't change, because the mappings are created when you add the subnet to Global Accelerator. The mappings also include a flag for each destination denoting which destination IP addresses and ports are allowed or denied traffic.

``` swift
func listCustomRoutingPortMappings(input: ListCustomRoutingPortMappingsInput, completion: @escaping (ClientRuntime.SdkResult<ListCustomRoutingPortMappingsOutputResponse, ListCustomRoutingPortMappingsOutputError>) -> Void)
```

### listCustomRoutingPortMappingsByDestination(input:completion:)

List the port mappings for a specific EC2 instance (destination) in a VPC subnet endpoint. The response is the mappings for one destination IP address. This is useful when your subnet endpoint has mappings that span multiple custom routing accelerators in your account, or for scenarios where you only want to list the port mappings for a specific destination instance.

``` swift
func listCustomRoutingPortMappingsByDestination(input: ListCustomRoutingPortMappingsByDestinationInput, completion: @escaping (ClientRuntime.SdkResult<ListCustomRoutingPortMappingsByDestinationOutputResponse, ListCustomRoutingPortMappingsByDestinationOutputError>) -> Void)
```

### listEndpointGroups(input:completion:)

List the endpoint groups that are associated with a listener.

``` swift
func listEndpointGroups(input: ListEndpointGroupsInput, completion: @escaping (ClientRuntime.SdkResult<ListEndpointGroupsOutputResponse, ListEndpointGroupsOutputError>) -> Void)
```

### listListeners(input:completion:)

List the listeners for an accelerator.

``` swift
func listListeners(input: ListListenersInput, completion: @escaping (ClientRuntime.SdkResult<ListListenersOutputResponse, ListListenersOutputError>) -> Void)
```

### listTagsForResource(input:completion:)

List all tags for an accelerator. For more information, see [Tagging in AWS Global Accelerator](https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html) in the AWS Global Accelerator Developer Guide.

``` swift
func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (ClientRuntime.SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
```

### provisionByoipCidr(input:completion:)

Provisions an IP address range to use with your AWS resources through bring your own IP addresses (BYOIP) and creates a corresponding address pool. After the address range is provisioned, it is ready to be advertised using [ AdvertiseByoipCidr](https://docs.aws.amazon.com/global-accelerator/latest/api/AdvertiseByoipCidr.html). For more information, see [Bring Your Own IP Addresses (BYOIP)](https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html) in the AWS Global Accelerator Developer Guide.

``` swift
func provisionByoipCidr(input: ProvisionByoipCidrInput, completion: @escaping (ClientRuntime.SdkResult<ProvisionByoipCidrOutputResponse, ProvisionByoipCidrOutputError>) -> Void)
```

### removeCustomRoutingEndpoints(input:completion:)

Remove endpoints from a custom routing accelerator.

``` swift
func removeCustomRoutingEndpoints(input: RemoveCustomRoutingEndpointsInput, completion: @escaping (ClientRuntime.SdkResult<RemoveCustomRoutingEndpointsOutputResponse, RemoveCustomRoutingEndpointsOutputError>) -> Void)
```

### tagResource(input:completion:)

Add tags to an accelerator resource. For more information, see [Tagging in AWS Global Accelerator](https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html) in the AWS Global Accelerator Developer Guide.

``` swift
func tagResource(input: TagResourceInput, completion: @escaping (ClientRuntime.SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
```

### untagResource(input:completion:)

Remove tags from a Global Accelerator resource. When you specify a tag key, the action removes both that key and its associated value. The operation succeeds even if you attempt to remove tags from an accelerator that was already removed. For more information, see [Tagging in AWS Global Accelerator](https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html) in the AWS Global Accelerator Developer Guide.

``` swift
func untagResource(input: UntagResourceInput, completion: @escaping (ClientRuntime.SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
```

### updateAccelerator(input:completion:)

Update an accelerator. Global Accelerator is a global service that supports endpoints in multiple AWS Regions but you must specify the US West (Oregon) Region to create or update accelerators.

``` swift
func updateAccelerator(input: UpdateAcceleratorInput, completion: @escaping (ClientRuntime.SdkResult<UpdateAcceleratorOutputResponse, UpdateAcceleratorOutputError>) -> Void)
```

### updateAcceleratorAttributes(input:completion:)

Update the attributes for an accelerator.

``` swift
func updateAcceleratorAttributes(input: UpdateAcceleratorAttributesInput, completion: @escaping (ClientRuntime.SdkResult<UpdateAcceleratorAttributesOutputResponse, UpdateAcceleratorAttributesOutputError>) -> Void)
```

### updateCustomRoutingAccelerator(input:completion:)

Update a custom routing accelerator.

``` swift
func updateCustomRoutingAccelerator(input: UpdateCustomRoutingAcceleratorInput, completion: @escaping (ClientRuntime.SdkResult<UpdateCustomRoutingAcceleratorOutputResponse, UpdateCustomRoutingAcceleratorOutputError>) -> Void)
```

### updateCustomRoutingAcceleratorAttributes(input:completion:)

Update the attributes for a custom routing accelerator.

``` swift
func updateCustomRoutingAcceleratorAttributes(input: UpdateCustomRoutingAcceleratorAttributesInput, completion: @escaping (ClientRuntime.SdkResult<UpdateCustomRoutingAcceleratorAttributesOutputResponse, UpdateCustomRoutingAcceleratorAttributesOutputError>) -> Void)
```

### updateCustomRoutingListener(input:completion:)

Update a listener for a custom routing accelerator.

``` swift
func updateCustomRoutingListener(input: UpdateCustomRoutingListenerInput, completion: @escaping (ClientRuntime.SdkResult<UpdateCustomRoutingListenerOutputResponse, UpdateCustomRoutingListenerOutputError>) -> Void)
```

### updateEndpointGroup(input:completion:)

Update an endpoint group. A resource must be valid and active when you add it as an endpoint.

``` swift
func updateEndpointGroup(input: UpdateEndpointGroupInput, completion: @escaping (ClientRuntime.SdkResult<UpdateEndpointGroupOutputResponse, UpdateEndpointGroupOutputError>) -> Void)
```

### updateListener(input:completion:)

Update a listener.

``` swift
func updateListener(input: UpdateListenerInput, completion: @escaping (ClientRuntime.SdkResult<UpdateListenerOutputResponse, UpdateListenerOutputError>) -> Void)
```

### withdrawByoipCidr(input:completion:)

Stops advertising an address range that is provisioned as an address pool. You can perform this operation at most once every 10 seconds, even if you specify different address ranges each time. It can take a few minutes before traffic to the specified addresses stops routing to AWS because of propagation delays. For more information, see [Bring Your Own IP Addresses (BYOIP)](https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html) in the AWS Global Accelerator Developer Guide.

``` swift
func withdrawByoipCidr(input: WithdrawByoipCidrInput, completion: @escaping (ClientRuntime.SdkResult<WithdrawByoipCidrOutputResponse, WithdrawByoipCidrOutputError>) -> Void)
```
# CodeGuruReviewerClientProtocol

This section provides documentation for the Amazon CodeGuru Reviewer API operations. CodeGuru Reviewer is a service that uses program analysis and machine learning to detect potential defects that are difficult for developers to find and recommends fixes in your Java and Python code. By proactively detecting and providing recommendations for addressing code defects and implementing best practices, CodeGuru Reviewer improves the overall quality and maintainability of your code base during the code review stage. For more information about CodeGuru Reviewer, see the [Amazon CodeGuru Reviewer User Guide](https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/welcome.html). To improve the security of your CodeGuru Reviewer API calls, you can establish a private connection between your VPC and CodeGuru Reviewer by creating an interface VPC endpoint. For more information, see [CodeGuru Reviewer and interface VPC endpoints (Amazon Web Services PrivateLink)](https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/vpc-interface-endpoints.html) in the Amazon CodeGuru Reviewer User Guide.

``` swift
public protocol CodeGuruReviewerClientProtocol 
```

## Requirements

### associateRepository(input:completion:)

Use to associate an Amazon Web Services CodeCommit repository or a repostory managed by Amazon Web Services CodeStar Connections with Amazon CodeGuru Reviewer. When you associate a repository, CodeGuru Reviewer reviews source code changes in the repository's pull requests and provides automatic recommendations. You can view recommendations using the CodeGuru Reviewer console. For more information, see [Recommendations in Amazon CodeGuru Reviewer](https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/recommendations.html) in the Amazon CodeGuru Reviewer User Guide. If you associate a CodeCommit or S3 repository, it must be in the same Amazon Web Services Region and Amazon Web Services account where its CodeGuru Reviewer code reviews are configured. Bitbucket and GitHub Enterprise Server repositories are managed by Amazon Web Services CodeStar Connections to connect to CodeGuru Reviewer. For more information, see [Associate a repository](https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/getting-started-associate-repository.html) in the Amazon CodeGuru Reviewer User Guide. You cannot use the CodeGuru Reviewer SDK or the Amazon Web Services CLI to associate a GitHub repository with Amazon CodeGuru Reviewer. To associate a GitHub repository, use the console. For more information, see [Getting started with CodeGuru Reviewer](https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/getting-started-with-guru.html) in the CodeGuru Reviewer User Guide.

``` swift
func associateRepository(input: AssociateRepositoryInput, completion: @escaping (ClientRuntime.SdkResult<AssociateRepositoryOutputResponse, AssociateRepositoryOutputError>) -> Void)
```

### createCodeReview(input:completion:)

Use to create a code review with a [CodeReviewType](https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReviewType.html) of RepositoryAnalysis. This type of code review analyzes all code under a specified branch in an associated repository. PullRequest code reviews are automatically triggered by a pull request.

``` swift
func createCodeReview(input: CreateCodeReviewInput, completion: @escaping (ClientRuntime.SdkResult<CreateCodeReviewOutputResponse, CreateCodeReviewOutputError>) -> Void)
```

### describeCodeReview(input:completion:)

Returns the metadata associated with the code review along with its status.

``` swift
func describeCodeReview(input: DescribeCodeReviewInput, completion: @escaping (ClientRuntime.SdkResult<DescribeCodeReviewOutputResponse, DescribeCodeReviewOutputError>) -> Void)
```

### describeRecommendationFeedback(input:completion:)

Describes the customer feedback for a CodeGuru Reviewer recommendation.

``` swift
func describeRecommendationFeedback(input: DescribeRecommendationFeedbackInput, completion: @escaping (ClientRuntime.SdkResult<DescribeRecommendationFeedbackOutputResponse, DescribeRecommendationFeedbackOutputError>) -> Void)
```

### describeRepositoryAssociation(input:completion:)

Returns a [RepositoryAssociation](https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html) object that contains information about the requested repository association.

``` swift
func describeRepositoryAssociation(input: DescribeRepositoryAssociationInput, completion: @escaping (ClientRuntime.SdkResult<DescribeRepositoryAssociationOutputResponse, DescribeRepositoryAssociationOutputError>) -> Void)
```

### disassociateRepository(input:completion:)

Removes the association between Amazon CodeGuru Reviewer and a repository.

``` swift
func disassociateRepository(input: DisassociateRepositoryInput, completion: @escaping (ClientRuntime.SdkResult<DisassociateRepositoryOutputResponse, DisassociateRepositoryOutputError>) -> Void)
```

### listCodeReviews(input:completion:)

Lists all the code reviews that the customer has created in the past 90 days.

``` swift
func listCodeReviews(input: ListCodeReviewsInput, completion: @escaping (ClientRuntime.SdkResult<ListCodeReviewsOutputResponse, ListCodeReviewsOutputError>) -> Void)
```

### listRecommendationFeedback(input:completion:)

Returns a list of [RecommendationFeedbackSummary](https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RecommendationFeedbackSummary.html) objects that contain customer recommendation feedback for all CodeGuru Reviewer users.

``` swift
func listRecommendationFeedback(input: ListRecommendationFeedbackInput, completion: @escaping (ClientRuntime.SdkResult<ListRecommendationFeedbackOutputResponse, ListRecommendationFeedbackOutputError>) -> Void)
```

### listRecommendations(input:completion:)

Returns the list of all recommendations for a completed code review.

``` swift
func listRecommendations(input: ListRecommendationsInput, completion: @escaping (ClientRuntime.SdkResult<ListRecommendationsOutputResponse, ListRecommendationsOutputError>) -> Void)
```

### listRepositoryAssociations(input:completion:)

Returns a list of [RepositoryAssociationSummary](https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html) objects that contain summary information about a repository association. You can filter the returned list by [ProviderType](https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html#reviewer-Type-RepositoryAssociationSummary-ProviderType), [Name](https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html#reviewer-Type-RepositoryAssociationSummary-Name), [State](https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html#reviewer-Type-RepositoryAssociationSummary-State), and [Owner](https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html#reviewer-Type-RepositoryAssociationSummary-Owner).

``` swift
func listRepositoryAssociations(input: ListRepositoryAssociationsInput, completion: @escaping (ClientRuntime.SdkResult<ListRepositoryAssociationsOutputResponse, ListRepositoryAssociationsOutputError>) -> Void)
```

### listTagsForResource(input:completion:)

Returns the list of tags associated with an associated repository resource.

``` swift
func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (ClientRuntime.SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
```

### putRecommendationFeedback(input:completion:)

Stores customer feedback for a CodeGuru Reviewer recommendation. When this API is called again with different reactions the previous feedback is overwritten.

``` swift
func putRecommendationFeedback(input: PutRecommendationFeedbackInput, completion: @escaping (ClientRuntime.SdkResult<PutRecommendationFeedbackOutputResponse, PutRecommendationFeedbackOutputError>) -> Void)
```

### tagResource(input:completion:)

Adds one or more tags to an associated repository.

``` swift
func tagResource(input: TagResourceInput, completion: @escaping (ClientRuntime.SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
```

### untagResource(input:completion:)

Removes a tag from an associated repository.

``` swift
func untagResource(input: UntagResourceInput, completion: @escaping (ClientRuntime.SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
```
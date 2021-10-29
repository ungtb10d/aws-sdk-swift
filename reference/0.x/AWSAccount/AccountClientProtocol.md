# AccountClientProtocol

Operations for Amazon Web Services Account Management

``` swift
public protocol AccountClientProtocol 
```

## Requirements

### deleteAlternateContact(input:completion:)

Deletes the specified alternate contact from an Amazon Web Services account. For complete details about how to use the alternate contact operations, see [Access or updating the alternate contacts](https://docs.aws.amazon.com/accounts/latest/reference/manage-acct-update-contact.html).

``` swift
func deleteAlternateContact(input: DeleteAlternateContactInput, completion: @escaping (ClientRuntime.SdkResult<DeleteAlternateContactOutputResponse, DeleteAlternateContactOutputError>) -> Void)
```

### getAlternateContact(input:completion:)

Retrieves the specified alternate contact attached to an Amazon Web Services account. For complete details about how to use the alternate contact operations, see [Access or updating the alternate contacts](https://docs.aws.amazon.com/accounts/latest/reference/manage-acct-update-contact.html).

``` swift
func getAlternateContact(input: GetAlternateContactInput, completion: @escaping (ClientRuntime.SdkResult<GetAlternateContactOutputResponse, GetAlternateContactOutputError>) -> Void)
```

### putAlternateContact(input:completion:)

Modifies the specified alternate contact attached to an Amazon Web Services account. For complete details about how to use the alternate contact operations, see [Access or updating the alternate contacts](https://docs.aws.amazon.com/accounts/latest/reference/manage-acct-update-contact.html).

``` swift
func putAlternateContact(input: PutAlternateContactInput, completion: @escaping (ClientRuntime.SdkResult<PutAlternateContactOutputResponse, PutAlternateContactOutputError>) -> Void)
```
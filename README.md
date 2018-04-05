# HTTP errors

Simple HTTP errors for your Ruby application.

## Usage

Install it

```
gem 'http-errors'
```

Then in your application you can raise an HTTP error

```ruby
raise HttpError::Unauthorized
```

You can also set some detail information about the error

```ruby
raise HttpError::Unauthorized, 'Invalid email or password'
```

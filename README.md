# HTTP errors

Simple HTTP errors for your Ruby application. You can see [a complete list of http errors here](https://httpstatuses.com).

## Usage

Install it

```
gem 'http-errors', require: 'http_error'
```

Then in your application you can raise an HTTP error

```ruby
raise HttpError::Unauthorized
```

You can also set some detail information about the error

```ruby
raise HttpError::Unauthorized, 'Invalid email or password'
```

In your ApplicationController you can then handle the errors like this

```ruby
class ApplicationController < ActionController::Base
  include HttpError::Response
end
```

Or you can implement your own handler for all `HttpError`s

```ruby
class ApplicationController < ActionController::Base
  rescue_from HttpError::Error do |error|
    # Handle the error here
  end
end
```

Or for a specific, single error

```ruby
class ApplicationController < ActionController::Base
  rescue_from HttpError::Teapot do |error|
    render json: { error: 'This is silly' }, status: 418
  end
end
```

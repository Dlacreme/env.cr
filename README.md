# env.cr

env.cr ensure your environment variables are properly set.

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     env.cr:
       github: dlacreme/env.cr
   ```

2. Run `shards install`

## Usage

```crystal
require "envcr"

begin
    ENVCR::load
rescue
    puts "Environment is not as expected"
end
```


## Development

TODO: Write development instructions here

## Contributing

1. Fork it (<https://github.com/your-github-user/env.cr/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Mathieu Delacroix](https://github.com/dlacreme) - creator and maintainer

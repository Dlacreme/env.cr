# env.cr

env.cr ensure your environment variables are set properly.

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     env.cr:
       github: dlacreme/env.cr
   ```

2. Run `shards install`

## Usage

Create a yaml file containing an array of items such as follow:
```yaml
# ./env.yml
[
  {name: MY_CLIENT_PRIVATE_KEY}, # By default, variable are required
  {name: PROD, optional: true}, # You can flag a variable as optional
  {name: MY_CLIENT_ID, default: 'xxx'}, # You can set a default value in case the variable is missing
]
```

```crystal
require "envcr"

ENVCR.load! "../env.yml" # path to your YAML file

```


## Development

`$ crystal spec` : run the tests

## Contributing

1. Fork it (<https://github.com/your-github-user/env.cr/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Mathieu Delacroix](https://github.com/dlacreme) - creator and maintainer

# notify

``libnotify`` wrapper.

## Installation


Add this to your application's `shard.yml`:

```yaml
dependencies:
  notify:
    github: Nephos/notify
```


## Usage


```crystal
require "notify"

Notify.send("Title", "Body text", "image path")
n = Notify::Notification.new("Title", "Body text", "image path")
n.show
n.title = "test 2"
n.show
```



## Development

I use the project [libnotify.cr](https://github.com/splattael/libnotify.cr).
Thanks to this work.


## Contributing

1. Fork it ( https://github.com/Nephos/notify/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request


## Contributors

- [Nephos](https://github.com/Nephos) Arthur Poulet - creator, maintainer

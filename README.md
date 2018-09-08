# Crypto Icons API

This project is a service for serving the icons created and maintained by the
[Cryptocurrency Icons](https://github.com/atomiclabs/cryptocurrency-icons) project.

The service was originally built for use in [Quids for Mac](http://quidsapp.com)
to avoid bundling every icon with the client. Instead, we use this service to
dynamically accept the SVG source and render a PNG, using any of the included
icon styles provided.

You are welcome to fork this GitHub repo and deploy your own version of the
service. You can even deploy this straight to Heroku.

## API

```
GET https://cryptoicons.org/api/:style/:currency/:size
```

### Styles

- `black`
- `white`
- `color`
- `icon`

### Override Colors

By default both `color` and `icon` styles have a color assigned from the original
assets created by the
[Cryptocurrency Icons](https://github.com/atomiclabs/cryptocurrency-icons) project.

You can optionally override these colors by passing your own hexidecimal value
as the last value to API calls for these styles only. The hexidecimal value
you pass should not include the `#` prefix.

### Examples

```
GET https://cryptoicons.org/api/color/eth/600
```

```
GET https://cryptoicons.org/api/black/btc/200
```

```
GET https://cryptoicons.org/api/icon/btc/ff00ff
```

## Deploy to Heroku
[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

## License

All the SVG files are under the same license as the [Cryptocurrency Icons](https://github.com/atomiclabs/cryptocurrency-icons) project.

The rest of the project is MIT.

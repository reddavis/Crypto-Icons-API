# Crypto Icons API

This project builds ontop of the amazing [Cryptocurrency Icons](https://github.com/atomiclabs/cryptocurrency-icons) project.

Rather than bundling all the images into our app, [Quids](http://quidsapp.com), and having to ship an update everytime a new currency was added we built this service.

## API

```
GET https://cryptoicons.org/api/:style/:currency/:size
```

### Styles

- `black`
- `white`
- `color`
- `icon`

### Examples

```
GET https://cryptoicons.org/api/color/eth/600
```

```
GET https://cryptoicons.org/api/black/btc/200
```

## Deploy To Heroku

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

## License

All the .svg files are under the same license as the [Cryptocurrency Icons](https://github.com/atomiclabs/cryptocurrency-icons) project.

The rest of the project is MIT.

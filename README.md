# open-reverse-geocoder-cd
This repository is to manage vector tiles of address data in DRC for open-reverse-geocoder

## Tileset Specification

- metadata.json

```bash
https://open-geocoding.github.io/open-reverse-geocoder-cd/tiles/metadata.json
```

- Tileset URL

```bash
https://open-geocoding.github.io/open-reverse-geocoder-cd/tiles/{z}/{x}/{y}.pbf
```

## Original Data

This tilesets was generated from `Rwanda Villages` owned by World Bank.

You may download the shapefile from [here](https://datacatalog.worldbank.org/search/dataset/0040240/Democratic-Republic-of-the-Congo---Administrative-Boundaries).

## Generate Country Tiles

- Install NPM packages

```bash
npm i
```

- Generate

```bash
npm run build
```

## Deploy to Github Pages

```bash
npm run deploy
```

## License

About the license of source code and scripts, please see [License](./LICENSE) file.

However, the license of country polygons data belong to World Bank, please follow their license which is [Creative Commons Attribution 4.0](https://datacatalog.worldbank.org/public-licenses?fragment=cc) and use their attribution (eg. `©WorldBank`).

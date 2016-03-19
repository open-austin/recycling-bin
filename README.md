# recycling-bin :recycle:

This is a fork of https://github.com/open-city/recycling.

Our goals for this fork are to build:

- REST API that can be hosted easily on more than just Heroku. This means:
  - No Mongo dependency. Use a relational database like Postgres (or maybe GitHub pages).
  - No memcached dependency. We can figure out scaling later.
  - https://github.com/open-austin/recycling-bin/issues/1
- Frontend that consumes the API. It should be just static files that can be hosted on GitHub pages.

#### API

The API exposes two resources, locations and reports. A location can have many reports

Getting all locations

```
curl -X GET localhost:8080/locations
```

Getting a single location

```
curl -X GET localhost:8080/locations/{id}
```

Creating a location

```
curl http://localhost:8000/locations -H 'Content-Type: application/json' -d '{"name": "Capitol Factory", "coordinates": [30.268748, -97.740364], "address": "700 San Jacinto Blvd, Austin, TX 78701"}'
```

Updating a location with a new report

```
curl -X PUT localhost:8080/locations/{id} -d {"report": "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium"}
```

#### License

Released to the public domain under [the Unlicense](http://unlicense.org/) by Open Austin, 2015.

#### Contributing

Please see [CONTRIBUTING.md](CONTRIBUTING.md).

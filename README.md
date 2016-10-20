Local Feedbin with personal RSS Subscriptions
===============================================
Uses foreman and redis.

Installation
-------------
Ultimately, you'll need a Ruby environment and a Rack compatible application server. For development [Pow](http://pow.cx/) is recommended.

Feedbin uses environment variables for configuration. Feedbin will run without these, but various features and functionality will be turned off.

| Environment Variable     | Description                                                                        |
|--------------------------|------------------------------------------------------------------------------------|
| ASSET_HOST               | Pull CDN URL                                                                       |
| AWS_ACCESS_KEY_ID        | Used for file uploads - http://aws.amazon.com                                      |
| AWS_S3_BUCKET            | Used for file uploads - http://aws.amazon.com                                      |
| AWS_SECRET_ACCESS_KEY    | Used for file uploads - http://aws.amazon.com                                      |
| CAMO_HOST                | CDN to point to the camo host                                                      |
| CAMO_KEY                 | Used to rewrite assets to use https - https://github.com/atmos/camo                |
| DATABASE_URL             | Database connection string - postgres://USER:PASS@IP:PORT/DATABASE                 |
| DEFAULT_URL_OPTIONS_HOST | Mailer host - feedbin.com                                                          |
| ELASTICSEARCH_URL        | search endpoint - http://localhost:9200                                            |
| ENTRY_LIMIT              | Maximum entries per feed. Older entries will be deleted.                           |
| FEEDBIN_HOMEPAGE_REPO    | Git URL to a Rails engine that provides a custom homepage                          |
| FROM_ADDRESS             | Used as a reply-to email address                                                   |
| GAUGES_SITE_ID           | [gaug.es](http://gaug.es) analytics identifier                                     |
| HONEYBADGER_API_KEY      | Used for error reporting - http://honeybadger.io                                   |
| LIBRATO_SOURCE           | Default source for metrics - feedbin                                               |
| LIBRATO_TOKEN            | Used for reporting stats - http://metrics.librato.com                              |
| LIBRATO_USER             | Used for reporting stats - http://metrics.librato.com                              |
| MEMCACHED_HOSTS          | Comma separated memcached hosts/ports - 192.168.1.2:11121                          |
| POSTGRES_USERNAME        | Used for connecting to database                                                    |
| PUSH_URL                 | URL for the Feedbin instance - https://feedbin.com                                 |
| RACK_ENV                 | Environment - production                                                           |
| RAILS_ENV                | Environment - production                                                           |
| READABILITY_API_TOKEN    | Used for Readability - http://www.readability.com                                  |
| REDIS_URL                | redis connection string - redis://redis:PASSWORD@192.168.1.3:6379                  |
| SECRET_KEY_BASE          | Encryptions key for Rails - run `rake secret`                                      |
| SIDEKIQ_PASSWORD         | Sidekiq Basic Auth Password                                                        |
| SMTP_ADDRESS             | SMTP Host                                                                          |
| SMTP_USERNAME            | SMTP Username                                                                      |
| SMTP_PASSWORD            | SMTP Password                                                                      |
| STRIPE_API_KEY           | Used for communicating with stripe - https://stripe.com                            |
| STRIPE_PUBLIC_KEY        | Used for communicating with stripe - https://stripe.com                            |
| ANALYTICS_ID             | Google Analytics Property                                                          |
| ANALYTICS_DOMAIN         | Google Analytics Domain                                                            |
| EVERNOTE_KEY             | Evernote API Key                                                                   |
| EVERNOTE_SECRET          | Evernote API Secret                                                                |

These variables will need to be available in the environment of the user running the app.

### Feedbin Install Guides

- [Mac OS X](doc/INSTALL-mac.md)
- [Ubuntu](doc/INSTALL-ubuntu.md) (incomplete)
- [Fedora](doc/INSTALL-fedora.md)

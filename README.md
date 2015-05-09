fluent-plugin-pushover [![Build Status](https://travis-ci.org/hkar/fluent-plugin-pushover.svg?branch=master)](https://travis-ci.org/hkar/fluent-plugin-pushover) [![Code Climate](https://codeclimate.com/github/hkar/fluent-plugin-pushover/badges/gpa.svg)](https://codeclimate.com/github/hkar/fluent-plugin-pushover)
=====================

## Installation

td-agent-gem install fluent-plugin-pushover

## Setting

```
<match error_5xx.**>
  type pushover

  # Set account_token (app token) and user_key (id of client)
  account_token     <YOUR_TOKEN>            # Required
  user_key          <YOUR_TOKEN>            # Required

  # Set log level to prevent info error for Fluentd v0.10.43 or later.
  log_level       warn
</match>
```

## License
Apache License, Version 2.0
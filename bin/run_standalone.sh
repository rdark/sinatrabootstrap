#!/usr/bin/env bash
#
# Launch the app using rerun (reloads when files are modified)

bundle exec rerun lib/sinatrabootstrap.rb

# Otherwise just 'bundle exec ruby app.rb', or run under passenger etc

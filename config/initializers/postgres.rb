require "active_record/connection_adapters/postgresql_adapter"

# Use TIMESTAMP WITH TIME ZONE for `datetime` columns
# https://justatheory.com/2012/04/postgres-use-timestamptz/
ActiveRecord::ConnectionAdapters::PostgreSQLAdapter.datetime_type = :timestamptz

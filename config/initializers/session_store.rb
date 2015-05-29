# Be sure to restart your server when you modify this file.

require 'rack-cas/session_store/rails/active_record'
ThreescaleMetricManager::Application.config.session_store ActionDispatch::Session::RackCasActiveRecordStore

Rails.application.config.session_store :cookie_store, key: '_threescale-metric-manager_session'
class SlackController < ApplicationController
  require 'rest-client'

  def oauth
    payload = {
      client_id: ENV['SLACK_APP_CLIENT_ID'],
      client_secret: ENV['SLACK_APP_CLIENT_SECRET'],
      code: params[:code]
    }

    response = RestClient.post('https://slack.com/api/oauth.access', payload)
    render json: {}
  end

  def message_action
    puts ''
    puts ''
    puts ''
    puts ''
    puts ''
    puts ''
    puts "SLACK LIKE CLICKED: #{params.inspect}"
    puts ''
    puts ''
    puts ''
    puts ''
    puts ''
    puts ''

    render json: {}, status:  200
  end

end
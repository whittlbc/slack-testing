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
    payload = JSON.parse(params[:payload])
    original_message = payload['original_message']
    original_message['attachments'].first['actions'].first['text'] = 'New Text'

    render json: original_message, status: 200
  end

end
module AuthHelper

    # App's client ID. Register the app in Application Registration Portal to get this value.
    CLIENT_ID = 'b744d8ef-1d31-43dc-9fdc-c3531e2b7604'
    # App's client secret. Register the app in Application Registration Portal to get this value.
    CLIENT_SECRET = 'rCT*VH*=@yjWl(9Z&_E@@qP#71=-@@IT>6Kcsf'
  
    # Scopes required by the app
    SCOPES = [ 'openid',
               'profile',
               'User.Read',
               'Mail.Read' ]
  
  
    # Generates the login URL for the app.
    def get_login_url
        client = OAuth2::Client.new(CLIENT_ID,
                                    CLIENT_SECRET,
                                    :site => "https://login.microsoftonline.com",
                                    :authorize_url => "/common/oauth2/v2.0/authorize",
                                    :token_url => "/common/oauth2/v2.0/token")

        login_url = client.auth_code.authorize_url(:redirect_uri => authorize_url, :scope => SCOPES.join(' '))
    end
    # Exchanges an authorization code for a token
def get_token_from_code(auth_code)
    client = OAuth2::Client.new(CLIENT_ID,
                                CLIENT_SECRET,
                                :site => 'https://login.microsoftonline.com',
                                :authorize_url => '/common/oauth2/v2.0/authorize',
                                :token_url => '/common/oauth2/v2.0/token')
  
    token = client.auth_code.get_token(auth_code,
                                       :redirect_uri => authorize_url,
                                       :scope => SCOPES.join(' '))
  end
  end
class ApplicationController < ActionController::Base
    before_action :authenticate

    def authenticate
        RSpotify.authenticate("18278fde81504c75a2b075a4d8fc6c27", "87ef695e70f54494ae373f0e42dc4106")
    end
end

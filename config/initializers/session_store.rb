if Rails.env == "production"
    Rails.application.config.session_store :cookie_store, key: "_tingle", domain: "tingle.co.za"
else
    Rails.application.config.session_store :cookie_store, key: "_tingle"
end
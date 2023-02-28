json.extract! submission, :id, :title, :purpose, :background, :discussion, :communication, :legal, :human_resource, :financial, :recommendation, :created_at, :updated_at
json.url submission_url(submission, format: :json)

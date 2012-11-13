class User
  include Mongoid::Document
  include Mongoid::Timestamps

  field :first_name, type: String
  field :last_name, type: String
  field :name, type: String
  field :picture_url, type: String
  field :dob, type: Date
  field :industry, type: String
  field :location, type: String
  field :country_code, type: String
  field :num_connections, type: Integer
  field :skills, type: Array
  field :linkedin_id, type: String
  field :linkedin_token, type: String
  field :linkedin_secret, type: String

  index({linkedin_id: 1}, { unique: true })

  def self.find_or_create_from_auth_hash(auth_hash)
    user = User.find_or_initialize_by(linkedin_id: auth_hash['uid'])

    user.first_name = auth_hash['info']['first_name']
    user.last_name = auth_hash['info']['last_name']
    user.name = auth_hash['info']['name']
    user.picture_url = auth_hash['info']['image']
    user.industry = auth_hash['info']['industry']

    user.dob = Date.new(auth_hash['extra']['raw_info']['dateOfBirth']['year'], auth_hash['extra']['raw_info']['dateOfBirth']['month'], auth_hash['extra']['raw_info']['dateOfBirth']['day'])
    user.location = auth_hash['extra']['raw_info']['location']['name']
    user.country_code = auth_hash['extra']['raw_info']['location']['country']['code']
    user.num_connections = auth_hash['extra']['raw_info']['numConnections']

    user.linkedin_token = auth_hash['credentials']['token']
    user.linkedin_secret = auth_hash['credentials']['secret']

    user.skills = auth_hash['extra']['raw_info']['skills']['values'].map do |s|
      s['skill']['name']
    end

    user.save!

    user
  end
end

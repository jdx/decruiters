OmniAuth.config.test_mode = true
OmniAuth.config.mock_auth[:linkedin] = OmniAuth::AuthHash.new({
  provider: 'linkedin',
  uid: '12345',
  credentials: {
    token: 'mytoken',
    token: 'msekret',
  },
  info: {
    first_name: 'Jeff',
    last_name: 'Dickey',
    name: 'Jeff Dickey',
    image: 'http://dickey.xxx/jeff.jpg',
    industry: 'Computer Software',
  },
  extra: {
    raw_info: {
      location: {
        name: 'San Francisco Bay Area',
        country: { code: 'us' },
      },
      numConnections: 500,
      dateOfBirth: {
        year: 1986,
        month: 8,
        day: 6,
      },
      skills: {
        values: [
          skill: { name: 'Rails' },
          skill: { name: 'JavaScript' },
        ]
      },
    },
  },
})

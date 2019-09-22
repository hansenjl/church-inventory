User
  - email: string
  - admin: boolean
  - password_digest: string
  - church: belongs_to
  - has_many :locations through: :churches

Church
  - has_many :users
  - has_many :locations

Location
  - church: belongs_to
  - has_many :users through: :churches
  - has_many :areas
  - has_many :items, through: :areas
  - Name: string
  - notes: text

Area
  - name: string
  - description: notes
  - location: belongs_to
  - has_many :items

Item
  - name: string
  - description: text
  - area: belongs_to
  - purpose: belongs_to
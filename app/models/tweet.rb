class Tweet < ApplicationRecord
    include PgSearch::Model

  pg_search_scope :search_full_text,
                  against: {
                    Description: 'A',  
                    UserName: 'B'      
                  },
                  using: {
                    tsearch: { prefix: true }
                  }
end

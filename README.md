# DB 設計

## users table

| Column             | Type                | Options                 |
|--------------------|---------------------|-------------------------|
| name               |                     | null: false             |
| email              |                     | null: false             |

### Association

* has_many :tweets
* has_many :comments

## tweets table

| Column                              | Type       | Options           |
|-------------------------------------|------------|-------------------|
| text                                |            | null: false       |
| image                               |            | null: false       |
| user_id                             |            | foreign_key: true |

### Association

- belongs_to :user
- has_many :comments

## comments table

| Column      | Type       | Options           |
|-------------|------------|-------------------|
| text        | text       | null: false       |
| tweet_id    | integer    | foreign_key: true |
| user_id     | integer    | foreign_key: true |

### Association

- belongs_to :tweet
- belongs_to :user
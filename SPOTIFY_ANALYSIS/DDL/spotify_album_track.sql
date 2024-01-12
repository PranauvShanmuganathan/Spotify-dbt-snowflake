CREATE OR REPLACE TABLE SPOTIFY_ALBUM_TRACK (
    album_id VARCHAR(50),                 -- Unique identifier for the album
    album_name VARCHAR(500),              -- Name of the album
    album_popularity INT,                 -- Popularity score of the album
    album_type VARCHAR(50),               -- Type of album (e.g., single, album)
    artists VARCHAR(1000),                 -- List of artists in JSON-like format
    artist_0 VARCHAR(500),                -- First artist
    artist_1 VARCHAR(500),                -- Second artist (optional)
    artist_2 VARCHAR(500),                -- Third artist (optional)
    artist_3 VARCHAR(500),                -- Fourth artist (optional)
    artist_4 VARCHAR(500),                -- Fifth artist (optional)
    artist_id VARCHAR(50),                -- Unique identifier for the primary artist
    duration_sec FLOAT,                   -- Duration of the track in seconds
    label VARCHAR(200),                   -- Label associated with the album
    release_date TIMESTAMP_TZ,               -- Release date of the album
    total_tracks INT,                     -- Total number of tracks in the album
    track_id VARCHAR(50),                 -- Unique identifier for the track
    track_name VARCHAR(500),              -- Name of the track
    track_number INT,                     -- Track number in the album
    artist_genres VARCHAR(500),           -- List of artist genres in JSON-like format
    artist_popularity INT,                -- Popularity score of the artist
    followers INT,                        -- Number of followers of the artist
    name VARCHAR(200),                    -- Name of the artist or track (ambiguous column)
    genre_0 VARCHAR(100),                 -- Primary genre
    genre_1 VARCHAR(100),                 -- Secondary genre (optional)
    genre_2 VARCHAR(100),                 -- Tertiary genre (optional)
    genre_3 VARCHAR(100),                 -- Fourth genre (optional)
    genre_4 VARCHAR(100),                 -- Fifth genre (optional)
    acousticness FLOAT,                   -- Acousticness score
    analysis_url VARCHAR(500),            -- URL for the track's analysis
    danceability FLOAT,                   -- Danceability score
    duration_ms INT,                      -- Duration of the track in milliseconds
    energy FLOAT,                         -- Energy score
    instrumentalness FLOAT,               -- Instrumentalness score
    key INT,                              -- Musical key
    liveness FLOAT,                       -- Liveness score
    loudness FLOAT,                       -- Loudness in decibels
    mode INT,                             -- Mode (major or minor)
    speechiness FLOAT,                    -- Speechiness score
    tempo FLOAT,                          -- Tempo in beats per minute
    time_signature INT,                   -- Time signature
    track_href VARCHAR(500),              -- URL to the track's details
    type VARCHAR(50),                     -- Type of the track (e.g., audio_features)
    uri VARCHAR(500),                     -- Spotify URI
    valence FLOAT,                        -- Valence score
    explicit BOOLEAN,                     -- Whether the track is explicit
    track_popularity INT,                 -- Popularity score of the track
    release_year INT,                     -- Year of release
    release_month VARCHAR(20),            -- Month of release
    rn INT                                -- Row number or ranking
);

COPY INTO spotify_album_track FROM @SPOTIFY_STAGE_IN
    FILE_FORMAT = (FORMAT_NAME = LANDING_CSV 
        TIMESTAMP_FORMAT = 'YYYY-MM-DD HH24:MI:SS TZD')
    PATTERN = '.*spotify_data_.*\.csv';  

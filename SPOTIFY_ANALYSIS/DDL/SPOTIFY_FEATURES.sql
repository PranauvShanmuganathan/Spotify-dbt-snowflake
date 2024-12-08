
CREATE TABLE SPOTIFY_FEATURES (
    danceability FLOAT,            -- Represents a float value for danceability
    energy FLOAT,                  -- Represents a float value for energy
    key INT,                       -- Musical key as an integer
    loudness FLOAT,                -- Loudness in decibels
    mode INT,                      -- Mode (major or minor)
    speechiness FLOAT,             -- Speech-like quality score
    acousticness FLOAT,            -- Acousticness score
    instrumentalness FLOAT,        -- Instrumental score
    liveness FLOAT,                -- Liveness score
    valence FLOAT,                 -- Musical positivity score
    tempo FLOAT,                   -- Tempo in beats per minute
    type VARCHAR(50),              -- Type of audio features
    id VARCHAR(50),                -- Spotify track ID
    uri VARCHAR(100),              -- Spotify URI
    track_href VARCHAR(200),       -- URL for the track
    analysis_url VARCHAR(200),     -- URL for audio analysis
    duration_ms INT,               -- Duration in milliseconds
    time_signature INT             -- Time signature
);

COPY INTO SPOTIFY_FEATURES FROM @SPOTIFY_STAGE_IN
    FILE_FORMAT = (FORMAT_NAME = LANDING_CSV)
    PATTERN = '.*spotify_features_data_.*\.csv';    
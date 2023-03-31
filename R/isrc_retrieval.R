library(spotifyr)

# Generate your own credentials in https://developer.spotify.com
Sys.setenv(SPOTIFY_CLIENT_ID = 'xxx')
Sys.setenv(SPOTIFY_CLIENT_SECRET = 'xxx')

access_token <- get_spotify_access_token()

# From: https://www.kaggle.com/datasets/tomigelo/spotify-audio-features
tiedosto2018 <- read.csv("./Downloads/archive/SpotifyAudioFeaturesNov2018.csv", header = TRUE)
tiedosto2019 <- read.csv("./Downloads/archive/SpotifyAudioFeaturesApril2019.csv", header = TRUE)

# 200 random samples from each dataset with 25 recommendations per track yields 10000 tracks
random_sample1 <- sample(tiedosto2018$track_id, size = 200)
random_sample2 <- sample(tiedosto2019$track_id, size = 200)

random_sample <- c(random_sample1, random_sample2)

# It may be safer to download the data in smaller chunks, maybe 100 requests at ta time
random_isrc <- c()
for (i in seq_along(random_sample)) {
  dataset <- spotifyr::get_recommendations(limit = 25, seed_tracks = random_sample[i])
  precious_isrcs <- dataset$external_ids.isrc
  random_isrc <- c(random_isrc, precious_isrcs)
  # Sleep for 5 secs to not overload the API and get Request failed [503] or Request failed [504]
  Sys.sleep(5)
}

table(duplicated(random_isrc))

# FALSE  TRUE 
#  9708   292 

# Save isrc-codes from previous section to a new object
full_sample <- random_isrc

# Get some additional samples, (8 + 8) * 25 = 400 should be enough
additional_sample1 <- sample(tiedosto2018$track_id, size = 8)
additional_sample2 <- sample(tiedosto2019$track_id, size = 8)

random_sample <- c(additional_sample1, additional_sample2)

random_isrc <- c()
for (i in seq_along(random_sample)) {
  dataset <- spotifyr::get_recommendations(limit = 25, seed_tracks = random_sample[i])
  precious_isrcs <- dataset$external_ids.isrc
  random_isrc <- c(random_isrc, precious_isrcs)
  # Sleep for 5 secs to not overload the API and get Request failed [503] or Request failed [504]
  Sys.sleep(5)
}

full_sample <- c(full_sample, random_isrc)

# Check the number of duplicates
table(duplicated(full_sample))

# FALSE  TRUE 
# 10085   315 

# Remove duplicates
full_sample <- full_sample[!duplicated(full_sample)]

write.table(full_sample, "isrc_codes.csv", row.names = FALSE, col.names = "isrc_code")

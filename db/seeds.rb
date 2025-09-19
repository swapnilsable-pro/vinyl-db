# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# Create initial songs for the jukebox
songs = [
  { title: "Kafka Beats Vol. 1", artist: "The Stream Processors", duration: 240 },
  { title: "Rails Symphony", artist: "Ruby Orchestrators", duration: 320 },
  { title: "Node Noise", artist: "Async Architects", duration: 180 },
  { title: "GraphQL Gateway Groove", artist: "Federation Five", duration: 280 },
  { title: "Docker Deployment Dance", artist: "Container Crew", duration: 200 },
  { title: "Microservice Madness", artist: "Distributed Systems Band", duration: 360 },
  { title: "Terminal Blues", artist: "Command Line Collective", duration: 220 },
  { title: "PostgreSQL Polka", artist: "Database Dancers", duration: 195 },
  { title: "React Renaissance", artist: "Component Composers", duration: 300 },
  { title: "Apollo Anthem", artist: "Query Quartet", duration: 260 },
  { title: "TypeScript Tango", artist: "Type-Safe Troupe", duration: 275 },
  { title: "Kubernetes Concerto", artist: "Orchestration Orchestra", duration: 400 }
]

songs.each do |song_attrs|
  Song.find_or_create_by(title: song_attrs[:title]) do |song|
    song.artist = song_attrs[:artist]
    song.duration = song_attrs[:duration]
  end
end

puts "🎵 Seeded #{Song.count} songs"

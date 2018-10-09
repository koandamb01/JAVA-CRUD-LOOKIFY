package com.lookify.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.lookify.models.Song;
import com.lookify.repositories.SongRepository;

@Service
public class SongService {
	private final SongRepository songRepo;
	
	public SongService(SongRepository songRepo) { this.songRepo = songRepo; }
	
	// Return all songs
	public List<Song> allSongs(){ return songRepo.findAll(); }
	
	// Return Top 10 Songs
	public List<Song> TopTenSong(){return songRepo.findFirst10ByOrderByRatingDesc();}
	
	
	// Create a song
	public Song createSong(Song song) { return songRepo.save(song); }
	
	// retrieve a song by ID
	public Song findSongById(Long id) {
		Optional<Song> optionalSong = songRepo.findById(id);
		
		if(optionalSong.isPresent()) {
			return optionalSong.get();
		}else {
			return null;
		}
	}
	
	
	// retrieve a song by Artist
	public List<Song> findSongByArtist(String artist) { return songRepo.findByArtistContaining(artist); }
	
	
	// delete an song
	public void deleteSong(Long id) { songRepo.deleteById(id); }
}

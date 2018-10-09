package com.lookify.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.lookify.models.Song;
import com.lookify.services.SongService;

@Controller
public class SongController {

	private final SongService songService;
	
	public SongController(SongService songService) { this.songService = songService; }
	
	@RequestMapping("/")
	public String index() {
		return "index.jsp";
	}
	
	@RequestMapping("/dashboard")
	public String dashboard(Model model) {
		List<Song> songs = this.songService.allSongs();
		model.addAttribute("songs", songs);
		return "dashboard.jsp";
	}
	
	@RequestMapping("/songs/new")
	public String newSongForm(@ModelAttribute("song") Song song) {
		return "new.jsp";
	}
	
	@RequestMapping(value="/songs/new", method=RequestMethod.POST)
	public String newSongForm(@Valid @ModelAttribute("song") Song song, BindingResult result) {
		if(result.hasErrors()) {
			return "new.jsp";
		}else {
			this.songService.createSong(song);
		}
		return "redirect:/dashboard";
	}
	
	@RequestMapping("/songs/{id}")
	public String show(@PathVariable("id") Long id, Model model) {
		Song song = songService.findSongById(id);
		model.addAttribute("song", song);
		return "show.jsp";
	}
	
	@RequestMapping("/search/topTen")
	public String getTopTen(Model model) {
		List<Song> songs = songService.TopTenSong();
		model.addAttribute("songs", songs);
		return "topten.jsp";
	}
	
	@RequestMapping("/search")
	public String search(@RequestParam(value="artist") String artist, Model model) {
		System.out.println("tesing: " + artist);
		List<Song> songs = songService.findSongByArtist(artist);
		model.addAttribute("songs", songs);
		return "search.jsp";
	}
	
	
	
	@RequestMapping(value="/songs/{id}", method=RequestMethod.DELETE)
	public String deleteSong(@PathVariable("id") Long id) {
		songService.deleteSong(id);
		return "redirect:/dashboard";
	}
}

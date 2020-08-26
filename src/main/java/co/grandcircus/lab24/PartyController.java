package co.grandcircus.lab24;
import java.time.LocalDate;
import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import co.grandcircus.lab24.dao.PartyRepo;
import co.grandcircus.lab24.dao.RsvpRepo;
import co.grandcircus.lab24.entity.Party;
import co.grandcircus.lab24.entity.PartyOption;
import co.grandcircus.lab24.entity.Rsvp;
import co.grandcircus.lab24.dao.PartyOptionRepo;

@Controller
public class PartyController {
	
	// Autowired tells spring to fill in the dao variable automatically
	// when the application starts.
//	@Autowired
//	private partyRepoDao dao;
	@Autowired
	private PartyRepo dao;
	@Autowired
	private PartyOptionRepo dao2;
	@Autowired
	private RsvpRepo dao3;
	
	@RequestMapping("/")
	public String index() {
		return "redirect:/homepage";
	}

	@RequestMapping("/homepage")
	public String list(
			Model model) {
			List<Party> parties = dao.findAll();
			model.addAttribute("party", parties);
			return "homepage";
			}

	@RequestMapping("/vote-page")
	public String votes(Model model) {
		List<PartyOption> partyOption = dao2.findAll();
		model.addAttribute("partyOption", partyOption);
		return "vote-page";
	}

	@RequestMapping("/review-page")
	public String review(Model model) {
		List<PartyOption> partyReview = dao2.findAllWithVotes();
		model.addAttribute("partyReview", partyReview);
		return "review-page";

}
	@RequestMapping("/addVotes")
	public String vote(@RequestParam("id") Long id, Model model) {
		PartyOption partyOption = dao2.findById(id).get();
		partyOption.setVotes(partyOption.getVotes()+1);
		dao2.save(partyOption);	
		return "redirect:/vote-page";
	}
	
	@PostMapping("/vote-page/add")
	public String submitAdd(@RequestParam("name") String name, @RequestParam("description") String description) {
		PartyOption newParty = new PartyOption();
		newParty.setName(name);
		newParty.setDescription(description);
		newParty.setVotes(0);
		dao2.save(newParty);
		return "redirect:/vote-page";
	}
	@PostMapping("/rsvp-add")
	public String rsvp(@RequestParam("name") String name, @RequestParam("comment")String comment,@RequestParam("party") Party party, Model model) {
		Rsvp rsvps = new Rsvp();
		Party thisParty = party;
		rsvps.setAttendee(name);
		rsvps.setComment(comment);
		rsvps.setParty(thisParty);
		dao3.save(rsvps);
		model.addAttribute("partyName",thisParty.getName());
		model.addAttribute("partyDate", thisParty.getDate());
		List<Rsvp> attendees = dao3.findRsvps(thisParty.getId());
		model.addAttribute("attendees",attendees);
		return "party-details";
	}
	
	@RequestMapping("/see-details")
	public String details(@RequestParam("id") Long id, Model model) {
		Party thisParty = dao.findById(id).get();
		model.addAttribute("partyName",thisParty.getName());
		model.addAttribute("partyDate", thisParty.getDate());
		List<Rsvp> attendees = dao3.findRsvps(thisParty.getId());
		model.addAttribute("attendees",attendees);
		return "party-details";
	}
	@PostMapping("/party-add")
	public String addParty(Party party,Model model) {

		dao.save(party);	
		return "redirect:/homepage";
	}
	
}

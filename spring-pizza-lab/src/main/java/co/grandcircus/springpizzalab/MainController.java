package co.grandcircus.springpizzalab;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainController {
	
	@RequestMapping("/")
	public static String showIndex() {
		return "index";
	}
	
	@RequestMapping("/specialty-pizza")
	public static String showSpecialtyPizza(@RequestParam String type, @RequestParam double price, Model model) {
		model.addAttribute("type", type);
		model.addAttribute("price", price);
		
		return "displayspecialtypizza";
	}
	
	@RequestMapping("/review")
	public static String showReview(){
		return "displayreview";
	}
	
	@RequestMapping("/submit-review")
	public static String showReviewConfirmation(Model model, @RequestParam String name,
												@RequestParam String rating,
												@RequestParam String body){
		model.addAttribute("name", name);
		model.addAttribute("rating", rating);
		model.addAttribute("body", body);
		
		return "displayreviewconfirmation";
	}
	
	@RequestMapping("/custom-pie-builder")
	public static String showCustomPie(){
		return "displaycustompiebuilder";
	}
	
	@RequestMapping("/submit-custom-pie-builder")
	public static String submitCustomPie(Model model, @RequestParam String size, 
													  @RequestParam String toppingsCount,
													  @RequestParam(required = false) String gf,
													  @RequestParam String instructions){
		
		if(gf == null) {
			gf = "false";
		}
		
		if(instructions.equals("")) {
			instructions = "none";
		}
		
		model.addAttribute("size", size);
		model.addAttribute("toppingsCount", toppingsCount);
		model.addAttribute("gf", gf);
		model.addAttribute("instructions", instructions);
		
		int numToppings = Integer.valueOf(toppingsCount);
		
		double price = 0.0;
		if(size.equals("small")) {
			price += 7;
			price += 0.5 * numToppings;
		}
		else if(size.equals("medium")) {
			price += 10;
			price += numToppings;
		}
		else {
			price += 12;
			price += 1.25 * numToppings;
		}
		
		if(gf.equals("true")) {
			price += 2;
		}
		
		model.addAttribute("price", price);

		return "displaycustompieresult";
	}
	
}


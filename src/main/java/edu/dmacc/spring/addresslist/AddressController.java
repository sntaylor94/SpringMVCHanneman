package edu.dmacc.spring.addresslist;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AddressController {
	
	@Autowired AddressDao dao;

	private static final String[] states = {"California", "Alabama", "Arkansas", "Arizona", "Alaska", "Colorado", 
		"Connecticut", "Delaware", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky",
		"Louisiana", "Maine", "Maryland", "Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", "Nebraska",
		"Nevada", "New Hampshire", "New Jersey", "New Mexico", "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma", 
		"Oregon", "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia", 
		"Washington", "West Virginia", "Wisconsin", "Wyoming" };
	
	@RequestMapping(value = "/form")
	public ModelAndView address() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("addressForm");
		modelAndView.addObject("address", new Address());
		modelAndView.addObject("states", states);
		return modelAndView;
	}
	
	@RequestMapping(value = "/result")
	public ModelAndView processAddress(Address address) {
		ModelAndView modelAndView = new ModelAndView();
		dao.insertAddress(address);
		modelAndView.setViewName("addressResult");
		modelAndView.addObject("a", address);
		return modelAndView;
	}
	
	@RequestMapping(value = "/viewAll")
	public ModelAndView viewAll() {
		ModelAndView modelAndView = new ModelAndView();
		List<Address> allAddresses = dao.getAllAddresses();
		modelAndView.setViewName("viewAllAddresses");
		modelAndView.addObject("all", allAddresses);
		return modelAndView;
	}
	
	@Bean
	public AddressDao dao() {
		AddressDao bean  = new AddressDao();
		return bean;
	}
}

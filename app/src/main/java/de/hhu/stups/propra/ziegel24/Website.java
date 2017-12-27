package de.hhu.stups.propra.ziegel24;

import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/ziegel")
public class Website {

	@Autowired
	private ProductRepository products;
	@Autowired
	private CustomerRepository customers;

	@GetMapping("/katalog")
	public @ResponseBody String listProducts() {
		return String.join("<hr>", show(products.findAll()));
	}

	@GetMapping("/kunden")
	public @ResponseBody String listCustomers() {
		return String.join("<hr>", show(customers.findAll()));
	}

	public List<String> show(Iterable<? extends Object> dbobjects) {
		return StreamSupport.stream(dbobjects.spliterator(), false)
				.map(it -> it.toString())
				.collect(Collectors.toList());
	}

}

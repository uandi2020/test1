package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.entity.testEntity;
import com.example.demo.service.testService;

@Controller
public class testController {

	@Autowired
	testService tService;

	@GetMapping
	public String list(Model model) {

		List<testEntity> list = tService.getList();
		model.addAttribute("list", list);
		return "/list";
	}

	@GetMapping("/write.do")
	public String write() {
		return "write";
	}


	@PostMapping("/write.do")
	public String save(testEntity tEntity) {
		tService.save(tEntity);
		return "/list";
	}

	@GetMapping("/detail/{idx}")
	public String detail(@PathVariable long idx, Model model) {
		testEntity tEntity = tService.getById(idx);
		model.addAttribute("list", tEntity);
		return "/detail";
	}


	@RequestMapping("/update")
	public String update(testEntity tEntity) {
		tService.save(tEntity);
		return "redirect:/";
	}

	@RequestMapping("/delete/{idx}")
	public String delete(@PathVariable Long idx) {
		tService.deleteById(idx);
		return "redirect:/";
	}


}

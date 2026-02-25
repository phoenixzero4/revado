package com.williampaul.revado.todo;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;

import org.springframework.stereotype.Service;

import jakarta.validation.Valid;

@Service
public class TodoService {
	
	private static final List<Todo> todos = new ArrayList<>();
	
	static {
		todos.add(new Todo(1, "phoenix", "Learn Angular", LocalDate.now().plusYears(1), false));
		todos.add(new Todo(2, "phoenix", "Learn Jenkins", LocalDate.now().plusYears(2), false));
		todos.add(new Todo(3, "phoenix", "Learn AWS", LocalDate.now().plusMonths(1), false));
		todos.add(new Todo(4, "phoenix", "Learn Kafka", LocalDate.now().plusWeeks(1), true));
	}
	
	private static int todosCount = 4;
	

	
	// XXX added
	public List<Todo> listAll(){
		return todos;
	}
	
	public List<Todo> findByUsername(String username){
		Predicate<? super Todo> predicate = 
				todo -> todo.getUsername().equalsIgnoreCase(username);
		return todos.stream().filter(predicate).toList();
	}
	
	public void addTodo(String username, String description, LocalDate targetDate, boolean done) {
		Todo todo = new Todo(++todosCount,username,description,targetDate,done);
		todos.add(todo);
	}
	
	public void deleteById(int id) {
		//todo.getId() == id
		// todo -> todo.getId() == id
		Predicate<? super Todo> predicate = todo -> todo.getId() == id;
		todos.removeIf(predicate);
	}

	public Todo findById(int id) {
		Predicate<? super Todo> predicate = todo -> todo.getId() == id;
		Todo todo = todos.stream().filter(predicate).findFirst().get();
		return todo;
	}

	public void updateTodo(@Valid Todo todo) {
		deleteById(todo.getId());
		todos.add(todo);
	}
}

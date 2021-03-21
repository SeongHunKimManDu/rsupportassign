package com.assignment.persistence;

import org.springframework.data.repository.CrudRepository;

import com.assignment.domain.Board;

public interface BoardRepository extends CrudRepository<Board, Long> {

}

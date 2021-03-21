package com.assignment.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.assignment.domain.Board;
import com.assignment.persistence.BoardRepository;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardRepository boardRepo;


	public List<Board> getBoardList(Board board){
		return (List<Board>) boardRepo.findAll();
	}

	public void insertBoard(Board board) {
		boardRepo.save(board);
	}
	public Board getBoard(Board board) {
		return boardRepo.findById(board.getSeq()).get();
	}
	public void updateBoard(Board board) {
		Board findBoard = boardRepo.findById(board.getSeq()).get();
		
		findBoard.setTitle(board.getTitle());
		findBoard.setContent(board.getContent());
		findBoard.setUpdateDate(new Date());
		boardRepo.save(findBoard);
	}
	public void deleteBoard(Board board) {
		boardRepo.deleteById(board.getSeq());
	}
}

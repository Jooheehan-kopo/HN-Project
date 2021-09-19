package kr.ac.kopo.mbti.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.mbti.dao.MbtiDAO;


@Service
public class MbtiServiceImpl implements MbtiService {

	@Autowired
	private MbtiDAO mbtiDAO;
}

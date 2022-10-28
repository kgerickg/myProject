package com.prod.model;

import java.util.List;

public interface ProdDAO_interface {

	public void insert(ProdVO prodVO);

	public void update(ProdVO prodVO);

	public ProdVO findByPrimaryKey(Integer prodId);

	public List<ProdVO> getAll();
}

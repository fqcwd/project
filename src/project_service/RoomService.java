package project_service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;
import project_dao.RoomDao;
import project_entity.Room;
import project_entity.RoomPageBean;

@Transactional
public class RoomService {
	
	private RoomDao roomDao;
	public void setRoomDao(RoomDao roomDao) {
		this.roomDao = roomDao;
	}
	
	//添加房间
	public boolean RoomAdd(String name,String roomId,String pNum,String type,String area,String money,String bNum)
	{
		Integer id = Integer.parseInt(roomId);
		Integer pnum = Integer.parseInt(pNum);
		Double Area = Double.parseDouble(area);
		Double price = Double.parseDouble(money);
		Integer bnum = Integer.parseInt(bNum);
		
		return roomDao.Add(name, id, pnum, type, Area, price, bnum);
	}
	
	//修改房间信息
	public void RoomUpdate(String roomId,String name,String pNum,String type, String status,String area,String money,String bNum)
	{
		Integer id = Integer.parseInt(roomId);
		Integer pnum = Integer.parseInt(pNum);
		Integer Status = Integer.parseInt(status);
		Double Area = Double.parseDouble(area);
		Double price = Double.parseDouble(money);
		Integer bnum = Integer.parseInt(bNum); 
		
		roomDao.Update(id, name, pnum, type,Status, Area, price, bnum);
	}
	
	//删除房间
	public void RoomDelete(String roomId)
	{
		Integer id = Integer.parseInt(roomId);
		
		roomDao.Delete(id);
	}
	
	//查询所有房间
	public List<Room> SelectAll()
	{
		return roomDao.selectAll();
	}

	//分页查询
	//封装分页数据到pagebean对象里面
	public RoomPageBean listpage(Integer currentPage) {
		//创建PageBean对象
		RoomPageBean pageBean = new RoomPageBean();
		//当前页
		pageBean.setCurrentPage(currentPage);
		//总记录数
		int totalCount = roomDao.findCount();
		pageBean.setTotalCount(totalCount);

		//每页显示记录数
		int pageSize = 10;

		//总页数
		//总记录数 除以 每页显示记录数
		//能够整除
		int totalPage = 0;
		if(totalCount%pageSize==0) {//整除
			totalPage = totalCount/pageSize;
		} else {
			totalPage = totalCount/pageSize+1;
		}
		pageBean.setTotalPage(totalPage);

		//开始位置
		int begin = (currentPage-1)*pageSize;
		
		//每页记录数
		if (currentPage == totalPage)
		{
			pageBean.setPageSize(totalCount-begin);
		}else
		{
			pageBean.setPageSize(pageSize);
		}

		//每页记录的list集合
		List<Room> list = roomDao.findPage(begin,pageSize);
		pageBean.setList(list);		

		return pageBean;
	}

}

package project_service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import project_dao.LiveDao;
import project_entity.Live;
import project_entity.LivePageBean;
import project_entity.Pay;
import project_entity.PayPageBean;

@Transactional
public class LiveService {
	
	private LiveDao liveDao;
	public void setliveDao(LiveDao liveDao) {
		this.liveDao = liveDao;
	}
	
	//添加入住信息
	public String LiveAdd(String name,String rid,String idCard,String tel,String sDate,String eDate,String sum)
	{
		Double sumMoney = Double.parseDouble(sum);
		Integer roomId = Integer.parseInt(rid);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date SDate = null;
		Date EDate = null;
		
		try {
			SDate = sdf.parse(sDate);
			EDate = sdf.parse(eDate);
		} catch (ParseException e) {
			System.out.println("日期格式错误");
		}
		
		return liveDao.Add(name,roomId, idCard, tel, SDate, EDate, sumMoney);
		
	}


	//修改入住信息
	public void LiveUpdate(String rid,String idCard,String tel,String eDate,String sum)
	{
		Integer roomId = Integer.parseInt(rid);
		Double price = Double.parseDouble(sum);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd");
		Date EDate = null;
		
		try {
			EDate = sdf.parse(eDate);
		} catch (ParseException e) {
			System.out.println("日期格式错误");
		}
		
		liveDao.Update(roomId, idCard, tel, EDate, price);
		
	}
	
	//结束入住
	public void LiveDelete(String lid)
	{
		Integer id = Integer.parseInt(lid);
		
		liveDao.Delete(id);
	}
	
	//根据房间号退房
	public String Cancel(String rid)
	{
		Integer id = Integer.parseInt(rid);
		
		return liveDao.Cancel(id);
	}
	
	//查询所有
	public List<Live> SelectAll()
	{
		return liveDao.selectAll();
	}

	//分页查询入住信息
	//封装分页数据到pagebean对象里面
	public LivePageBean listpage(Integer currentPage) {
		//创建PageBean对象
		LivePageBean pageBean = new LivePageBean();
		//当前页
		pageBean.setCurrentPage(currentPage);
		//总记录数
		int totalCount = liveDao.findCount();
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
		List<Live> list = liveDao.findPage(begin,pageSize);
		pageBean.setList(list);		

		return pageBean;
	}
	
	//分页查询消费记录
	//封装分页数据到pagebean对象里面
	public PayPageBean listpage2(Integer currentPage) {
		//创建PageBean对象
		PayPageBean pageBean = new PayPageBean();
		//当前页
		pageBean.setCurrentPage(currentPage);
		//总记录数
		int totalCount =liveDao.findCount2();
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
		List<Pay> list = liveDao.findPage2(begin,pageSize);
		pageBean.setList(list);		

		return pageBean;
	}
}

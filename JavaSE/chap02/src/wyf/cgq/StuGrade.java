package wyf.cgq;
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.event.*;
import javax.swing.table.*;
import java.util.*;
public class StuGrade extends JPanel
{
	private String host;
	//声明标志学生学号的变量
	private String stu_id;
	//创建提示标签
	private JLabel jl1=new JLabel("已修学分：");
	//创建用于显示学分的标签
	private JLabel jl2=new JLabel("");
	//创建表格控件的引用
	private JTable jt;
	private JScrollPane jsp;
	//创建用于存放表格数据的Vector
	private Vector v_head=new Vector();
	private Vector v_data=new Vector();
	//创建GetScore对象
	private GetScore gs;
	//构造器
	public StuGrade(String stu_id,String host)
	{
		this.host=host;
		this.stu_id=stu_id;
		gs=new GetScore(host);
		//初始化数据
		this.initialData();
		//初始化界面
		this.initialFrame();
	}
	//初始化数据的方法
	public void initialData()
	{
		//初始化表头
		v_head.add("课程名");
		v_head.add("分数");
		v_head.add("学分");
		//调用gs的方法获得所有成绩信息
		v_data=gs.getAllScore(stu_id);
		//调用gs的方法获得已修学分
		String xuefen=gs.getXueFen(stu_id)+"";
		jl2.setText(xuefen);
	}
	//初始化界面的方法
	public void initialFrame()
	{   //创建表格并添加到容器
		this.setLayout(null);
		DefaultTableModel dtm=new DefaultTableModel(v_data,v_head);
		jt=new JTable(dtm);
		jsp=new JScrollPane(jt);
		jsp.setBounds(60,30,500,500);
		this.add(jsp);
		jl1.setBounds(60,540,130,30);
		this.add(jl1);
		jl2.setBounds(200,540,130,30);
		this.add(jl2);
	}
}
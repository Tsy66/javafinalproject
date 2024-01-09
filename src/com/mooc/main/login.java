package com.mooc.main;

import java.awt.Color;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JLabel;
import javax.swing.JOptionPane;

import java.awt.Font;
import javax.swing.JTextField;
import javax.swing.JPasswordField;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import com.mooc.mysqlconnect.*;
import com.mysql.cj.jdbc.Driver;
import com.mysql.cj.jdbc.JdbcConnection;

public class login extends JFrame 
{

	private JPanel contentPane;
	private JTextField textField;
	private JPasswordField passwordField;
	
	
	Connection conn;
	Statement stam;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) 
	{
		EventQueue.invokeLater(new Runnable() 
		{
			public void run() 
			{
				try 
				{
					login frame = new login();
					frame.setVisible(true);
				} 
				catch (Exception e) 
				{
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public login() 
	{
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		
		setSize(1000, 700);//設定視窗大小
		setLocationRelativeTo(null);//設定視窗位置置中
		setResizable(false);  //設定窗體大小不可以改變
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));

		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lblNewLabel = new JLabel("密碼");
		lblNewLabel.setFont(new Font("宋体", Font.BOLD, 32));
		lblNewLabel.setBounds(336, 331, 66, 67);
		contentPane.add(lblNewLabel);
		
		JLabel lblNewLabel_1 = new JLabel("帳號");
		lblNewLabel_1.setFont(new Font("宋体", Font.BOLD, 32));
		lblNewLabel_1.setBounds(336, 203, 66, 67);
		contentPane.add(lblNewLabel_1);
		
		textField = new JTextField();
		textField.setFont(new Font("宋体", Font.PLAIN, 30));
		textField.setBounds(444, 220, 231, 34);
		contentPane.add(textField);
		textField.setColumns(10);
		
		passwordField = new JPasswordField();
		passwordField.setFont(new Font("宋体", Font.PLAIN, 30));
		passwordField.setBounds(444, 348, 231, 34);
		contentPane.add(passwordField);
		
		JButton btnNewButton = new JButton("登入");
		btnNewButton.addActionListener(new ActionListener() 
		{
			public void actionPerformed(ActionEvent e) 
			{
				if(e.getSource()==btnNewButton) 
				{	 
					try 
					{
						conn=mysqlconnect.getConnection();//獲取資料庫連線
						stam= (Statement) conn.createStatement();  //建立sql語句執行物件
						//編寫sql語句
						String sql="select * from login where account='"+textField.getText()+"'  and mypassword='"+passwordField.getText()+"'     ";
					    //執行sql語句
						ResultSet rs=stam.executeQuery(sql);
						String str1=textField.getText();
						char ch1=str1.charAt(0);
						Boolean boolean1=rs.next();
						if(boolean1&&ch1=='t') 
						{
							dispose();//關閉當前視窗		
							new teacher();
						}	
						else if(boolean1&&ch1=='s') 
						{
							dispose();//關閉當前視窗		
							new student();
						}
						else 
						{
							JOptionPane.showMessageDialog(null, "帳號或密碼輸入錯誤");
						}
					}
					catch (Exception e0) 
					{
						e0.printStackTrace();
					}
					finally 
					{
						mysqlconnect.result(conn, stam);
						
					}
				}
			}
		});
		btnNewButton.setFont(new Font("宋体", Font.BOLD, 32));
		btnNewButton.setBounds(470, 423, 123, 57);
		contentPane.add(btnNewButton);
		

	}
}

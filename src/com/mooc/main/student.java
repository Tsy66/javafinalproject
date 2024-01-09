package com.mooc.main;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JLabel;
import javax.swing.JButton;
import javax.swing.UIManager;

public class student extends JFrame {

	private JPanel contentPane;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					student frame = new student();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public student() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		
		setSize(1000, 700);//設定視窗大小
		setLocationRelativeTo(null);//設定視窗位置置中
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));

		setContentPane(contentPane);
		setVisible(true);
		contentPane.setLayout(null);
		
		JLabel lblNewLabel = new JLabel("student");
		lblNewLabel.setBounds(522, 14, 32, 15);
		contentPane.add(lblNewLabel);
	}

}

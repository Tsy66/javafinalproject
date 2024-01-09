package com.mooc.main;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JLabel;

public class teacher extends JFrame {

	private JPanel contentPane;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					teacher frame = new teacher();
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
	public teacher() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		
		setSize(1000, 700);//設定視窗大小
		setLocationRelativeTo(null);//設定視窗位置置中
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));

		setContentPane(contentPane);
		setVisible(true);
		JLabel lblNewLabel = new JLabel("teacher");
		contentPane.add(lblNewLabel);
	}

}

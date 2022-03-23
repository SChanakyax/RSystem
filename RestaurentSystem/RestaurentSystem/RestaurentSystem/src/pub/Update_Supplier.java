package pub;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JSeparator;
import javax.swing.JLabel;
import javax.swing.JOptionPane;

import java.awt.Font;
import javax.swing.JButton;
import javax.swing.JTextField;
import javax.swing.table.DefaultTableModel;

import net.proteanit.sql.DbUtils;

import java.awt.Color;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.awt.event.ActionEvent;
import javax.swing.JScrollPane;
import javax.swing.JTable;

public class Update_Supplier {

	private JFrame frame;
	private JTextField textField;
	private JTextField textField_1;
	private JTextField textField_2;
	private JTextField textField_3;
	private JTextField textField_4;
	private JTable table;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					Update_Supplier window = new Update_Supplier();
					window.frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the application.
	 */
	public Update_Supplier() {
		initialize();
	}

	/**
	 * Initialize the contents of the frame.
	 */
	private void initialize() {
		frame = new JFrame();
		frame.addWindowListener(new WindowAdapter() {
			@Override
			public void windowActivated(WindowEvent arg0) {
				
				try {
					//Connection con = DBConnect.connect();
					
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurantsystem1?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","");
                    String query = "Select * from pub_supplier";

                    PreparedStatement pst=con.prepareStatement(query);
					ResultSet rs=pst.executeQuery();
					table.setModel(DbUtils.resultSetToTableModel(rs));
					
				}
				catch(Exception e) {
					e.printStackTrace();
				}
			}
		});
		frame.setBounds(350, 150, 1250, 750);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.getContentPane().setLayout(null);
		
		JSeparator separator = new JSeparator();
		separator.setBounds(0, 55, 1234, 9);
		frame.getContentPane().add(separator);
		
		JLabel label = new JLabel("GRAND MANSION Restaurant");
		label.setFont(new Font("Tahoma", Font.BOLD, 25));
		label.setBounds(424, 0, 392, 44);
		frame.getContentPane().add(label);
		
		JButton button = new JButton("Back");
		button.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				Supplier supkj = new Supplier();
				Supplier.main(null);
				frame.setVisible(false);
			}
		});
		button.setFont(new Font("Tahoma", Font.BOLD, 12));
		button.setBounds(45, 638, 89, 44);
		frame.getContentPane().add(button);
		
		JLabel label_1 = new JLabel("ID");
		label_1.setFont(new Font("Tahoma", Font.BOLD, 18));
		label_1.setBounds(62, 426, 41, 24);
		frame.getContentPane().add(label_1);
		
		JLabel label_2 = new JLabel("Name");
		label_2.setFont(new Font("Tahoma", Font.BOLD, 18));
		label_2.setBounds(62, 495, 65, 24);
		frame.getContentPane().add(label_2);
		
		JLabel label_3 = new JLabel("Company");
		label_3.setFont(new Font("Tahoma", Font.BOLD, 18));
		label_3.setBounds(62, 568, 169, 24);
		frame.getContentPane().add(label_3);
		
		JLabel label_4 = new JLabel("Brand Name");
		label_4.setFont(new Font("Tahoma", Font.BOLD, 18));
		label_4.setBounds(752, 426, 126, 24);
		frame.getContentPane().add(label_4);
		
		JLabel label_5 = new JLabel("Phone Number");
		label_5.setFont(new Font("Tahoma", Font.BOLD, 18));
		label_5.setBounds(752, 507, 169, 24);
		frame.getContentPane().add(label_5);
		
		textField = new JTextField();
		textField.setColumns(10);
		textField.setBounds(262, 420, 250, 44);
		frame.getContentPane().add(textField);
		
		textField_1 = new JTextField();
		textField_1.setColumns(10);
		textField_1.setBounds(262, 489, 250, 44);
		frame.getContentPane().add(textField_1);
		
		textField_2 = new JTextField();
		textField_2.setColumns(10);
		textField_2.setBounds(262, 562, 250, 44);
		frame.getContentPane().add(textField_2);
		
		textField_3 = new JTextField();
		textField_3.setColumns(10);
		textField_3.setBounds(937, 420, 250, 44);
		frame.getContentPane().add(textField_3);
		
		textField_4 = new JTextField();
		textField_4.setColumns(10);
		textField_4.setBounds(937, 501, 250, 44);
		frame.getContentPane().add(textField_4);
		
		JButton btnUpdate = new JButton("UPDATE");
		btnUpdate.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				
				
				if(textField.getText().equals("")||textField_1.getText().equals("")||textField_2.getText().equals("")||textField_3.getText().equals("") ||textField_4.getText().equals("") ||textField.getText().equals("")) {
					
					JOptionPane.showMessageDialog(null, "Please fill the form");
				}else {
				
			    
			    try {
                    Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurantsystem1?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","");

                    String query = "Update pub_supplier set Name='"+textField_1.getText()+"',Company='"+textField_2.getText()+"',Brand='"+textField_3.getText()+"',Phone='"+textField_4.getText()+"'where Supplier_ID='"+textField.getText()+"'";

                    Statement sta = connection.createStatement();
                    JOptionPane.showMessageDialog(null, "Data Updated");
                    int x = sta.executeUpdate(query);
                   
                    connection.close();
                } catch (Exception exception) {
                    exception.printStackTrace();
                }
				}
				
			}
		});
		btnUpdate.setFont(new Font("Tahoma", Font.BOLD, 13));
		btnUpdate.setBounds(888, 615, 104, 52);
		frame.getContentPane().add(btnUpdate);
		
		JButton button_1 = new JButton("Delete");
		button_1.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				
				try {
					Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurantsystem1?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","");
					String query="Delete from pub_supplier where Supplier_ID='"+textField.getText()+"'";
					PreparedStatement pst=connection.prepareStatement(query);
					pst.execute();
					
					JOptionPane.showMessageDialog(null, "Data Deleted");
					pst.close();
					
					}
					catch(Exception e) {
						e.printStackTrace();
						
					}
				
			}
		});
		button_1.setFont(new Font("Tahoma", Font.BOLD, 12));
		button_1.setBounds(1031, 615, 104, 52);
		frame.getContentPane().add(button_1);
		
		JScrollPane scrollPane = new JScrollPane();
		scrollPane.setBounds(45, 62, 1142, 197);
		frame.getContentPane().add(scrollPane);
		
		table = new JTable();
		scrollPane.setColumnHeaderView(table);
		
		//Table Selection
		table.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent arg0) {
				int selectedRow=table.getSelectedRow();		
				textField.setText(table.getValueAt(selectedRow, 0).toString());
				textField_1.setText(table.getValueAt(selectedRow, 1).toString());
				textField_3.setText(table.getValueAt(selectedRow, 2).toString());
				textField_2.setText(table.getValueAt(selectedRow, 3).toString());
				textField_4.setText(table.getValueAt(selectedRow, 4).toString());
				
			//    String comboLevel = table.getValueAt(selectedRow, 3).toString();
				
			    
		/*	    for(int i=0; i<comboBox.getItemCount();i++) {
					if(comboBox.getItemAt(i).toString().equalsIgnoreCase(comboLevel)) {
						comboBox.setSelectedIndex(i);
					}
				}
			*/
			}
		});
		
		
		table.setModel(new DefaultTableModel(
				new Object[][] {
				},
				new String[] {
					" ", " ", " ", " ", " "
				}
			) {
				Class[] columnTypes = new Class[] {
					Object.class, Object.class, Object.class, Object.class, Integer.class
				};
				public Class getColumnClass(int columnIndex) {
					return columnTypes[columnIndex];
				}
				boolean[] columnEditables = new boolean[] {
					 false, false, false, false, false
				};
				public boolean isCellEditable(int row, int column) {
					return columnEditables[column];
				}
			});
		scrollPane.setViewportView(table);

		
	}
}

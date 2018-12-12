/**
 * 
 * $Header: /repository/CVSLM/MPCJ/source/org/lxm/soduko/Solver.java,v 1.3 2014/09/16 18:56:09 g137997 Exp $
 * 
 * Solver
 * Created on Feb 13, 2006
 *
 * © Lockheed Martin Corporation, (2006). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package org.lxm.soduko;

import java.awt.Color;
import java.awt.GridLayout;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.swing.JFrame;
import javax.swing.JTextField;

public class Solver extends JFrame
{
	private static List DIGITS = Arrays.asList(
		new String[] { "1","2","3","4","5","6","7","8","9" }
	);
	
	private static final Color[] COLORS = {
		Color.CYAN,Color.WHITE
	};
	
	private Cell[][] cells = new Cell[9][9];
	private Row[] rows = new Row[9];
	private Column[] cols = new Column[9];
	private Grid[] grids = new Grid[9];
	
	public Solver()
	{
		setLayout(new GridLayout(9,9));
		for(int r = 0;r < 9;r++)for(int c = 0;c < 9;c++) {
			add(this.cells[r][c] = new Cell());
			cells[r][c].setBackground(COLORS[((r/3)+(c/3))%2]);
		}
		
		for(int r = 0;r < 9;r++)this.rows[r] = new Row(cells,r);
		for(int c = 0;c < 9;c++)this.cols[c] = new Column(cells,c);
		for(int r = 0;r < 3;r++)for(int c = 0;c < 3;c++)this.grids[(r*3)+c] = new Grid(cells,r,c);
		
		pack();
		setLocationRelativeTo(null);
		setVisible(true);
		
		addWindowListener(
			new WindowAdapter() {
				public void windowClosing(WindowEvent e) {
					System.exit(0);
				}
			}
		);
	}
	
	
	public static void main(String[] args) {
		new Solver();
	}
	
	public static class Cell extends JTextField
	{
		private int value;
		private Set<CellListener> listeners = new HashSet();
		private Set valid = new HashSet();
		
		public Cell()
		{
			super(1);
			setHorizontalAlignment(JTextField.CENTER);
		}

		public int getValue() {
			return this.value;
		}

		public void setValue(int aValue) {
			this.value = aValue;
		}
		
		public Cell addCellListener(CellListener cl) {
			listeners.add(cl);
			return this;
		}
		
		private void refreshValids() {
			valid.addAll(DIGITS);
			for(Iterator<CellListener> it = listeners.iterator();it.hasNext();) {
				valid.removeAll(it.next().getValues());
			}
		}
	}
	
	public static class Row extends CellListener
	{
		private Cell[] cells = new Cell[9];
		
		public Row(Cell[][] puzzle,int rowNum)
		{
			for(int c = 0;c < 9;c++) {
				this.cells[c] = puzzle[rowNum][c].addCellListener(this);
			}
		}

		public void cellValueChanged(Cell aModified) {
		}
	}

	public static class Column extends CellListener
	{
		private Cell[] cells = new Cell[9];
		
		public Column(Cell[][] puzzle,int colNum)
		{
			for(int r = 0;r < 9;r++) {
				this.cells[r] = puzzle[r][colNum].addCellListener(this);
			}
		}

		public void cellValueChanged(Cell aModified) {
		}
	}

	public static class Grid extends CellListener
	{
		public Grid(Cell[][] puzzle,int gr,int gc)
		{
			for(int r = 0;r < 3;r++)for(int c = 0;c < 3;c++) {
				this.cells[(r*3)+c] = puzzle[(gr*3)+r][(gc*3)+c].addCellListener(this); 
			}
		}

		public void cellValueChanged(Cell aModified) {
		}
	}
	
	public static abstract class CellListener 
	{
		protected Cell[] cells = new Cell[9];
		
		public abstract void cellValueChanged(Cell modified);

		public Collection getValues() {
			Set s = new HashSet();
			for(int i = 0;i < cells.length;i++) {
				s.add(cells[i].getText());
			}
			return s;
		}
	}
}


/**
 * 
 * $Log: Solver.java,v $
 * Revision 1.3  2014/09/16 18:56:09  g137997
 * CVS module namespace changed.
 *
 * Revision 1.2  2007/08/16 17:40:30  g137997
 * Changes to reflect re-organized utilities.
 *
 * Revision 1.1  2006/02/13 22:14:08  g137997
 * Re-packaged most stuff.
 * Added SODOKU solver.
 *
 * 
 */
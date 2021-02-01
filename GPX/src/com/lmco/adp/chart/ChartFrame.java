/**
 * 
 * ChartFrame
 * Created on Jul 22, 2020
 *
 * © Lockheed Martin Corporation, (2020). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package com.lmco.adp.chart;

import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

import org.jfree.chart.JFreeChart;
import org.jfree.data.xy.XYSeries;

import com.lmco.adp.utility.StringUtil;
import com.lmco.adp.utility.ui.MemoryFramePrefs;

/**
 * @author Lawrence Morrissey (lmorr)
 * @version $Revision$
 */
public class ChartFrame<T extends ChartComponent> extends MemoryFramePrefs {
	private T mChart;

	public ChartFrame(T chart) 
	{
		super(chart.getTitle(),ChartFrame.class,StringUtil.toAlphaNumericOnlyString(chart.getTitle()));
		add(this.mChart = chart);
		if(!isBoundsLoaded()){
			pack();
			setLocationRelativeTo(null);
		}
		setDefaultCloseOperation(HIDE_ON_CLOSE);
		
		mChart.addMouseListener(
			new MouseAdapter() {
				public void mouseClicked(MouseEvent e) {
					if(e.getClickCount()==2) {
						pack();
						mChart.repaint();
					}
				}
			}
		);
	}
	
	public void empty() { this.mChart.empty(); }
	public void setSeries(XYSeries...aSeries) { this.mChart.setSeries(aSeries); }
	public void addSeries(XYSeries aSeries) { this.mChart.addSeries(aSeries); }
	//public XYSeries getSeries(String key) { return this.mChart.getSeries(key); }

	public T getChartComponent() { return mChart; }
	public JFreeChart getChart() { return mChart.getChart(); }
	
}
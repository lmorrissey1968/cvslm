/**
 * 
 * ChartComponent
 * Created on Jul 22, 2020
 *
 * © Lockheed Martin Corporation, (2020). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package com.lmco.adp.chart;

import java.awt.BorderLayout;
import java.awt.Color;
import java.util.stream.Stream;

import javax.swing.JComponent;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartPanel;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.chart.plot.XYPlot;
import org.jfree.chart.renderer.xy.XYLineAndShapeRenderer;
import org.jfree.data.xy.XYSeries;
import org.jfree.data.xy.XYSeriesCollection;

/**
 * @author Lawrence Morrissey (lmorr)
 * @version $Revision$
 */
public class ChartComponentPanel extends JComponent {
	private JFreeChart mChart;
    private XYSeriesCollection mCollection = new XYSeriesCollection();
    private XYLineAndShapeRenderer renderer = new XYLineAndShapeRenderer();
	private ChartPanel panel;
    
	public ChartComponentPanel(String title,String xTitle,String yTitle) {
        setLayout(new BorderLayout(0,0));
        add(
    		this.panel = new ChartPanel(
   				//this.mChart = ChartFactory.createScatterPlot(
		        this.mChart = ChartFactory.createXYLineChart(
		            	title,
		            	xTitle, 
		            	yTitle,
		            	mCollection,
		            	PlotOrientation.VERTICAL,
		            	true,false,true
		        )
		        ,
		        //false,false,false,true,false
		        
				2300,800,
				2300,800,
				2300,800,
				true,true,true,true,true,true,true
    		){{setMouseWheelEnabled(true);}},
    		BorderLayout.CENTER
        );
		
        XYPlot plot = (XYPlot)mChart.getPlot();
        plot.setRenderer(renderer);
        //for (int i = 0; i < 4; i++) {
		//    renderer.setSeriesLinesVisible((i*3)+0,false);
		//    renderer.setSeriesShapesVisible((i*3)+1,false);
		//    renderer.setSeriesShapesVisible((i*3)+2,false);
		//}
        
        mChart.setBackgroundPaint(Color.BLACK);
        mChart.getTitle().setPaint(Color.WHITE);
        mChart.getXYPlot().setBackgroundPaint(Color.BLACK);
        
        mChart.getXYPlot().getDomainAxis().setLabelPaint(Color.WHITE);
        mChart.getXYPlot().getDomainAxis().setTickLabelPaint(Color.WHITE);

        mChart.getXYPlot().getRangeAxis().setLabelPaint(Color.WHITE);
        mChart.getXYPlot().getRangeAxis().setTickLabelPaint(Color.WHITE);
        
		mChart.getLegend().setBackgroundPaint(Color.BLACK);
		mChart.getLegend().setItemPaint(Color.WHITE);
	}
	
	public void addSeries(XYSeries series) { 
		renderer.setSeriesShapesVisible(mCollection.getSeriesCount(),false); 
		mCollection.addSeries(series); 
	}
	
	public void setSeries(XYSeries...series) { 
		empty(); 
		Stream.of(series).forEach(mCollection::addSeries); 
	}
	
	public void empty() { mCollection.removeAllSeries(); }
	public void setTitle(String title) { mChart.setTitle(title); }
	public String getTitle() { return this.mChart.getTitle().getText(); }
}
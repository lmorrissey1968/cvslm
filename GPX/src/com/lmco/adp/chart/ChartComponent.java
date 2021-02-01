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

import java.awt.Color;
import java.awt.Dimension;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.util.stream.Stream;

import javax.swing.JComponent;

import org.jfree.chart.ChartFactory;
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
public class ChartComponent extends JComponent {
	private JFreeChart mChart;
    private XYSeriesCollection mCollection = new XYSeriesCollection();
    private XYLineAndShapeRenderer renderer = new XYLineAndShapeRenderer();
    
	public ChartComponent(String title,String xTitle,String yTitle) {
		setPreferredSize(new Dimension(700,400));
		//this.mChart = ChartFactory.createScatterPlot(
        this.mChart = ChartFactory.createXYLineChart(
        	title,
        	xTitle, 
        	yTitle,
        	mCollection,
        	PlotOrientation.VERTICAL,
        	true,false,true
        );
        
        ((XYPlot)mChart.getPlot()).setRenderer(renderer);
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
	
	public void paint(Graphics g) { mChart.draw((Graphics2D)g, g.getClipBounds()); }
	
	public void setChart(JFreeChart chart) { this.mChart = chart; }
	public JFreeChart getChart() { return mChart; }
	public XYPlot getPlot() { return (XYPlot)mChart.getPlot(); }

	public void addSeries(XYSeries series) { renderer.setSeriesShapesVisible(mCollection.getSeriesCount(),false); mCollection.addSeries(series); }
	public void setSeries(XYSeries...series) { mCollection.removeAllSeries(); Stream.of(series).forEach(mCollection::addSeries); }
	public void empty() { mCollection.removeAllSeries(); }
	public void setTitle(String title) { mChart.setTitle(title); }
	public String getTitle() { return mChart.getTitle().getText(); }
}
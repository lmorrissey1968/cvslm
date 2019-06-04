/*******************************************************************************
 * Copyright (c) 2010 Haifeng Li
 *   
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *  
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *******************************************************************************/

package smile.demo.plot;

import java.awt.Color;
import java.awt.Dimension;
import java.awt.GridLayout;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

import javax.swing.JFrame;
import javax.swing.JPanel;

import smile.plot.Contour;
import smile.plot.Palette;

/**
 *
 * @author Haifeng Li
 */
@SuppressWarnings("serial")
public class ContourDemo extends JPanel {
    public ContourDemo() {
        super(new GridLayout(1,1));
        setBackground(Color.white);

        int n = 41;
        double[] x = new double[n];
        for (int i = 0; i < n; i++)
            x[i] = -2.0 + 0.1 * i;

        int m = 51;
        double[] y = new double[m];
        for (int i = 0; i < m; i++)
            y[i] = -2.0 + 0.1 * i;

        double[][] z = new double[m][n];
        
        System.out.printf("Y/X,%s\n",IntStream.range(0,n).mapToObj(xi->String.format("%.1f",x[xi])).collect(Collectors.joining(",")));
        for (int yi = 0; yi < m; yi++) {
        	System.out.printf("%.1f",y[yi]);
            for (int xi = 0; xi < n; xi++) {
            	System.out.printf(",%s",x[xi] * Math.exp(-x[xi]*x[xi] - y[yi]*y[yi]));
                z[yi][xi] = x[xi] * Math.exp(-x[xi]*x[xi] - y[yi]*y[yi]) * 1E5;
            }
            System.out.println();
        }

        
        //add(Contour.plot(x, y, z, IntStream.range(-10,10).mapToDouble(i->i*0.08).toArray()));
        add(Contour.plot(x, y, z));

		//double[] c = new double[9];
		//for (int i = 0; i < c.length; i++) {
		//    c[i] = -0.4 + 0.1 * i;
		//}
        //add(Contour.plot(x, y, z, c, Palette.jet(c.length)));
    }

    public String toString() { return "Contour"; }

    public static void main(String[] args) {
        JFrame frame = new JFrame("Contour");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(1000,800);
        frame.setLocationRelativeTo(null);
        frame.getContentPane().add(new ContourDemo());
        frame.setVisible(true);
    }
}

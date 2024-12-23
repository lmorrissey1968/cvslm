/**
 * 
 * $Header: /repository/CVSLM/MPCJ/source/org/lxm/util/FlowContainer.java,v 1.2 2008/10/30 13:14:15 g137997 Exp $
 * 
 * FlowContain
 * Created on Mar 7, 2007
 *
 * � Lockheed Martin Corporation, (2007). All rights reserved
 * 
 */

package org.lxm.util;

import java.awt.Component;
import java.awt.FlowLayout;

import javax.swing.JComponent;

/**
 * TODO BRIEF DESCRIPTION OF WHAT THIS CLASS DOES
 * 
 * @author Lawrence Morrissey (g137997)
 * @version $Revision: 1.2 $
 */
public class FlowContainer extends JComponent
{
	public FlowContainer(int alignment,int hGap,int vGap) {
		setLayout(new FlowLayout(alignment,hGap,vGap));
	}
	
	public FlowContainer(int alignment) {
		this(alignment,1,1);
	}
	
	public FlowContainer addComponent(Component c) {
		add(c);
		return this;
	}
}

/**
 * 
 * $Log: FlowContainer.java,v $
 * Revision 1.2  2008/10/30 13:14:15  g137997
 * Minor Changes
 *
 * Revision 1.1  2007/08/16 17:39:40  g137997
 * Re-organized and added utilities.
 *
 * Revision 1.2  2007/03/16 19:37:22  g137997
 * Chaged to extend JComponent.
 *
 * Revision 1.1  2007/03/07 22:36:28  g137997
 * Re-packaged existing classes a bit.
 *
 * Revision 1.1  2007/03/07 22:06:35  g137997
 * Finshed getting logon panel to work.
 *
 * 
 */

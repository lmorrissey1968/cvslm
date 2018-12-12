/**
 * 
 * $Header: /repository/CVSLM/Flagco/source/com/lxm/utilities/db/DataField_IF.java,v 1.3 2007/09/10 19:47:19 g137997 Exp $
 * 
 * DataField_IF
 * Created on Sep 5, 2007
 *
 * © Lockheed Martin Corporation, (2007). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package com.lxm.utilities.db;

import java.awt.Component;

/**
 * TODO BRIEF DESCRIPTION OF WHAT THIS CLASS DOES
 *
 * @author Lawrence Morrissey (g137997)
 * @version $Revision: 1.3 $
 */
public interface DataField_IF
{
	public abstract Component getFieldComponent();
	
	public abstract void setFieldValue(Object value);

	public abstract Object getFieldValue();
	
	public abstract String getFieldName();
	
	public abstract DataRefreshManager getManager();
}

/**
 * 
 * $Log: DataField_IF.java,v $
 * Revision 1.3  2007/09/10 19:47:19  g137997
 * Work in progress.
 *
 * Revision 1.2  2007/09/10 17:31:43  g137997
 * Class uses renamed DataRefreshListener to DataRefreshManager.
 *
 * Revision 1.1  2007/09/06 12:32:25  g137997
 * Initial check-in.
 * Split out to replace DataField.
 *
 * 
 */

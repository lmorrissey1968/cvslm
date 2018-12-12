/**
 * 
 * $Header: /repository/CVSLM/Flagco/source/com/lxm/utilities/ui/Constants.java,v 1.1 2007/09/10 12:02:16 g137997 Exp $
 * 
 * Constants
 * Created on Oct 7, 2004
 *
 * © Lockheed Martin Corporation, (2004). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */
 
package com.lxm.utilities.ui;

import java.io.File;

/**
 * This is a container for commonly used static values.
 * 
 * @author Lawrence Morrissey
 * @version $Revision: 1.1 $
 */
public interface Constants 
{
	public static final File WORKING_DIR = new File("").getAbsoluteFile();
	
	public static final String NEWLINE = System.getProperty( "line.separator" );
	public static final String WHITESPACE = " \t\n\r\f";
	public static final String REG_EXP_WHITESPACE = "["+WHITESPACE+"]+";
	public static final String REG_EXP_DOT = "\\.";
	public static final String REG_EXP_COMMA = ",";
	public static final String REG_EXP_PADDED_COMMA ="[ \t\n\r\f]*,[ \t\n\r\f]*";
	public static final String REG_EXP_PADDED_EQUAL ="[ \t\n\r\f]*=[ \t\n\r\f]*";
	
	public static final Integer COL1 = new Integer(0);
	public static final Integer COL2 = new Integer(1);
	public static final Integer COL3 = new Integer(2);
	
   //Mathematical values...
   public final static double
      earthRadiusMeters               = 6366706.9942,//To match RTV Icon map
    //earthRadiusMeters               = WGS84.arithmeticMeanRadiusMeters,
      gravityMetersPerSecondPerSecond = 9.80665,//From NIST
      piOver2                         = Math.PI / 2.0,
      twoPi                           = Math.PI * 2.0,
      feetPerNauticalMile             = 6076.12,
      feetPerStatuteMile              = 5280.0,
      feetPerMeter                    = 3.2808,
      metersPerNauticalMile           = feetPerNauticalMile / feetPerMeter,
      knotsToMps                      = feetPerNauticalMile / 3600.00 /
                                        feetPerMeter,
      metersPerDegree                 = earthRadiusMeters * Math.toRadians(1),
      celsiusZeroInKelvin             = 273.15,
      waterTriplePointInKelvin        = 273.16,
      celsiusZeroInFahrenheit         = 32.0,
      kelvinPerFahrenheit             = 5.0/9.0;


   /** Constants used for WGS-84 earth model. */
   public interface WGS84
   {
      public final static double
         equatorialRadiusMeters     = 6378137,
         equatorialRadiusMetersSq   = equatorialRadiusMeters*
                                      equatorialRadiusMeters,
         inverseFlattening          = 298.2572235630,
         flattening                 = 1.0 / inverseFlattening,
         polarRadiusMeters          = equatorialRadiusMeters -
                                      equatorialRadiusMeters * flattening,
            //Which works out to ---> 6356752.314245179
         polarRadiusMetersSq        = polarRadiusMeters*
                                      polarRadiusMeters,
         arithmeticMeanRadiusMeters = (2*equatorialRadiusMeters +
                                         polarRadiusMeters) / 3.0,
            //Which works out to ---> 6371008.771415059
       //equalAreaMeanRadiusMeters  = 6371007.1809,
       //eccentricitySquared        = 2*flattening - flattening*flattening,
         eccentricitySquared        = (equatorialRadiusMetersSq -
                                       polarRadiusMetersSq) /
                                       equatorialRadiusMetersSq,
         eccentricityPSquared       = (equatorialRadiusMetersSq -
                                       polarRadiusMetersSq) /
                                       polarRadiusMetersSq,
         eccentricity               = Math.sqrt(eccentricitySquared),
         //The following calculated value was derived by Joel Nelson
         equalAreaMeanRadiusMeters  = equatorialRadiusMeters * Math.sqrt(0.5 +
                                      ((1-eccentricitySquared)/(4*eccentricity))
                                      * Math.log((1+eccentricity) /
                                                 (1-eccentricity)));
            //Which works out to ---> 6371007.180918474
   }
}


/**
 * 
 * $Log: Constants.java,v $
 * Revision 1.1  2007/09/10 12:02:16  g137997
 * Re-packaged several classes.
 *
 * Revision 1.1  2007/03/25 14:36:52  g137997
 * Imported several usefull utilities from another development effort.
 *
 * Revision 1.11  2006/08/16 21:52:23  g137997
 * Removed obsoloete constants.
 *
 * Revision 1.10  2006/08/15 14:41:23  g137997
 * Added unsigned value constants.
 *
 * Revision 1.9  2006/06/28 09:46:51  g596060
 * Added Joel's derived version of the equal area WGS84 value.
 *
 * Revision 1.8  2006/06/14 16:20:12  g596060
 * Added more conversion data.
 *
 * Revision 1.7  2006/06/11 23:32:28  g596060
 * Going to MKS eventually.
 *
 * Revision 1.6  2006/05/11 12:43:27  g596060
 * Better value for gravity from NIST.
 *
 * Revision 1.5  2005/09/08 14:56:50  g596060
 * Use old radius to match RTV map.
 *
 * Revision 1.4  2005/09/07 16:35:46  g596060
 * WGS84 stuff.
 *
 * Revision 1.3  2005/08/24 09:01:10  g596060
 * Moved math constants from GeometricState_IF into this class.
 *
 * Revision 1.2  2005/07/27 17:24:09  g137997
 * Added new WHITESPACE constant.
 *
 * Revision 1.1  2005/07/12 12:09:33  g137997
 * Initial check-in after moving to new Common Utilities project.
 *
 * Revision 1.1  2005/05/24 17:22:36  g596060
 * Mods due to changing package name for OSA utility classes.
 * Also, organized imports.
 *
 * Revision 1.6  2005/02/17 20:42:51  g137997
 * Added new regular expression.
 *
 * Revision 1.5  2004/12/09 19:14:14  g137997
 * Added form feed to REG_EXP_WHITESPACE and REG_EXP_PADDED_COMMA.
 *
 * Revision 1.4  2004/11/08 18:01:43  g137997
 * Moved WORKING_DIR here.
 *
 * Revision 1.3  2004/11/02 15:02:21  g137997
 * Added COLUMN constants.
 *
 * Revision 1.2  2004/10/19 19:54:16  g137997
 * Added new constant: PADDED_COMMA
 *
 * Revision 1.1  2004/10/07 15:49:34  g137997
 * Added (and started making use of) Constant interface.
 *
 * 
 */
/*
 * Created by dnoakes on 12-Nov-2002 22:27:52 using IntelliJ IDEA.
 */
package com.drew.metadata.exif;

import com.drew.lang.Rational;
import com.drew.metadata.Directory;
import com.drew.metadata.MetadataException;
import com.drew.metadata.TagDescriptor;

/**
 *
 */
public class GpsDescriptor extends TagDescriptor
{
    public GpsDescriptor(Directory directory)
    {
        super(directory);
    }

    public String getDescription(int tagType) throws MetadataException
    {
        switch (tagType) {
            case GpsDirectory.TAG_GPS_ALTITUDE:
                return getGpsAltitudeDescription();
            case GpsDirectory.TAG_GPS_ALTITUDE_REF:
                return getGpsAltitudeRefDescription();
            case GpsDirectory.TAG_GPS_STATUS:
                return getGpsStatusDescription();
            case GpsDirectory.TAG_GPS_MEASURE_MODE:
                return getGpsMeasureModeDescription();
            case GpsDirectory.TAG_GPS_SPEED_REF:
                return getGpsSpeedRefDescription();
            case GpsDirectory.TAG_GPS_TRACK_REF:
            case GpsDirectory.TAG_GPS_IMG_DIRECTION_REF:
            case GpsDirectory.TAG_GPS_DEST_BEARING_REF:
                return getGpsDirectionReferenceDescription(tagType);
            case GpsDirectory.TAG_GPS_TRACK:
            case GpsDirectory.TAG_GPS_IMG_DIRECTION:
            case GpsDirectory.TAG_GPS_DEST_BEARING:
                return getGpsDirectionDescription(tagType);
            case GpsDirectory.TAG_GPS_DEST_DISTANCE_REF:
                return getGpsDestinationReferenceDescription();
            case GpsDirectory.TAG_GPS_TIME_STAMP:
                return getGpsTimeStampDescription();
                // three rational numbers -- displayed in HH"MM"SS.ss
            case GpsDirectory.TAG_GPS_LONGITUDE:
                return getGpsLongitudeDescription();
            case GpsDirectory.TAG_GPS_LATITUDE:
                return getGpsLatitudeDescription();
            default:
                return _directory.getString(tagType);
        }
    }

    private String getGpsLatitudeDescription() throws MetadataException
    {
        if (!_directory.containsTag(GpsDirectory.TAG_GPS_LATITUDE)) return null;
        return getHoursMinutesSecondsDescription(GpsDirectory.TAG_GPS_LATITUDE);
    }

    private String getGpsLongitudeDescription() throws MetadataException
    {
        if (!_directory.containsTag(GpsDirectory.TAG_GPS_LONGITUDE)) return null;
        return getHoursMinutesSecondsDescription(GpsDirectory.TAG_GPS_LONGITUDE);
    }

    private String getHoursMinutesSecondsDescription(int tagType) throws MetadataException
    {
        Rational[] components = _directory.getRationalArray(tagType);
        // TODO create an HoursMinutesSecods class ??
        int deg = components[0].intValue();
        float min = components[1].floatValue();
        float sec = components[2].floatValue();
        // carry fractions of minutes into seconds -- thanks Colin Briton
        sec += (min % 1) * 60;
        return String.valueOf(deg) + "\"" + String.valueOf((int)min) + "'" + String.valueOf(sec);
    }

    private String getGpsTimeStampDescription() throws MetadataException
    {
        // time in hour, min, sec
        if (!_directory.containsTag(GpsDirectory.TAG_GPS_TIME_STAMP)) return null;
        int[] timeComponents = _directory.getIntArray(GpsDirectory.TAG_GPS_TIME_STAMP);
        StringBuffer sbuffer = new StringBuffer();
        sbuffer.append(timeComponents[0]);
        sbuffer.append(":");
        sbuffer.append(timeComponents[1]);
        sbuffer.append(":");
        sbuffer.append(timeComponents[2]);
        sbuffer.append(" UTC");
        return sbuffer.toString();
    }

    private String getGpsDestinationReferenceDescription()
    {
        if (!_directory.containsTag(GpsDirectory.TAG_GPS_DEST_DISTANCE_REF)) return null;
        String destRef = _directory.getString(GpsDirectory.TAG_GPS_DEST_DISTANCE_REF).trim();
        if ("K".equalsIgnoreCase(destRef)) {
            return "kilometers";
        } else if ("M".equalsIgnoreCase(destRef)) {
            return "miles";
        } else if ("N".equalsIgnoreCase(destRef)) {
            return "knots";
        } else {
            return "Unknown (" + destRef + ")";
        }
    }

    private String getGpsDirectionDescription(int tagType)
    {
        if (!_directory.containsTag(tagType)) return null;
        String gpsDirection = _directory.getString(tagType).trim();
        return gpsDirection + " degrees";
    }

    private String getGpsDirectionReferenceDescription(int tagType)
    {
        if (!_directory.containsTag(tagType)) return null;
        String gpsDistRef = _directory.getString(tagType).trim();
        if ("T".equalsIgnoreCase(gpsDistRef)) {
            return "True direction";
        } else if ("M".equalsIgnoreCase(gpsDistRef)) {
            return "Magnetic direction";
        } else {
            return "Unknown (" + gpsDistRef + ")";
        }
    }

    private String getGpsSpeedRefDescription()
    {
        if (!_directory.containsTag(GpsDirectory.TAG_GPS_SPEED_REF)) return null;
        String gpsSpeedRef = _directory.getString(GpsDirectory.TAG_GPS_SPEED_REF).trim();
        if ("K".equalsIgnoreCase(gpsSpeedRef)) {
            return "kph";
        } else if ("M".equalsIgnoreCase(gpsSpeedRef)) {
            return "mph";
        } else if ("N".equalsIgnoreCase(gpsSpeedRef)) {
            return "knots";
        } else {
            return "Unknown (" + gpsSpeedRef + ")";
        }
    }

    private String getGpsMeasureModeDescription()
    {
        if (!_directory.containsTag(GpsDirectory.TAG_GPS_MEASURE_MODE)) return null;
        String gpsSpeedMeasureMode = _directory.getString(GpsDirectory.TAG_GPS_MEASURE_MODE).trim();
        if ("2".equalsIgnoreCase(gpsSpeedMeasureMode)) {
            return "2-dimensional measurement";
        } else if ("3".equalsIgnoreCase(gpsSpeedMeasureMode)) {
            return "3-dimensional measurement";
        } else {
            return "Unknown (" + gpsSpeedMeasureMode + ")";
        }
    }

    private String getGpsStatusDescription()
    {
        if (!_directory.containsTag(GpsDirectory.TAG_GPS_STATUS)) return null;
        String gpsStatus = _directory.getString(GpsDirectory.TAG_GPS_STATUS).trim();
        if ("A".equalsIgnoreCase(gpsStatus)) {
            return "Measurement in progess";
        } else if ("V".equalsIgnoreCase(gpsStatus)) {
            return "Measurement Interoperability";
        } else {
            return "Unknown (" + gpsStatus + ")";
        }
    }

    private String getGpsAltitudeRefDescription() throws MetadataException
    {
        if (!_directory.containsTag(GpsDirectory.TAG_GPS_ALTITUDE_REF)) return null;
        int alititudeRef = _directory.getInt(GpsDirectory.TAG_GPS_ALTITUDE_REF);
        if (alititudeRef == 0) {
            return "Sea level";
        } else {
            return "Unknown (" + alititudeRef + ")";
        }
    }

    private String getGpsAltitudeDescription() throws MetadataException
    {
        if (!_directory.containsTag(GpsDirectory.TAG_GPS_ALTITUDE)) return null;
        String alititude = _directory.getRational(GpsDirectory.TAG_GPS_ALTITUDE).toSimpleString(true);
        return alititude + " metres";
    }
}

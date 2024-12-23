/*
 * Created by dnoakes on 26-Nov-2002 10:58:13 using IntelliJ IDEA.
 */
package com.drew.metadata.exif;

import java.util.HashMap;

import com.drew.metadata.Directory;

/**
 *
 */
public class ExifInteropDirectory extends Directory
{
    public static final int TAG_INTEROP_INDEX = 0x0001;
    public static final int TAG_INTEROP_VERSION = 0x0002;
    public static final int TAG_RELATED_IMAGE_FILE_FORMAT = 0x1000;
    public static final int TAG_RELATED_IMAGE_WIDTH = 0x1001;
    public static final int TAG_RELATED_IMAGE_LENGTH = 0x1002;

    protected static final HashMap tagNameMap;

    static
    {
        tagNameMap = new HashMap();
        tagNameMap.put(new Integer(TAG_INTEROP_INDEX), "Interoperability Index");
        tagNameMap.put(new Integer(TAG_INTEROP_VERSION), "Interoperability Version");
        tagNameMap.put(new Integer(TAG_RELATED_IMAGE_FILE_FORMAT), "Related Image File Format");
        tagNameMap.put(new Integer(TAG_RELATED_IMAGE_WIDTH), "Related Image Width");
        tagNameMap.put(new Integer(TAG_RELATED_IMAGE_LENGTH), "Related Image Length");
    }

    public ExifInteropDirectory()
    {
        this.setDescriptor(new ExifInteropDescriptor(this));
    }

    public String getName()
    {
        return "Interoperability";
    }

    protected HashMap getTagNameMap()
    {
        return tagNameMap;
    }
}

/*
 * @(#)JPEGEncoder.java
 *
 * Copyright (c) 1999 Sun Microsystems, Inc. All Rights Reserved.
 *
 * Sun grants you ("Licensee") a non-exclusive, royalty free, license to use,
 * modify and redistribute this software in source and binary code form,
 * provided that i) this copyright notice and license appear on all copies of
 * the software; and ii) Licensee does not utilize the software in a manner
 * which is disparaging to Sun.
 *
 * This software is provided "AS IS," without a warranty of any kind. ALL
 * EXPRESS OR IMPLIED CONDITIONS, REPRESENTATIONS AND WARRANTIES, INCLUDING ANY
 * IMPLIED WARRANTY OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE OR
 * NON-INFRINGEMENT, ARE HEREBY EXCLUDED. SUN AND ITS LICENSORS SHALL NOT BE
 * LIABLE FOR ANY DAMAGES SUFFERED BY LICENSEE AS A RESULT OF USING, MODIFYING
 * OR DISTRIBUTING THE SOFTWARE OR ITS DERIVATIVES. IN NO EVENT WILL SUN OR ITS
 * LICENSORS BE LIABLE FOR ANY LOST REVENUE, PROFIT OR DATA, OR FOR DIRECT,
 * INDIRECT, SPECIAL, CONSEQUENTIAL, INCIDENTAL OR PUNITIVE DAMAGES, HOWEVER
 * CAUSED AND REGARDLESS OF THE THEORY OF LIABILITY, ARISING OUT OF THE USE OF
 * OR INABILITY TO USE SOFTWARE, EVEN IF SUN HAS BEEN ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGES.
 *
 * This software is not designed or intended for use in on-line control of
 * aircraft, air traffic, aircraft navigation or aircraft communications; or in
 * the design, construction, operation or maintenance of any nuclear
 * facility. Licensee represents and warrants that it will not use or
 * redistribute the Software for such purposes.
 */

package com.sun.glf.util;

import java.awt.image.*;
import java.io.*;

import com.sun.image.codec.jpeg.*;

import com.sun.glf.util.*;

/**
 * Provides support for saving files in the JPEG format. This is
 * based on the com.sun.image.codec.jpeg package.
 *
 * @author               Vincent Hardy
 * @version              1.0, 10/12/1998
 */
public class JPEGEncoder implements ImageEncoder {
  /** 
   * Image encoding method
   * @param image the image to be saved into file
   * @param out the stream where the image data should be saved
   */
  public void encode(BufferedImage image, OutputStream out) throws IOException{    
    // JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(out, JPEGCodec.getDefaultJPEGEncodeParam(image));
    JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(out);
    JPEGEncodeParam param = encoder.getDefaultJPEGEncodeParam(image);
    param.setQuality(1, false);
    encoder.encode(image, param);
  }

  /**
   * @return default file extention for this type of image
   */
  public String getFileExtention(){
    return ".jpg";
  }

  /**
   * @return description of the encoder
   */
  public String getDescription(){
    return "JPEG file";
  }
}


package examples;
import de.ueberdosis.mp3info.*;

/*
 * ID 3 version 1.6 and Bitrate reader
 * Milon Krejca &lt;milon@iname.com&gt;, Florian Heer &lt;heer@ueberdosis.de&gt; (c) 2000
 * <p>*****************************************************************<br>
      This program is free software; you can redistribute it and/or modify<br>
      it under the terms of the GNU General Public License as published by<br>
      the Free Software Foundation; either version 2 of the License, or<br>
      (at your option) any later version.

      <p>This program is distributed in the hope that it will be useful,<br>
      but WITHOUT ANY WARRANTY; without even the implied warranty of<br>
      MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the<br>
      GNU General Public License for more details.<br>

      <p>You should have received a copy of the GNU General Public License<br>
      along with this program; if not, write to the Free Software<br>
      Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.<br>
*/

public class id3 extends ID3Reader {
    /** Gives you a String with all relevant information */
    public String getInfo() {
        return "\""+xtag.getTitle()+"\";\""+xtag.getArtist ()
            +"\";\""+xtag.getAlbum ()+"\";\""+xtag.getYear()+"\";\""
            +xtag.getComment ()+"\";\""+xtag.getTrackS ()+"\";\""
            +xtag.getGenreS ()+"\";\""+xtag.getBitrateS()+"\"";
    }
    public String getTitle() {
        return xtag.getTitle ();
    }
    public String getArtist () {
        return xtag.getArtist ();
    }
    public String getAlbum () {
        return xtag.getAlbum ();
    }
    public String getYear () {
        return xtag.getYear ();
    }
    public String getComment () {
        return xtag.getComment ();
    }
    public String getTrack () {
        return xtag.getTrackS ();
    }
    public String getGenre () {
        return xtag.getGenreS ();
    }
    public String getBitRate() {
        return xtag.getBitrateS ();
    }

    /** Constructor of id3, each id3-class is bound to one file */
    public id3 (String filename) throws java.io.IOException {
        super (filename);
    }

    public static void main (String args[]) {
        de.ueberdosis.mp3info.ID3Reader.main (args);
    }

}
/* 
 * $Log: id3.java,v $
 * Revision 1.1  2004/12/14 11:20:13  g137997
 * Initial check-in.
 *
 * Revision 1.9  2001/06/04 11:14:06  mos
 * Nothing more than a wrapper for de.ueberdosis.mp3info.ID3Reader
 * anymore.
 * No checking is done, main () just gives all parameters to ID3Reader.main().
 *
 * Revision 1.8  2001/06/03 05:16:52  mos
 * added basic ID3V2 support (package finds ID3V2 Tags)
 *
 * Revision 1.7  2001/02/13 01:15:57  mos
 * Checking of the whole file now takes the last 128 bytes as a tag into
 * account. Therefore the package produces much less errors.
 *
 */



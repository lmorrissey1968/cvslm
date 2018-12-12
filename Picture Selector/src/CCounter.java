import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;

/**
 * 
 * $Header: /repository/CVSLM/PicSel/src/CCounter.java,v 1.1 2015/11/17 04:50:46 g137997 Exp $
 * 
 * CCounter
 * Created on Nov 16, 2015
 *
 * © Lockheed Martin Corporation, (2015). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

/**
 * TODO BRIEF DESCRIPTION OF WHAT THIS CLASS DOES
 *
 * @author Lawrence Morrissey (g137997)
 * @version $Revision: 1.1 $
 */
public class CCounter 
{
	public static String[] S = {"S","C","H","D"};
	public static String[] D = {"2","3","4","5","6","7","8","9","10","J","Q","K","A"};
	
	public static class Card {
		private String d,s;
		private int v,c;
		
		
		public Card(String d,String s) {
			this.d = d; this.s = s;
			try {
				this.v = Integer.parseInt(d);
				this.c = v<=6 ? 1 : 0;
			} catch (NumberFormatException exc) {
				this.v = d.equals("A") ? 11 : 10;
				this.c = -1;
			}
		}
		
		public String toString() { return String.format("%s%s",d,s); }
	}

	public static List<Card> deck() {
		List<Card> deck = new ArrayList<>(52);
		for (int s = 0; s < S.length; s++)for (int d = 0; d < D.length; d++)deck.add(new Card(D[d],S[s]));
		return deck;
	}
	
	public static List<Card> shoe(List<Card>...decks) {
		List<Card> shoe = new ArrayList<Card>();
		for (List<Card> deck : decks)shoe.addAll(deck);
		return shoe;
	}
	
	public static void main(String[] args) {
		List<Card> shoe = shoe(deck(),deck(),deck(),deck(),deck(),deck());
		Collections.shuffle(shoe,new Random(System.currentTimeMillis()));
		
		int count = 0;
		for (int i = 0; shoe.size()>55; i++) {
			Card card = shoe.remove(0);
			count+=card.c;
			int decks = (shoe.size()/52)+1;
			System.out.printf("%s, %s, %d, %.1f\n",card,card.c,count,count/(float)decks);
		}
	}

}


/**
 * 
 * $Log: CCounter.java,v $
 * Revision 1.1  2015/11/17 04:50:46  g137997
 * *** empty log message ***
 *
 * 
 */
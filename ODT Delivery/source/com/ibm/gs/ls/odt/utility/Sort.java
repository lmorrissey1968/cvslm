package com.ibm.gs.ls.odt.utility;

public class Sort
{
	public static void sort(Sortable a[])
	{
		QuickSort(a, 0, a.length - 1);
	}
	
	static void QuickSort(Sortable a[], int lo0, int hi0)
	{
		int lo = lo0;
		int hi = hi0;
		Sortable mid;
		
		if ( hi0 > lo0){
			mid = a[ ( lo0 + hi0 ) / 2 ];
			while( lo <= hi ){
				while( ( lo < hi0 ) && ( lessthan(a[lo],mid) ) )
					++lo;
				while( ( hi > lo0 ) && ( greaterthan(a[hi],mid) ) )
					--hi;
				if( lo <= hi ){
					swap(a, lo, hi);
					++lo;
					--hi;
				}
			}
			if( lo0 < hi )
				QuickSort( a, lo0, hi );
			if( lo < hi0 )
				QuickSort( a, lo, hi0 );
		}
	}
	
	static private void swap(Sortable a[], int i, int j)
	{
		Sortable T = a[i];
		a[i] = a[j];
		a[j] = T;
	}
	
	static boolean lessthan(Sortable item1,Sortable item2)
	{
		
		return(item1.getComparator().compareTo(item2.getComparator())<0);
	}
	
	static boolean greaterthan(Sortable item1,Sortable item2)
	{
		return(item1.getComparator().compareTo(item2.getComparator())>0);
	}
}

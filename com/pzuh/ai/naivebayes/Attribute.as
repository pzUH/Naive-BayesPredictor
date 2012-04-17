package com.pzuh.ai.naivebayes 
{
	import com.pzuh.Basic;
	public class Attribute
	{
		private var name:String;
		
		private var dataArray:Array = new Array();
		
		public function Attribute(name:String) 
		{
			this.name = name;
		}		
		
		internal function insertData(data:*):void
		{
			dataArray.push(data);
		}
		
		internal function removeSelf():void
		{
			for (var i:int = 0; i < dataArray.length; i++)
			{
				dataArray = null;
				dataArray.splice(i, 1);
			}
			
			dataArray.length = 0;
			dataArray = null;
		}
		
		public function getDataArray():Array
		{
			return dataArray;
		}
		
		internal function getDataByIndex(index:int):*
		{
			return dataArray[index];
		}
		
		internal function getIndexByData(data:*):int
		{
			return dataArray.indexOf(data);
		}
		
		public function getName():String
		{
			return name;
		}
	}
}
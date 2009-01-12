package com.pbking.facebook.delegates.pages
{
	import com.pbking.facebook.FacebookCall;

	public class IsFan extends FacebookCall
	{
		public var page_id:String;
		public var uid:String;
		
		function IsFan(page_id:String=null, uid:String=null)
		{
			super("facebook.pages.isAdmin");
			
			this.page_id = page_id;
			this.uid = uid;
		}
		
		override public function initialize():void
		{
			setRequestArgument("page_id", page_id);

			if(uid)
				fbCall.setRequestArgument("uid", uid);
		}
	}
}
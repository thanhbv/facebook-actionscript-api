package com.pbking.facebook.delegates.marketplace
{
	import com.pbking.facebook.Facebook;
	import com.pbking.facebook.data.marketplace.MarketplaceListing;
	import com.pbking.facebook.delegates.FacebookDelegate;

	public class CreateListing_delegate extends FacebookDelegate
	{
		public var listing:MarketplaceListing;
		
		function CreateListing_delegate(listing:MarketplaceListing, show_on_profile:Boolean=true)
		{
			this.listing = listing;
			
			fbCall.setRequestArgument("listing_id", listing.listing_id.toString());
			fbCall.setRequestArgument("show_on_profile", show_on_profile.toString());
			
			fbCall.post("marketplace.createListing");
		}
		
		override protected function handleResult(result:Object):void
		{
			listing.listing_id = Number(result);
		}
	}
}
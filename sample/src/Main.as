package 
{
	/* sample implementation of Naive-Bayes classifier
	 * 
	 * it will predict whether the player will brake or not in a current situation
	 * based on the previously collected data
	 * 
	 * note: in this sample, data is discrete
	 * in real application, the data is usually a continuous and numeric, 
	 * so discretization is necessary before perform the prediction
	 * */
	
	import flash.display.Sprite;
	import flash.events.Event;
	import com.pzuh.ai.naivebayes.*;	
	
	public class Main extends Sprite 
	{
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			
			var bayes:NaiveBayesPredictor = new NaiveBayesPredictor(50);
			var brake:Attribute = new Attribute("brake");
			var dist:Attribute = new Attribute("dist");
			var speed:Attribute = new Attribute("speed");
			
			bayes.addAttribute(brake);
			bayes.addAttribute(dist);
			bayes.addAttribute(speed);
			
			bayes.updateAttributeData(dist.getName(), "near");
			bayes.updateAttributeData(dist.getName(), "near");
			bayes.updateAttributeData(dist.getName(), "far");
			bayes.updateAttributeData(dist.getName(), "far");
			bayes.updateAttributeData(dist.getName(), "near");
			bayes.updateAttributeData(dist.getName(), "far");
			bayes.updateAttributeData(dist.getName(), "near");
			bayes.updateAttributeData(dist.getName(), "far");
			
			bayes.updateAttributeData(speed.getName(), "slow");
			bayes.updateAttributeData(speed.getName(), "fast");
			bayes.updateAttributeData(speed.getName(), "fast");
			bayes.updateAttributeData(speed.getName(), "fast");
			bayes.updateAttributeData(speed.getName(), "slow");
			bayes.updateAttributeData(speed.getName(), "slow");
			bayes.updateAttributeData(speed.getName(), "fast");
			bayes.updateAttributeData(speed.getName(), "slow");
			
			bayes.updateAttributeData(brake.getName(), "yes");
			bayes.updateAttributeData(brake.getName(), "yes");
			bayes.updateAttributeData(brake.getName(), "no");
			bayes.updateAttributeData(brake.getName(), "yes");
			bayes.updateAttributeData(brake.getName(), "no");
			bayes.updateAttributeData(brake.getName(), "yes");
			bayes.updateAttributeData(brake.getName(), "yes");
			
			var result:String = bayes.predict(brake.getName());
			
			trace(result);
		}		
	}	
}
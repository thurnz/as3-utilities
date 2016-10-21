package  {
	
	public class StringUtil {

		public static function isBlank(s:String):Boolean {
			var re:RegExp=/ /g;
			var sTrim:String=s.replace(re,"");
			return !Boolean(sTrim.length);
		}
		
		public static function verifyEmail(s:String):Boolean{
			// check for "@"
			var b:Boolean=true;
			var n0:int=s.indexOf("@");
			var n1:int=s.lastIndexOf("@");
			b=(n0>0 && s.substr(-1)!="@" && n0==n1 && n0>s.lastIndexOf("-") && n0>s.lastIndexOf("_"));
			if(!b){
				return b;
			}
			// check for "."
			n0=s.indexOf(".");
			b=(n0>0 && s.substr(-1)!=".");
			for(var i:uint=0;i<s.length-1;i++){
				if(s.substr(i,1)=="." && s.substr(i+1,1)=="."){
					b=false;
					break;
				}
			}
			return b;
		}

	}
	
}

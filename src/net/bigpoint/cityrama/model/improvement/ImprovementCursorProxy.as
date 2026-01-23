package net.bigpoint.cityrama.model.improvement
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class ImprovementCursorProxy extends Proxy
   {
      
      public static const NAME:String = "ImprovementCursorProxy";
      
      private var _currentSelectedImprovementCid:Number;
      
      public function ImprovementCursorProxy(param1:String = "ImprovementCursorProxy", param2:Object = null)
      {
         super(param1,param2);
      }
      
      public function get currentSelectedImprovementCid() : Number
      {
         return this._currentSelectedImprovementCid;
      }
      
      public function set currentSelectedImprovementCid(param1:Number) : void
      {
         this._currentSelectedImprovementCid = param1;
         sendNotification(ApplicationNotificationConstants.IMPROVEMENT_AT_CURSOR_CHANGED);
      }
   }
}


package net.bigpoint.cityrama.model.improvement
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class ImprovementCursorProxy extends Proxy
   {
      
      public static const NAME:String = "ImprovementCursorProxy";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && _loc1_))
      {
         NAME = "ImprovementCursorProxy";
      }
      
      private var _currentSelectedImprovementCid:Number;
      
      public function ImprovementCursorProxy(param1:String = "ImprovementCursorProxy", param2:Object = null)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && Boolean(param2)))
         {
            super(param1,param2);
         }
      }
      
      public function get currentSelectedImprovementCid() : Number
      {
         return this._currentSelectedImprovementCid;
      }
      
      public function set currentSelectedImprovementCid(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this._currentSelectedImprovementCid = param1;
            if(_loc3_)
            {
               sendNotification(ApplicationNotificationConstants.IMPROVEMENT_AT_CURSOR_CHANGED);
            }
         }
      }
   }
}


package net.bigpoint.cityrama.model.field
{
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class FieldDeleteProxy extends Proxy
   {
      
      public static const NAME:String = "FieldDeleteProxy";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         NAME = "FieldDeleteProxy";
      }
      
      public function FieldDeleteProxy(param1:String = null, param2:Object = null)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override public function onRegister() : void
      {
      }
      
      override public function onRemove() : void
      {
      }
   }
}


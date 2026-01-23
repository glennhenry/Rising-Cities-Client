package net.bigpoint.cityrama.model.field
{
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class FieldDeleteProxy extends Proxy
   {
      
      public static const NAME:String = "FieldDeleteProxy";
      
      public function FieldDeleteProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
      }
      
      override public function onRegister() : void
      {
      }
      
      override public function onRemove() : void
      {
      }
   }
}

